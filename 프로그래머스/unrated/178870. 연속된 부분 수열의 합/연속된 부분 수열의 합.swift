import Foundation

func solution(_ sequence:[Int], _ k:Int) -> [Int] {
    var record = 0
    var sum = 0
    var result: [[Int]] = []
    var i = 0
    while i <= sequence.count {
        // if record > i {
        //     sum += sequence[i]
        //     i += 1
        // }
        
        if sum == k {
            result.append([record,i-1])
            sum -= sequence[record]
            record += 1
        }else if sum > k {
            sum -= sequence[record]
            record += 1
        }else{
            if i == sequence.count {
                break
            }
            sum += sequence[i]
            i += 1
        }
    }
    var answer: [Int] = []
    var m = 1000001
    for r  in result {
        var cur = r[1] - r[0]
        if cur < m {
            m = cur
            answer = r
        }
    }
    
    return answer
}