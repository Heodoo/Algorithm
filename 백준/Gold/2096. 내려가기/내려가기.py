n = int(input())
l = list(map(int,input().split()))
max_dp = l
min_dp = l
answer1 = 0
answer2 = 0
for _ in range(1,n):
    cur = list(map(int,input().split()))
    max_dp = [cur[0]+max(max_dp[0],max_dp[1]),cur[1]+max(max_dp),cur[2]+max(max_dp[1],max_dp[2])]
    min_dp = [cur[0]+min(min_dp[0],min_dp[1]),cur[1]+min(min_dp),cur[2]+min(min_dp[1],min_dp[2])]

    
answer1 = max(max_dp)
answer2 = min(min_dp)

print(answer1,answer2)