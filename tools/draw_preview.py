from pathlib import Path
from PIL import Image, ImageDraw, ImageFont

scale = 3
image = Image.new("RGB", (512 * scale, 512 * scale), "#253039")
draw = ImageDraw.Draw(image)
font = ImageFont.truetype("C:/Windows/Fonts/arialbd.ttf", 54 * scale)
draw.text((256 * scale, 256 * scale), "1 log = 3 grass", font=font,
          fill="#f7e9d3", anchor="mm")
image.resize((512, 512), Image.Resampling.LANCZOS).save(
    Path(__file__).resolve().parents[1] / "preview.jpg", "JPEG", quality=92, optimize=True)
