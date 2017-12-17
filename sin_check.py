#!/usr/bin/env python3
def checker(sin_number):
    return sum(map(lambda x:sum(map(int,str(int(x[0]) * x[1]))),zip(sin_number, [1, 2] * 5))) % 10 == 0

print(checker("046454286"))
