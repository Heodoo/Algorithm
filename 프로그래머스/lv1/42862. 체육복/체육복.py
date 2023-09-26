def solution(n, lost, reserve):
    answer = 0
    check = [1 for i in range(0,n)]
    
    for i in range(0,len(reserve)) :
        check[reserve[i]-1] += 1
    
    for i in range(0,len(lost)) :
        check[lost[i]-1] -= 1
        
    for i in range(0,n-1) :
        if check[i] == 0 and check[i+1] == 2 :
            check[i] = 1
            check[i+1] = 1
        elif check[i] == 2 and check[i+1] == 0 :
            check[i] = 1
            check[i+1] = 1 
            #[1,0,2,0,1]
    
    for i in range(0,n) :
        if check[i] > 0 :
            answer += 1
            
    return answer