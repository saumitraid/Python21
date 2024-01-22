m=[55, 89, 93, 6.90, 80]
m.append(81)
m[0]=94
max=m[0]
for i in range(1,6):
    if max<m[i]:
        max=m[i]
print("The max element is ",max)
m.pop()
# m.insert(1,45)