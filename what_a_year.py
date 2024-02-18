# Importing Image and ImageFont, ImageDraw module from PIL package  
from PIL import Image, ImageFont, ImageDraw
import os
from datetime import datetime as dt

def get_daily_suffix(d):
    return {1:'st',2:'nd',3:'rd'}.get(d%20, 'th')

def custom_strftime(format, t):
    return t.strftime(format).replace('{S}', str(t.day) + get_daily_suffix(t.day))

# creating a image object  
image = Image.open(r'./image.png')  
  
draw = ImageDraw.Draw(image)  

# specified font size 
font = ImageFont.truetype(rf'{os.getcwd()}/fonts/arial_bd.ttf', 19) 
  
# drawing text size 
draw.text((205, 143), text=custom_strftime('%B {S}', dt.now()), font = font, fill="#090A0F", align ="left")  
  
image.save("./current_year.png") 