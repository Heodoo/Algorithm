import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var answer = 0
    var visited : [Bool] = Array(repeating: false, count: n)
    
    func dfs(_ start : Int){
        
        visited[start] = true
        
        for comp in 0..<n {
            if !visited[comp] && computers[start][comp] > 0 {
                dfs(comp)
            }
            
        }
    }
    
    for i in 0..<n {
        if !visited[i]{
            answer += 1
            dfs(i)
        }
    }
    return answer
}