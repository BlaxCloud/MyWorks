


def chast(delimoe,delitel):
    try:
        return delimoe/delitel
    except ZeroDivisionError:
        return ('Деление на ноль невозможно')


delimoe = float(input('Введите делимое >>> '))
delitel = float(input('Введите делитель >>> '))

print(chast(delimoe,delitel))