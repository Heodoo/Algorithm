from copy import deepcopy

def solution(land):
    l = len(land)
    for i in range(1,l):
        for j in range(0,4) :
                land[i][j] += max(land[i-1][:j]+land[i-1][j+1:])
        
    return max(land[l-1])