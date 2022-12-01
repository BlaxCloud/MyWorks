class Salary:
    amount: int
    vat: int #параметры
    multiply: int

    def __init__(self, amount: int, vat: int = 0, multiply: int = 1): #контсруктор, которые принимает параметры на инициализацию объекта
        self.amount = amount
        self.vat = vat
        self.multiply = multiply

    # def __lt__(self, other): #lowerthen
    #     return self.amount < other.amount
    def __lt__(self, other): #lowerthen
        if isinstance(other, int) or isinstance(other, float):#для сравниея с другим типом
            return self.amount < other
        else:
            return self.amount < other.amount

    # def __gt__(self, other):
    #     return self.amount > other.amount
    def __gt__(self, other):
        if isinstance(other, int) or isinstance(other, float):#для сравниея с другим типом
            return self.amount > other
        else:
            return self.amount > other.amount

    def __eq__(self, other: 'Salary'):
        return self.amount == other.amount and self.vat == other.vat and self.multiply == other.multiply
junior = Salary(200)
middle = Salary(500)
senior = Salary(1000)


print(junior < middle)
print(middle > junior)
print(junior < 400)
