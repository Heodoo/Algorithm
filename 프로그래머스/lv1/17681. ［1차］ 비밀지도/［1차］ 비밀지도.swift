func solution(_ n:Int, _ arr1:[Int], _ arr2:[Int]) -> [String] {
    var answer: [String] = []
    var map : [[Bool]] = Array(repeating: Array(repeating: false, count: n),count: n)
    var arr : [Int] = Array(repeating: 0, count: n) 
    for i in 0..<n {
        arr[i] = arr1[i]|arr2[i]
    }
    
    for i in 0..<n {
        var tmp = arr[i]
        var j = 0
        while tmp > 0 {
            if tmp%2 == 1{
                map[i][n-j-1] = true
            }
            j += 1
            tmp /= 2
        }
    }
    for m in map {
        var ans = ""
        for c in m {
            if c {
                ans += "#"
            }else{
                ans += " "
            }
            
        }
        answer.append(ans)
    }
    
    
    return answer
}