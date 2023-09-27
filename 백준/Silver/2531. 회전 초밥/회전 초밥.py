n, d, k, c = map(int, input().split())
# d 가짓수 k 연속수 c 쿠폰번호
belt = []
for i in range(0, n):
    belt.append(int(input()) - 1)
result = -1
count = 0
visit = [0 for _ in range(0, d)]
for i in range(0, k):
    visit[belt[i]] += 1
    if visit[belt[i]] == 1:
        count += 1
visit[c - 1] += 1
if visit[c - 1] == 1:
    count += 1

start = 0
end = k - 1

for i in range(0, n):
    if result < count:
        result = count

    if visit[belt[start % n]] == 1 and belt[start % n] != c - 1:
        count -= 1
    visit[belt[start % n]] -= 1
    start += 1
    end += 1
    if visit[belt[end % n]] == 0:
        count += 1
    visit[belt[end % n]] += 1

print(result)