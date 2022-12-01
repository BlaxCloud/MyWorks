my_f = open("for_2.txt", "r")

line_numb = 0
words = 0
for line in my_f:
    length = len(line.split())

    line_numb += 1
    # content = my_f.readline()
    # print(content.count(''))
    print(f'В линии {line_numb} находится {length} слов')
print(f'Количество строк {line_numb}')



my_f.close()