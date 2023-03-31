import Foundation

func solution(_ N:Int, _ number:Int) -> Int {
    var answer = -1
    if N == number {
        return 1
    }
    
    func dfs (_ count: Int, _ now: Int) {
        if count > 8 {
            return 
        }
        if now == number {
            if count < answer || answer == -1 {
                answer = count  
            }
            return
        }
        var n = 0
        for i in 0..<8 {
            if count < answer && answer < count + i + 1{
                break
            }
            n = n*10 + N
            dfs(count + 1 + i, now + n)
            dfs(count + 1 + i, now - n)
            dfs(count + 1 + i, now * n)
            dfs(count + 1 + i, now / n)
        }
    }
    dfs(0,0)
    
    return answer
}