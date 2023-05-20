import Foundation

func solution(_ wallpaper:[String]) -> [Int] {
    var lux = 52
    var luy = 52
    var rdx = -1
    var rdy = -1
    
    var arr : [[String]] = []
    for paper in wallpaper {
        arr.append(paper.map{
            String($0)
        })
    }
    
    for i in 0..<arr.count {
        for j in 0..<arr[0].count{
            if arr[i][j] == "#"{
                lux = min(i,lux)
                luy = min(j,luy)
                rdx = max(i+1,rdx)
                rdy = max(j+1,rdy)
            }
            
        }
    }
    
    
    
    return [lux,luy,rdx,rdy]
}