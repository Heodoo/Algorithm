import Foundation

func solution(_ tickets:[[String]]) -> [String] {
    var answer: [[String]] = []
    var sortedTickets = tickets.sorted(by: {$0[1] < $1[1]})
    var check: [Bool] = Array(repeating: false, count: tickets.count)
    
    func dfs(_ start: [String]){
        if start.count > tickets.count {
            if start.count == tickets.count + 1 {
                answer.append(start)
            }
            return
        }
        
        
        for i in 0..<tickets.count {
            if !check[i] && start.last == sortedTickets[i][0] {
                check[i] = true
                dfs(start + [sortedTickets[i][1]])
                check[i] = false
            }
        }
        
        
    }
    
    dfs(["ICN"])
    return answer[0]
}