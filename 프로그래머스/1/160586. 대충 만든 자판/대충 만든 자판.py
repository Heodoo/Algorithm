def solution(keymap, targets):
    answer = []
    keys = dict()
    for k in keymap :
        i = 1
        for key in k :
            if key in keys:
                if keys[key] > i :
                    keys[key] = i
            else:
                keys[key] = i
                    
            i+=1
    
    for target in targets:
        count = 0
        for c in target:
            if not c in keys:
                count = -1
                break
            count += keys[c]
        answer.append(count)
    
    return answer