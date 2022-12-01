
with open('for_3.txt', 'r') as my_f:

    name = []
    low_sal = []
    spis = my_f.read().split('\n')
    for x in spis:
        x = x.split()
        if int(x[1]) < 20000:
            name.append(x[0])



print(f'Оклад у {name} меньше 20000 рублей')




