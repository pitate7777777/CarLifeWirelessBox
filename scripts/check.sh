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

# 总结
echo "═══════════════════════════════════════"
if [ "$ISSUES" -eq 0 ]; then
    echo -e "${GREEN}  ✅ 所有检查通过！${NC}"
else
    echo -e "${RED}  ❌ 发现 $ISSUES 个问题需要修复${NC}"
fi
echo "═══════════════════════════════════════"

exit $ISSUES
