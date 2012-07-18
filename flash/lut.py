#!/usr/bin/python
# Copyright (c) 2012, 2012 All Rights Reserved, Marek Burza (mkburza@gmail.com)
# This script generates the lut.png which was meant to be used with PixelBender version of the miner

import math
import Image

def guard(s):
    if -8.0 < s and s < 8.0:
        return 1.0
    else:
        return 0.0

def mod(v0, v1):
    return v0 % v1

def shx(v, s):
    return math.floor(mod(math.floor(v) * math.pow(2.0, s), 256.0) * guard(s))

lut = Image.new('RGB', (256, 273))
for x in range(0, 256):
    for y in range(0, 273):
        if y < 256:
            lut.putpixel((x, y), (x & y, x | y, x ^ y))
        else:
            value = int(shx(x, y - 264.0))
            lut.putpixel((x, y), (value, value, value))
lut.save('lut.png')
