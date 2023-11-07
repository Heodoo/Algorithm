answer = 0
def solution(numbers, target):
    n = len(numbers)
    def dfs(idx,cur):
        global answer
        if idx == n :
            if cur == target:
                answer += 1
            return
        dfs(idx+1,cur+numbers[idx])
        dfs(idx+1,cur-numbers[idx])
    dfs(0,0)
    
    return answer

            