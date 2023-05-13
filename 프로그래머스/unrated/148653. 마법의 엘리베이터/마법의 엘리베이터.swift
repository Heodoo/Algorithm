import Foundation

func solution(_ storey:Int) -> Int {
    var answer = 100
    var n = storey
    
    func dfs(_ k : Int,_ cnt: Int) {
        var k = k
        if k == 0 {
            if cnt < answer {
                answer = cnt
            }
            return
        }
        
        dfs(k/10,cnt+k%10)
        if k > 5 {
            dfs(k/10+1,cnt+10-k%10)
        }
        
        
    }
    
    dfs(n,0)
    
    return answer
}