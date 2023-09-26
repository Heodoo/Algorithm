def solution(survey, choices):
    answer = ''
    n = len(survey)
    result = {"R":0,"T":0,"C":0,"F":0,"J":0,"M":0,"A":0,"N":0}
    score = [0,3,2,1,0,1,2,3]
    
    for i in range(0,n) :
        s = survey[i]
        c = choices[i]
        if c < 4 :
            result[s[0]] += score[c]
        else :
            result[s[1]] += score[c]
    
    if result["R"] >= result["T"] :
        answer += "R"
    else :
        answer += "T"
        
    if result["C"] >= result["F"] :
        answer += "C"
    else :
        answer += "F"
    
    if result["J"] >= result["M"] :
        answer += "J"
    else :
        answer += "M"
    
    if result["A"] >= result["N"] :
        answer += "A"
    else :
        answer += "N"
    
    return answer