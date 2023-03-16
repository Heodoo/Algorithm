import Foundation

func solution(_ n:Int, _ results:[[Int]]) -> Int {
    var answer = 0
    var graph : [[Int]] = Array(repeating: Array(repeating: 0, count: n+1), count: n+1)
    
    for result in results {
        graph[result[0]][result[1]] = 1
        graph[result[1]][result[0]] = -1
    }
    
    for k in 1...n {
        for i in 1...n {
            for j in 1...n {
                if graph[i][j] == 0 {
                    if graph[i][k] == 1 && graph[k][j] == 1{
                        graph[i][j] = 1
                    }else if graph[i][k] == -1 && graph[k][j] == -1{
                        graph[i][j] = -1
                    }
                }
                
            }
        }
    }
    
    for i in 1...n{
        var cnt = 0
        for j in 1...n{
            if graph[i][j] == 0 {
                cnt += 1
            }
        }
        if cnt == 1 {
            answer += 1
        }
    }
    return answer
}