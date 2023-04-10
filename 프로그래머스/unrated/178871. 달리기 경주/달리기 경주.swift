import Foundation

func solution(_ players:[String], _ callings:[String]) -> [String] {
    //var players : [String] = players
    var dict : [String:Int] = [:]
    var i = 0
    for player in players {
        dict[player] = i
        i+=1
    }
    
    var answer:[String] = players
    for call in callings {
        var cur = dict[call]! // 키가 call 일때 딕셔너리의 벨류값 
        var l = answer[cur-1] // 추월전 앞에사람 이름 
        dict[l]! += 1
        dict[call]! -= 1
        var tmp = answer[cur-1]
        answer[cur-1] = answer[cur]
        answer[cur] = tmp
    }
    
    
    return answer
}