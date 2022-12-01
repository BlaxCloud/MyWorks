from abc import ABC, abstractmethod #абстрактые методы нужны , если необходимо рабоать с полиморфизмом - одинаковове название методов

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



john = Person()
artur = User()


john.show_name()
artur.show_name()
