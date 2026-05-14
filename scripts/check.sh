#!/bin/bash
# CarLife Wireless Box — 代码质量检查脚本
# 用法: bash scripts/check.sh

set -e

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NC='\033[0m'

SRC_DIR="app/src/main/java/com/carlife/wireless"
TEST_DIR="app/src/test/java/com/carlife/wireless"
ISSUES=0

echo "═══════════════════════════════════════"
echo "  🔍 CarLife Wireless Box 代码检查"
echo "═══════════════════════════════════════"
echo ""

# 1. 检查 Build.SERIAL 使用（已废弃）
echo "📋 检查 Build.SERIAL 使用..."
SERIAL_COUNT=$(grep -rn "Build\.SERIAL" "$SRC_DIR" --include="*.kt" \
    | grep -v "getDeviceId\|FINGERPRINT\|@Suppress\|deprecated\|//.*Build\.SERIAL\|\*.*Build\.SERIAL" \
    | grep -v "return Build\.SERIAL\|Build\.SERIAL?.takeIf" \
    | wc -l)
if [ "$SERIAL_COUNT" -gt 0 ]; then
    echo -e "${RED}  ❌ 发现 $SERIAL_COUNT 处直接使用 Build.SERIAL（应使用 getDeviceId()）${NC}"
    grep -rn "Build\.SERIAL" "$SRC_DIR" --include="*.kt" \
        | grep -v "getDeviceId\|FINGERPRINT\|@Suppress\|deprecated\|//.*Build\.SERIAL\|\*.*Build\.SERIAL" \
        | grep -v "return Build\.SERIAL\|Build\.SERIAL?.takeIf"
    ISSUES=$((ISSUES + SERIAL_COUNT))
else
    echo -e "${GREEN}  ✅ 无 Build.SERIAL 直接使用${NC}"
fi
echo ""

# 2. 检查 System.out.println（应使用 LogUtils）
echo "📋 检查 System.out.println..."
SYSOUT_COUNT=$(grep -r "System\.out\.print\|println(" "$SRC_DIR" --include="*.kt" | grep -v "LogUtils\|//\|/\*" | wc -l)
if [ "$SYSOUT_COUNT" -gt 0 ]; then
    echo -e "${YELLOW}  ⚠️ 发现 $SYSOUT_COUNT 处 println（应使用 LogUtils）${NC}"
    ISSUES=$((ISSUES + SYSOUT_COUNT))
else
    echo -e "${GREEN}  ✅ 无 println 使用${NC}"
fi
echo ""

# 3. 检查 e.printStackTrace()（应使用 LogUtils）
echo "📋 检查 e.printStackTrace()..."
STACK_COUNT=$(grep -r "\.printStackTrace()" "$SRC_DIR" --include="*.kt" | wc -l)
if [ "$STACK_COUNT" -gt 0 ]; then
    echo -e "${YELLOW}  ⚠️ 发现 $STACK_COUNT 处 printStackTrace()（应使用 LogUtils.e()）${NC}"
    ISSUES=$((ISSUES + STACK_COUNT))
else
    echo -e "${GREEN}  ✅ 无 printStackTrace() 使用${NC}"
fi
echo ""

# 4. 检查 TODO 注释
echo "📋 检查 TODO 注释..."
TODO_COUNT=$(grep -r "// TODO\|//TODO" "$SRC_DIR" --include="*.kt" | wc -l)
if [ "$TODO_COUNT" -gt 0 ]; then
    echo -e "${YELLOW}  ⚠️ 发现 $TODO_COUNT 个 TODO 注释${NC}"
    grep -rn "// TODO\|//TODO" "$SRC_DIR" --include="*.kt"
else
    echo -e "${GREEN}  ✅ 无 TODO 注释${NC}"
fi
echo ""

# 5. 检查测试覆盖率
echo "📋 检查测试覆盖率..."
SRC_COUNT=$(find "$SRC_DIR" -name "*.kt" | wc -l)
TEST_COUNT=$(find "$TEST_DIR" -name "*Test.kt" | wc -l)
echo "  源文件: $SRC_COUNT"
echo "  测试文件: $TEST_COUNT"
COVERAGE=$((TEST_COUNT * 100 / SRC_COUNT))
if [ "$COVERAGE" -lt 40 ]; then
    echo -e "${RED}  ❌ 测试覆盖率 ${COVERAGE}%（目标 ≥40%）${NC}"
    ISSUES=$((ISSUES + 1))
else
    echo -e "${GREEN}  ✅ 测试覆盖率 ${COVERAGE}%${NC}"
fi

# 列出无测试的源文件
echo ""
echo "  缺少测试的文件:"
for src in $(find "$SRC_DIR" -name "*.kt" -exec basename {} .kt \; | sort); do
    if [ "$src" = "CarLifeApplication" ] || [ "$src" = "BootReceiver" ] || \
       [ "$src" = "WifiStateReceiver" ] || [ "$src" = "NestedLogScrollView" ] || \
       [ "$src" = "VideoPreviewHelper" ]; then
        continue  # 跳过不需要测试的文件
    fi
    TEST_FILE=$(find "$TEST_DIR" -name "${src}Test.kt" 2>/dev/null | head -1)
    if [ -z "$TEST_FILE" ]; then
        echo -e "    ${YELLOW}• ${src}${NC}"
    fi
done
echo ""

# 6. 检查 import 顺序
echo "📋 检查 wildcard import..."
WILDCARD_COUNT=$(grep -r "import .*\.\*" "$SRC_DIR" --include="*.kt" | wc -l)
if [ "$WILDCARD_COUNT" -gt 0 ]; then
    echo -e "${YELLOW}  ⚠️ 发现 $WILDCARD_COUNT 处 wildcard import${NC}"
else
    echo -e "${GREEN}  ✅ 无 wildcard import${NC}"
fi
echo ""

# 7. 检查 Socket 资源泄漏
# 模式：Socket() 后未用 use{}，且未在 catch/finally 中 close()
echo "📋 检查 Socket 资源泄漏..."
SOCKET_LEAK_FILES=$(grep -rl "Socket()" "$SRC_DIR" --include="*.kt" 2>/dev/null || true)
SOCKET_LEAK_COUNT=0
SOCKET_LEAK_DETAILS=""
for f in $SOCKET_LEAK_FILES; do
    # 跳过 import 行和注释
    socket_lines=$(grep -n "val.*= Socket()\|val.*=Socket()" "$f" \
        | grep -v "import\|//\|ServerSocket\|DatagramSocket" \
        | cut -d: -f1)
    for lineno in $socket_lines; do
        # 检查该 Socket 变量是否在 close() 或 use{} 中被清理
        varname=$(sed -n "${lineno}p" "$f" | grep -oP "val \K\w+")
        if [ -z "$varname" ]; then continue; fi
        # 检查同文件中是否有该变量的 close() 调用或 use{} 包裹
        has_close=$(grep -c "${varname}\.close()\|${varname}.*\.close()" "$f" 2>/dev/null || echo 0)
        has_use=$(grep -c "\.use {" "$f" 2>/dev/null || echo 0)
        if [ "$has_close" -eq 0 ] && [ "$has_use" -eq 0 ]; then
            SOCKET_LEAK_COUNT=$((SOCKET_LEAK_COUNT + 1))
            SOCKET_LEAK_DETAILS="${SOCKET_LEAK_DETAILS}  ${f}:${lineno}: $(sed -n "${lineno}p" "$f" | sed 's/^[[:space:]]*//')\n"
        fi
    done
done
if [ "$SOCKET_LEAK_COUNT" -gt 0 ]; then
    echo -e "${RED}  ❌ 发现 $SOCKET_LEAK_COUNT 处 Socket 未关闭${NC}"
    echo -e "$SOCKET_LEAK_DETAILS"
    ISSUES=$((ISSUES + SOCKET_LEAK_COUNT))
else
    echo -e "${GREEN}  ✅ Socket 使用规范${NC}"
fi
echo ""

# 8. 检查空 catch 块
echo "📋 检查空 catch 块..."
EMPTY_CATCH=$(grep -rn "catch.*{$" "$SRC_DIR" --include="*.kt" | while read line; do
    file=$(echo "$line" | cut -d: -f1)
    lineno=$(echo "$line" | cut -d: -f2)
    nextline=$((lineno + 1))
    next_content=$(sed -n "${nextline}p" "$file")
    # 空 catch：下一行是 }
    if echo "$next_content" | grep -q "^[[:space:]]*}"; then
        echo "$line"
    fi
done)
EMPTY_CATCH_COUNT=0
if [ -n "$EMPTY_CATCH" ]; then
    EMPTY_CATCH_COUNT=$(echo "$EMPTY_CATCH" | wc -l)
fi
if [ "$EMPTY_CATCH_COUNT" -gt 0 ]; then
    echo -e "${YELLOW}  ⚠️ 发现 $EMPTY_CATCH_COUNT 处空 catch 块（至少记录日志）${NC}"
    echo "$EMPTY_CATCH" | head -5
    ISSUES=$((ISSUES + EMPTY_CATCH_COUNT))
else
    echo -e "${GREEN}  ✅ 无空 catch 块${NC}"
fi
echo ""

# 9. 检查硬编码 IP 地址（应使用 Constants 或 SettingsManager）
echo "📋 检查硬编码 IP..."
HARDCODED_IP=$(grep -rn '"192\.168\.\|10\.0\.\|172\.16\.' "$SRC_DIR" --include="*.kt" \
    | grep -v "Constants\|SettingsManager\|//\|HOTSPOT_GATEWAY\|USB_TETHERING\|USB_LOCAL\|USB_NETWORK\|test\|Test\|\*\|@" \
    || true)
HARDCODED_IP_COUNT=0
if [ -n "$HARDCODED_IP" ]; then
    HARDCODED_IP_COUNT=$(echo "$HARDCODED_IP" | wc -l)
fi
if [ "$HARDCODED_IP_COUNT" -gt 0 ]; then
    echo -e "${YELLOW}  ⚠️ 发现 $HARDCODED_IP_COUNT 处硬编码 IP（应使用 Constants）${NC}"
    echo "$HARDCODED_IP" | head -5
else
    echo -e "${GREEN}  ✅ 无硬编码 IP${NC}"
fi
echo ""

# 10. 检查 synchronized(this)（应用独立锁对象避免读写竞争）
echo "📋 检查 synchronized(this)..."
SYNC_THIS=$(grep -rn "synchronized(this)" "$SRC_DIR" --include="*.kt" \
    | grep -v "//\|/\*\|\*" || true)
SYNC_THIS_COUNT=0
if [ -n "$SYNC_THIS" ]; then
    SYNC_THIS_COUNT=$(echo "$SYNC_THIS" | wc -l)
fi
if [ "$SYNC_THIS_COUNT" -gt 0 ]; then
    echo -e "${YELLOW}  ⚠️ 发现 $SYNC_THIS_COUNT 处 synchronized(this)（建议用独立锁对象）${NC}"
    echo "$SYNC_THIS"
else
    echo -e "${GREEN}  ✅ 无 synchronized(this)${NC}"
fi
echo ""

# 总结
echo "═══════════════════════════════════════"
if [ "$ISSUES" -eq 0 ]; then
    echo -e "${GREEN}  ✅ 所有检查通过！${NC}"
else
    echo -e "${RED}  ❌ 发现 $ISSUES 个问题需要修复${NC}"
fi
echo "═══════════════════════════════════════"

exit $ISSUES
