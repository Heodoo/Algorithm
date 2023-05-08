import Foundation

func solution(_ n:Int) -> Int {
    var answer = 0
    var board : [Int] = Array(repeating: 0, count: n)
    
    func dfs(_ cnt: Int) {
        if cnt == n {
            answer += 1
            return
        }
        
        for i in 0..<n {
            board[cnt] = i
            if valid(cnt) {
                dfs(cnt+1)
            }
        }
    }
    func valid(_ i: Int)->Bool{
        for j in 0..<i {
            if board[i] == board[j] { return false }
            if abs(i - j) == abs(board[i] - board[j]) { return false }
        }
        return true
    }
    dfs(0)
    return answer
}