import Foundation

func solution(_ name:[String], _ yearning:[Int], _ photo:[[String]]) -> [Int] {
    var answer: [Int] = []
    var dict: [String:Int] = [:]
    
    for i in 0..<name.count {
        dict[name[i]] = yearning[i]
    }
    
    for pho in photo {
        var score = 0
        for p in pho {
            if dict[p] == nil {
                continue
            }else{
                score += dict[p]!
            }
        }
        answer.append(score)
    }
    
    return answer
}