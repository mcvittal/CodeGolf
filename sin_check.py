#!/usr/bin/env python3
def checker(sin_number):
    sin_number = list(str(sin_number))
    for x in range(1, len(sin_number), 2):
        sin_number[x] = sum([int(d) for d in list(str(int(sin_number[x]) * 2)) ])
    return sum( [int(d) for d in sin_number]) % 10 == 0



print(checker(str(input("Enter your SIN (EX xxxxxxxxx) > "))))


