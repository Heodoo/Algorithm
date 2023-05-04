import Foundation

func solution(_ park:[String], _ routes:[String]) -> [Int] {
    
    let dydx = ["N":(0,-1),"S":(0,1),"W":(-1,0),"E":(1,0)]
    var start = (0,0)
    var park2:[[String]] = []
    for i in 0..<park.count {
        let p = park[i].map{String($0)}
        park2.append(p)
        for j in 0..<park[0].count {
            if park2[i][j] == "S" {
                start = (j,i) //x,y
                break
            }
        }
    }
    
    for route in routes {
        let r = route.components(separatedBy: " ")
        let n = Int(r[1])!
        var tmp = start
        var mv = (dydx[r[0]]!.0,dydx[r[0]]!.1)
        var flag = true
        for _ in 0..<n{
            tmp = (tmp.0+mv.0,tmp.1+mv.1)
            if tmp.0 < 0 || tmp.0 > park2[0].count - 1 || tmp.1 < 0 || tmp.1 > park2.count - 1 {
                flag = false
                break
            }
            if park2[tmp.1][tmp.0] == "X" {
                flag = false
                break
            }
            
        }
        if flag {
            start = tmp 
        }
    }
    return [start.1,start.0]
}