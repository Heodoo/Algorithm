import Foundation

func solution(_ n:Int, _ edge:[[Int]]) -> Int {
    var answer = 0
    var mcnt : [Int] = Array(repeating: 0 , count : n+1)
    var graph : [[Int]] = Array(repeating: [], count: n+1)
    var maxd = 0
    for e in edge {
        graph[e[0]].append(e[1])
        graph[e[1]].append(e[0])
    }
    
    var q : [Int] = [1]
    
    while !q.isEmpty {
        var cur = q.removeFirst()
        
        for e in graph[cur] {
            if mcnt[e] == 0 {
                q.append(e)
                mcnt[e] = mcnt[cur] + 1
                maxd = max(maxd,mcnt[e])
            }
        }
    }
    
    for i in 2...n {
        if mcnt[i] == maxd {
            answer += 1
        }
    }
    
    return answer
}