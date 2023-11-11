import re
from itertools import permutations

def operation(num1, num2, op):
    if op == '+':
        return int(num1) + int(num2)
    if op == '-':
        return int(num1) - int(num2)
    if op == '*':
        return int(num1) * int(num2)

def solution(expression):
    result = []
    s = []
    op_lists = list(permutations(['+','-','*'],3))
    expression = re.split("([^0-9])",expression)
    for op_list in op_lists:
        exp = expression
        for op in op_list:
            s = []
            for e in exp:
                if s and s[-1] == op:
                    s.pop()
                    s[-1] = operation(int(s[-1]),int(e),op)
                else:
                    s.append(e)
            exp = s
        result.append(abs(exp[0]))
    return max(result)