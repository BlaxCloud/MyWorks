class ZeroDivisinException(Exception):
    def __init__(self, chislo1, chislo2):
        self.chislo1 = chislo1
        self.chislo2 = chislo2


    def __str__(self):
        return f"Деление {self.chislo1} на {self.chislo2} невозможно"

class Math:
    delimoe:float
    delitel: float

    def __init__(self, delimoe, delitel):
        self.delitel = delitel
        self.delimoe = delimoe

    @staticmethod
    def Operation(deliomoe, delitel):
        if delitel == 0:
            raise ZeroDivisinException(deliomoe, delitel)
        else:
            return str(deliomoe/delitel)


print(Math.Operation(16, 0))


