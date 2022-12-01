nabor = input('Введите числа, разделенные пробелами >>> ')
chisla = nabor.split()
smm = sum(map(int,chisla))
with open('for_5.txt', 'w') as my_f:
    my_f.writelines(f'Nabor chisel: {nabor}; summa chisel {smm}')