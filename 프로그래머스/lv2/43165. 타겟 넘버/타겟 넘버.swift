import Foundation

func solution(_ numbers:[Int], _ target:Int) -> Int {
    var answer = 0
    
    func dfs(_ start : Int, _ index : Int) {
        if index == numbers.count {
            if start == target {
                answer += 1
            }
            return
        }
        dfs(start + numbers[index],index+1)
        dfs(start - numbers[index],index+1)
    }
    dfs(0,0)
    
    
    return answer
}