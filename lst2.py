m1=[[1,2,3],[4,5,6],[7,8,9]]
for i in range(0,3):
    for j in range(0,3):
        if i==j:
            print(m1[i][j], end=" ")
        else:
            print("-", end=" ")
    print("")

for i in m1:
    print(i)