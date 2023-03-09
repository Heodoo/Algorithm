import Foundation

func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
    if !words.contains(target) {
        return 0
    }
    
    var answer = 0
    var queue : [String] = [begin] // words index
    var visited : [Bool] = Array(repeating: false, count: words.count)
    
    while !queue.isEmpty {
        
        var cur = queue.popLast()!
        
        if cur == target {
            break
        }
        
        answer += 1
        
        for i in 0..<words.count {
            if visited[i] {
                continue
            }
            
            if wordCompare(cur, words[i]){
                queue.append(words[i])
                visited[i] = true
            }
        }
        
    }
    
    
    return answer
}

func wordCompare(_ a: String, _ b: String) -> Bool{
    var count = 0
    
    for i in 0..<a.count {
        if a.getValue(i) != b.getValue(i) {
            count += 1
        }
        
        if count > 1 {
            return false
        }
    }
    return true
}


extension String {
    
    func getValue(_ index: Int) -> String {
        let getIndex = self.index(self.startIndex, offsetBy: index)
        
        return String(self[getIndex])
    }
}