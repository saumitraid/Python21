# Function without argument and without return
def add():
    a=10
    b=15
    a=a+b
    print("The Addition is",a)

add()

# Function with argument and without return
def mult(a,b):
    a=a*b
    print("The multiplication is",a)
mult(10,5)

# Function with argument and return
def sub(a,b):
    a=a-b
    return a
print("The subtraction is",sub(20,5))

#function without argument and with return
def div():
    a=40
    b=5
    a=a/b
    return a
print("The division is",div())