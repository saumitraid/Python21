# WAPP to find the heighest number amnong three numbers
n1=int(input("Enter 1st number:-"))
n2=int(input("Enter 2nd number:-"))
n3=int(input("Enter 3rd number:-"))
if n1>n2 and n1>n3:
    print("Max value is",n1)
elif n2>n1 and n2>n3:
    print("Max value is",n2)
else:
    print("Max value is",n3)