import math

def solution(number, limit, power):
    s = [0 for _ in range(0,number+1)]
    k = int(math.sqrt(number))
    for i in range(1,number+1) :
            j = i
            while j < number+1 :
                s[j] +=1
                j+=i
    answer = 0
    for i in range(1,number+1) :
        if s[i] > limit :
            answer += power
        else :
            answer += s[i]
    return answer