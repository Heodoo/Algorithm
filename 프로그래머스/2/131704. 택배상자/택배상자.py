def solution(order):
    answer = 0
    l = len(order)
    sub_belt = []
    i = 1
    while i!= l+1:
        sub_belt.append(i)
        while sub_belt and sub_belt[-1] == order[answer]:
            answer += 1
            sub_belt.pop()
        i+=1
    
    return answer