#!/usr/bin/env python3
# 生成 CarLife Wireless Box 应用图标

from PIL import Image, ImageDraw, ImageFont
import os

def create_icon(size, bg_color, fg_color, text):
    """创建一个简单的图标"""
    img = Image.new('RGBA', (size, size), bg_color)
    draw = ImageDraw.Draw(img)
    
    # 绘制圆角矩形背景
    margin = size // 8
    draw.rounded_rectangle(
        [margin, margin, size - margin, size - margin],
        radius=size // 8,
        fill=fg_color
    )
    
    # 添加文字 "CL"
    try:
        # 尝试使用系统字体
        font_size = size // 2
        font = ImageFont.truetype("arial.ttf", font_size)
    except:
        # 使用默认字体
        font = ImageFont.load_default()
    
    # 计算文字位置（居中）
    bbox = draw.textbbox((0, 0), text, font=font)
    text_width = bbox[2] - bbox[0]
    text_height = bbox[3] - bbox[1]
    x = (size - text_width) // 2
    y = (size - text_height) // 2
    
    draw.text((x, y), text, fill=bg_color, font=font)
    
    return img

def main():
    # 图标尺寸
    sizes = {
        'mdpi': 48,
        'hdpi': 72,
        'xhdpi': 96,
        'xxhdpi': 144,
        'xxxhdpi': 192
    }
    
    # 颜色
    bg_color = (255, 255, 255, 255)  # White
    fg_color = (33, 150, 243, 255)   # Primary Blue (#2196F3)
    
    # 输出目录
    base_dir = r"D:\Android\projects\app\src\main\res"
    
    for density, size in sizes.items():
        # 创建图标
        icon = create_icon(size, bg_color, fg_color, "CL")
        
        # 保存文件
        output_path = os.path.join(base_dir, f"mipmap-{density}", "ic_launcher.png")
        os.makedirs(os.path.dirname(output_path), exist_ok=True)
        icon.save(output_path, "PNG")
        print(f"Created: {output_path}")
        
        # 创建圆形图标
        round_icon = icon.copy()
        # 这里可以添加圆形遮罩，暂时先用相同的
        round_path = os.path.join(base_dir, f"mipmap-{density}", "ic_launcher_round.png")
        round_icon.save(round_path, "PNG")
        print(f"Created: {round_path}")

if __name__ == "__main__":
    main()
