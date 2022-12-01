from abc import ABC, abstractmethod #абстрактые методы нужны , если необходимо рабоать с полиморфизмом - одинаковове название методов
#абстрактный класс - контракт, который реализуют классы наследники указанием содеримого внутри функций
class AbstractUser(ABC):
    @abstractmethod #декоратор, как пометка, которая вызывается как пометка
    def show_name(self):
        pass
class Person(AbstractUser):
    def show_name(self):
        print(f'Its a person')



class User(AbstractUser):
    def show_name(self):
        print(f'Its a User')

class CompositeUser(AbstractUser): # композиция нужна, чтоб вместо одного класса, обращаться ко всем дочерним
    def __init__(self, children: list):
        self.children = children

    def show_name(self):
        for item in self.children:  #для каждого из дочерних классов вызовем метод show_name
            item.show_name()

a = Person()
b = User()

#вместо, одного дейсвтия выбрать одно - наилучший маршрут, в котором идет рассчет нескольких параметро или необходимо выбрать каким образом получать уведомления
composer = CompositeUser([a,b])
composer.show_name()