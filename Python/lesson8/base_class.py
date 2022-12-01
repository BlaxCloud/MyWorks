class Printable:
    def __str__(self):
        return str(self.__dict__)#вернется словарь всех доступных значений и преобразуется в строку

    def __repr__(self):         #похоже на использование json 
        return self.__str__()
#позволяет создать любой класс без заморочек, реагирующие на принт
class Person(Printable):
    def __init__(self, name):
        self.name = name
        self.age = 10



john = Person('John')
print(john)