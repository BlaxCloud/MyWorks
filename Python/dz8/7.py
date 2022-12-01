class ComplexNumber:
    def __init__(self, re, im, *args):
        self.re = re
        self.im = im
        self.z = 'a + b * i'


    def __mul__(self, other):
        print(f'Произведение z1 и z2 равно')
        return f'z = {self.re * other.re - (self.im * other.im)} + {self.im * other.re} * i'

    def __add__(self, other):
        print(f'Сумма z1 и z2 равна')
        return f'z = {self.re + other.re} + {self.im + other.im} * i'

    def __str__(self):
        return f'z = {self.re} + {self.im} * i'


z_1 = ComplexNumber(4, 6)
z_2 = ComplexNumber(5, 7)
print(z_1)
print(z_1 + z_2)
print(z_1 * z_2)