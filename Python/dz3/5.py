def itog_sum ():
    result = 0
    quitl = False
    while quitl == False:
        number = input('Введите числа и Q для выхода из программы - ').split()

        result2 = 0
        for l in range(len(number)):
            if number[l] == 'q' or number[l] == 'Q':
                quitl = True
                break
            else:
                result2 = result2 + int(number[l])
        result = result + result2
        print(f'Текущая сумма >>> {result}')
    print(f'Итоговая сумма >>> {result}')


itog_sum()