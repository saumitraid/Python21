class Animal:
    def eat(self):
        print("Eating..........")

class Dog(Animal):
    def bark(self):
        print("Barking......")

class Puppies(Dog):
    def weap(self):
        print("Weaping.......")
        
    def eat(self):
        print("Drinking Milk..........")

obj=Puppies()
obj.bark()
obj.eat()
obj.weap()