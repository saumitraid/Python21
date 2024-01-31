class Employee:
    empCount=0
    def __init__(self, name, salary):
        self.name=name
        self.salary=salary
        Employee.empCount+=1
    
    def displayEmp(self):
        print("The id of employee is",self.empCount)
        print("The name of employee is %s and salary is %d"%(self.name,self.salary))

obj1=Employee('Rohit', 4500)
obj1.displayEmp()

obj2=Employee('Rahul', 5000)
obj2.displayEmp()

obj3=Employee('Sanjoy', 6000)
obj3.displayEmp()