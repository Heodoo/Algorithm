def solution(s):
    answer = 0
    i = 0
    while i < len(s) : 
        cur = i
        a = 1
        b = 0
        
        while a > b and i < len(s)-1:
            if s[cur] == s[i+1] :
                a += 1
            else :
                b += 1
            i+= 1
        i+=1
        answer += 1
    
    return answer