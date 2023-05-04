import Foundation

func solution(_ n:Int) -> [Int] {
    var k = n*(n+1)/2
    var tri : [[Int]] = Array(repeating: Array(repeating: 0, count: n),count: n)
    var answer : [Int]  = Array(repeating: 0, count: k)
    var start = (0,-1)
    var i = n
    var num = 1
    while i > 0 {
        if i < 1 {
            break
        }
        for j in 0..<i {
            start = (start.0,start.1+1)
            tri[start.1][start.0] = num
            num += 1
        }
        
        if i < 2 {
            break
        }
        for j in 0..<i-1 {
            start = (start.0+1,start.1)
            tri[start.1][start.0] = num
            num += 1
        }
        if i < 3 {
            break
        }
        for j in 0..<i-2 {
            start = (start.0-1,start.1-1)
            tri[start.1][start.0] = num
            num += 1
        }
        
        i-=3
    }
    var l = 0
    for i in 0..<n{
        for j in 0...i{
            answer[l] = tri[i][j]
            l+=1
        }
    }
    return answer
}