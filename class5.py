class Encap:
    def __init__(self, name, email, mobile):
        self.name=name        #public
        self._email=email     #protected
        self.__mobile=mobile  #private

obj=Encap('Sayan','sayan@gmail.com', '9087654321')
print(obj.name)
print(obj._email)
print(obj.__mobile)