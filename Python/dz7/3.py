class Cell:
    def __init__(self, cell):
        self.cell = cell
        self.zvezda = '*'

    def __str__(self):
        return f'Число ячеек: {self.cell}'

    def __sub__(self, other):
        if self.cell - other.cell > 0:
            return Cell(self.cell - other.cell)
        else:
            return f'Количество ячеек не может быть отрицательным'

    def __mul__(self, other):
        return Cell(self.cell * other.cell)

    def __truediv__(self, other):
        return Cell(self.cell // other.cell)

    def __add__(self, other):
        return Cell(self.cell + other.cell)

    def make_order(self, count):
        c = self.cell
        while c > 0:
            for nbr in range(1, count+1):
                print(self.zvezda, end ='')
                c -= 1
                if c <= 0:
                    break
            print('\n', end = '')


Cell1 = Cell(14)
Cell2 = Cell(27)
Cell3 = Cell(7)
Cell4 = Cell(3)

print(Cell1 + Cell2)
print(Cell1 - Cell2)
print(Cell3 * Cell4)
print(Cell3 / Cell4)

print(f'Первое разбиение')
Cell1.make_order(4)
print(f'Второе разбиение')
Cell2.make_order(7)
