def my_func(x,y): #первый вариант
    return x**y

x = float(input('x = '))
y = int(input('Введите отрицательную степень >>> '))

print(my_func(x,y))


def my_func(x,y):  #второй вариант
    m = 1
    while y != 0:
        y += 1
        m = m/x
    return m

x = float(input('x = '))
y = int(input('Введите отрицательную степень >>> '))


print(my_func(x,y))
