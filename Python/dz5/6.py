smm = {}
with open('for_6.txt', 'r') as my_f:

    # list = my_f.readlines().replace('-', '0')
    # print(my_f.read().replace('-', '0'))
    # my_f.seek(0)
    # print(my_f.read())
    # print(list)
    for x in my_f:

        print(x)
        subject, lecture, work, practice = x.replace('-', '0').split()
        smm[subject[:-1]] = int(lecture) + int(work) + int(practice)
    print(smm)






