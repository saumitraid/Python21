class Animal:
    def eat(self):
        print("Eating..........")

class Dog(Animal):
    def bark(self):
        print("Barking......")

obj=Dog()
obj.eat()
obj.bark()