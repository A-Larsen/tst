#!/usr/bin/env python3
from math import *

# sample_rate = 10
# frequency = 2
# k = 1

# for i in range(0, 10):
#     t = i * 1 / sample_rate
#     print(f"t = {t}")
#     a = cos(2 * pi * frequency * t)
#     b = cos(2 * pi * (k * sample_rate + frequency) * t)
#     c = cos(2 * pi * (k * sample_rate - frequency) * t)
#     print(a, b, c)

print(cos(2 * pi * 2 * (2/10)))
print(cos(2 * pi * (10 + 2) * (2/10)))
print(cos(2 * pi * (10 - 2) * (2/10)))
