import Foundation

func solution(_ picks:[Int], _ minerals:[String]) -> Int {
    var result = 0
    
    let hp =  [[1,1,1],[5,1,1],[25,5,1]]
    var minerals = minerals
    var picks2 = picks
    var mines: [[String]] = []
    var cost : [Int] = []
    let l = picks2.reduce(0, {
        $0 + 5*$1
    })
    
    if l < minerals.count {
        minerals = Array(minerals[0..<l])
    }
    
    var index = -1
    
    var cnt = 0
    for mineral in minerals {
        if cnt % 5 == 0 {
            index += 1
            mines.append([])
            cost.append(0)
        }
        mines[index].append(mineral)
        switch mineral {
        case "diamond":
            cost[index] += 25
        case "iron":
            cost[index] += 5
        case "stone":
            cost[index] += 1
        default :
            break
        }
        
        cnt += 1
    }
    
    var mineAndCost = zip(mines, cost).map({
        return ($0,$1)
    }).sorted(by: {
        return $0.1 > $1.1
    })
    
    var cur = 0
    for (mine,_) in mineAndCost {
        while cur < 3  && picks2[cur] < 1{
            cur += 1
        }
        if cur > 2 {
            break
        }
        for m in mine {
            if m == "diamond"{
                result += hp[cur][0]
            }
            else if m == "iron"{
                result += hp[cur][1]
            }
            else{
                result += hp[cur][2]
            }
            
        }
        picks2[cur] -= 1
    }
    return result
}