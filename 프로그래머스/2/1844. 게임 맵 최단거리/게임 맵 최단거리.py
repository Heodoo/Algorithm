from collections import deque

def solution(maps):
    n = len(maps[0])
    m = len(maps)
    dx = [1,0,-1,0]
    dy = [0,1,0,-1]
    answer = 0
    visited = [[False for _ in range(n)] for _ in range(m)]
    q = deque([(0,0,1)])
    visited[0][0] = True
    while q :
        cur = q.popleft()
        if cur[0] == n-1 and cur[1] == m-1:
            answer = cur[2]
            break
        
        for i in range(4):
            nx = cur[0] + dx[i]
            ny = cur[1] + dy[i]
            
            if nx < 0 or nx > n-1 or ny < 0 or ny > m-1:
                continue
            if visited[ny][nx]:
                continue
            if maps[ny][nx] > 0:
                q.append((nx,ny,cur[2]+1))
                visited[ny][nx] = True
                
                
    if answer == 0 :
        return -1
    return answer