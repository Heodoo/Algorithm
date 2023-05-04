import Foundation

func solution(_ targets:[[Int]]) -> Int {
    var answer = 0
    var targets:[[Int]] = targets
    targets = targets.sorted{
        // if $0[0] == $1[0] {
        //     return $0[1] > $1[1]    
        // }
        return $0[1] < $1[1]
    }
    
    var start: Int = 0
    for target in targets {
        if start <= target[0]{
            answer += 1
            start = target[1]
        }
    }
    
    
    return answer
}