from collections import deque

def solution(people, limit):
    answer = 0
    l = deque(sorted(people))
    while l :
        a = 0
        b = len(l) - 1
        if limit - l[a] - l[b] < 0 or len(l)==1 :
            l.pop()
        else :
            l.popleft()
            l.pop()
        answer += 1
    return answer