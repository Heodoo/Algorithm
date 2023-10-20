from collections import deque
from functools import cmp_to_key

def solution(numbers):
    answer = ''
    sortedNumbers = sorted(numbers, key=cmp_to_key(comp))
    for n in sortedNumbers:
        answer += str(n)
    if int(answer) == 0:
        return "0"
    return answer

def comp(x, y):
    a = [int(digit) for digit in str(x)]
    b = [int(digit) for digit in str(y)]
    
    for i in range(0, min(len(a), len(b))):
        if a[i] < b[i]:
            return 1
        elif a[i] > b[i]:
            return -1
    
    # 두 숫자의 자릿수를 비교하여 정렬
    return -1 if a + b > b + a else 1