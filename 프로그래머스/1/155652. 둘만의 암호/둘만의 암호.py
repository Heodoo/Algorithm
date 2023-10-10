def solution(s, skip, index):
    answer = ''
    lst = [chr(x) for x in range(97, 123)]
    record = {}
    
    for i in range(0,len(s)) :
        if s[i] in record.keys() :
            answer += record[s[i]]
        else :
            cur = (ord(s[i]) - 97)%26
            for j in range(0,index) :
                while 1 :
                    cur += 1
                    if lst[cur%26] in skip :
                        continue
                    else :
                        break
            answer += lst[cur%26]
            record[s[i]] = lst[cur%26]
                    
    
    return answer