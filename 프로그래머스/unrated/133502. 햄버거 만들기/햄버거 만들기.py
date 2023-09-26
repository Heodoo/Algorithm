def solution(ingredient):
    answer = 0
    st = []
    ham = [1,2,3,1]
    record = []
    l = len(ingredient)
    if l < 3 :
        return 0
    
    for i in range(0,l) :
        x = ingredient[i]
        st.append(x)
        if x == 1 and i > 2:
            stLen = len(st)
            arr = st[stLen-4:stLen]
            if arr == ham :
                answer += 1 
                del st[stLen-4:stLen]
            
            
    
    return answer