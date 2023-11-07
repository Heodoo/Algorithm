def solution(n, m, section):
    answer = 1
    start = section[0]
    end = n+1
    for s in section:
        if s - start > m-1 :
            answer += 1
            start = s
    
    
    
    return answer