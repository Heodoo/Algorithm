from collections import deque
visited = [False]
def solution(n, computers):
    global visited
    visited *= n
    answer = 0
    
    
    def dfs(idx):
        global visited
        visited[idx] = True
        for cmp in range(n):
            if not visited[cmp] and computers[idx][cmp] > 0:
                dfs(cmp)
    
    for i in range(n):
        if not visited[i]:
            answer += 1
            dfs(i)
    return answer