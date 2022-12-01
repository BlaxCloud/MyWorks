my_file = open(r'data.txt', 'w')
strings = input('Введите текст >>> \n')
while True:
    if strings == '':
        print('Обнаружена пустая строка \n')
        break
    else:
        my_file.writelines(strings)
        strings = input('Введите текст >>> \n')


my_file.close()
my_file = open(r'data.txt', 'r')
content = my_file.readlines()
print(f'Полученная строка: {content}')
my_file.close()






