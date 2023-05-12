import Foundation

func solution(_ today:String, _ terms:[String], _ privacies:[String]) -> [Int] {
    var answer: [Int] = []
    var dict: [String:Int] = [:]
    
    let today = today.split(separator: ".").map{Int($0)}
    
    for term in terms {
        let term = term.split(separator: " ")
        dict[String(term[0])] = Int(term[1])
    }
    var i = 0
    for privacy in privacies {
        let privacy = privacy.split(separator: " ")
        var day = privacy[0].split(separator: ".").map{Int($0)}
        day[1]! += dict[String(privacy[1])]!
        day[2]! -= 1
        
        if day[2]! == 0 {
            day[1]! -= 1
            day[2]! = 28
        }
        
        if day[1]! == 0{
            day[0]! -= 1
            day[1]! = 12
        }
        
        while day[1]! > 12 {
            day[0]! += 1
            day[1]! -= 12
        }
        i+=1
        if day[0]! > today[0]! {
            continue
        }else if day[0]! == today[0]!{
            if day[1]! > today[1]! {
                continue
            }else if day[1]! == today[1]!{
                    if day[2]! >= today[2]! {
                        continue
                    }
            }
        }
        answer.append(i)
    }
    
    
    return answer
}
