import Foundation

func solution(_ land:[[Int]]) -> Int{
    var answer = 0
    var dp = land
    
    for i in 1..<land.count{
        dp[i][0] += max(dp[i-1][1],max(dp[i-1][2],dp[i-1][3]))
        dp[i][1] += max(dp[i-1][0],max(dp[i-1][2],dp[i-1][3]))
        dp[i][2] += max(dp[i-1][0],max(dp[i-1][1],dp[i-1][3]))
        dp[i][3] += max(dp[i-1][0],max(dp[i-1][1],dp[i-1][2]))
    }
        
    
    
    
    return dp[land.count-1].max()!
}