def solution(info, query):
    answer = []
    
    infos = [list(map(str,x.split())) for x in info]
    db = dict()
    for s in info :
        infos = s.split()
        
        for language in [infos[0],"-"]:
            for domain in[infos[1],"-"]:
                for grade in[infos[2],"-"]:
                    for food in [infos[3],"-"]:
                        key ="{} {} {} {}".format(language,domain,grade,food)
                        if key in db:
                            db[key].append(int(infos[4]))
                        else:
                            db[key] = [int(infos[4])]
    
    sorted_db = dict()
    for key,value in db.items():
        sorted_db[key] = sorted(value)
    
    for q in query:
        cnt = 0
        splited = q.split(" and ")
        cmp = splited[0:3] + splited[3].split()
        key = "{} {} {} {}".format(cmp[0],cmp[1],cmp[2],cmp[3])
        score = int(cmp[4])
        if key in db.keys():
            arr = sorted_db[key]
            start = 0
            end = len(arr)
            while start < end :
                mid = (start+end)//2
                if arr[mid] >= score :
                    end = mid
                else:
                    start = mid + 1
            cnt = len(arr) - start
        else:
            cnt = 0
        answer.append(cnt)
        
    return answer