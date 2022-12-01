new_line = [] #во избежание конфликта с кoдровкой UTF8 русские слова написаны транслитом
with open('for_4.txt', 'r') as my_f:
    lines = my_f.readlines()

    for i in lines:
        i = i.split()
        if i[0] == 'One':
            i[0] = 'Odin'
            new_line.append(i[0] + ' - ' + i[2] + '\n')
        elif i[0] == 'Two':
            i[0] = 'Dva'
            new_line.append(i[0] + ' - ' + i[2] + '\n')
        elif i[0] == 'Three':
            i[0] = 'Tri'
            new_line.append(i[0] + ' - ' + i[2] + '\n')
        elif i[0] == 'Four':
            i[0] = 'Chetyre'
            new_line.append(i[0] + ' - ' + i[2] + '\n')
    print(new_line)
    my_file = open('for_4_1.txt', 'w')
    my_file.writelines(new_line)
    my_file.close()






