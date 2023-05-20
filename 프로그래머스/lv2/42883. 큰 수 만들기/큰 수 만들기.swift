import Foundation

func solution(_ number:String, _ k:Int) -> String {
    // k개 안에서 앞에서부터 가장큰수 전까지 지우기, 없으면 다음 인덱스로
    var answer: String = ""
    var numbers: [Int] = number.map{
        Int(String($0))!
    }
    var k = k
    var st: [Int] = []
    for num in numbers {
        while k > 0 && !st.isEmpty && st.last! < num {
            st.removeLast()
            k -= 1
        }
        st.append(num)
    }
    while k > 0 {
        st.removeLast()
        k-=1
    }
    
    for num in st {
        answer += "\(num)"
    }
    return answer
}