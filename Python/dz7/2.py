from abc import ABC, abstractmethod

class ABSClothes(ABC):
    @abstractmethod
    def rasch(self):
        pass

class Clothes(ABSClothes):

    def __init__(self, param1, param2):
        self.param1 = param1
        self.param2 = param2

    @property
    def rasch(self):
        return str(f'Общая площадь ткани  {(self.param1 / 6.5 + 0.5) + (self.param2 * 2 + 0.3)}')


class Coat(Clothes):

    @property
    def rasch(self):
        return self.param1 / 6.5 + 0.5

class suit(Clothes):

    @property
    def rasch(self):
        return self.param2 * 2 + 0.3

clothes_r = Clothes(52, 4)
Suit_r = suit(52, 4)
Coat_r = Coat(52, 4)
print(suit)
print(Coat)
print(Clothes.rasch)
print(f'Площадь ткани на костюм {Suit_r.rasch}')
print(f'Площадь ткани на пальто {Coat_r.rasch}')
print(clothes_r.rasch)


