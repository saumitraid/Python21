class Vehicle:
    def __init__(self, mdm):
        self.model=mdm
        print("This is a constructor")

    def moveForward(self):
        print("%s"%self.model)
        print("Go forward")

    def moveBackward(self):
        print("Go backward")

    def __del__(self):
        print("Destructor")

obj=Vehicle("Ertiga")
obj.moveForward()
obj.moveBackward()


