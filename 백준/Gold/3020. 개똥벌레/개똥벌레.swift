import Foundation

func solution() {
    var m = 200001 // 최소 부수는 개수
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let n = input[0]
    let h = input[1]
    var lower : [Int] = Array(repeating: 0, count: h+1)
    var upper : [Int] = Array(repeating: 0, count: h+1)
    var arr : [Int] = Array(repeating: 0, count: h+1)
    for i in 0..<n {
        if i % 2 == 0{
            lower[(Int(readLine()!)!)] += 1
        }else{
            upper[h+1-(Int(readLine()!)!)] += 1
        }
    }
    
    for i in 1..<h{
        let j = h - i
        lower[j] += lower[j+1]
    }
    for i in 1...h{
        upper[i] += upper[i-1]
        arr[i] += lower[i] + upper[i]
    }
    
    var cnt = 0
    for i in 1...h{
        if m > arr[i] {
            cnt = 1
            m = arr[i]
        }else if m == arr[i] {
            cnt += 1
        }
    }
    
   
    
    print("\(m) \(cnt)")
}

solution()