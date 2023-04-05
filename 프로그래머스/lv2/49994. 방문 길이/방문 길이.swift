import Foundation

struct Cord : Hashable {
    var x : Int
    var y : Int
    
    init(_ x : Int,_ y: Int){
        self.x = x
        self.y = y
    }
}

func solution(_ dirs:String) -> Int {
    var answer = 0
    //UDRL
    let dx = [0,0,1,-1]
    let dy = [1,-1,0,0]
    var visited : [Cord:[Cord]] = [:]
    var cur = Cord(0,0)
    var dir : [Int] = dirs.map({
        if $0 == "U" {
            return 0
        }
        else if $0 == "D" {
            return 1
        }
        else if $0 == "R" {
            return 2
        }else{
            return 3
        }
    })
    
    for d in dir {
        let record = cur
        cur = Cord(cur.x+dx[d],cur.y+dy[d])
        if cur.x > 5 || cur.x < -5 || cur.y > 5 || cur.y < -5{
            cur = record
            continue
        }
        
        
        if visited[cur] != nil {
            var flag = false
            for v in visited[cur]!{
                if v == record {
                    flag = true
                    break
                }
            }
            
            if flag{
                continue
            }else{
                visited[cur]!.append(record)
                if visited[record] != nil {
                    visited[record]!.append(cur)
                }else{
                    visited[record] = [cur]
                }
                answer += 1
            }
        }else {
            visited[cur] = [record]
            if visited[record] != nil {
                visited[record]!.append(cur)
            }else{
                visited[record] = [cur]
            }
            answer += 1
        }
        
    }
    
    return answer
}