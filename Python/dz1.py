#пункт1
pr1 = 16
pr2 = 32
pr3 = 4
print(pr1, pr2, pr3)
h1 = int(input("Введите число1>>>"))
h2 = int(input("Введите число2>>>"))
h3 = str(input("Введите слово>>>"))
print(h1, h2, h3)


#пункт2
hour = int(input("Ведите часы>>>"))

minute = int(input("Ведите минуты>>>"))

sec = int(input("Ведите секунды>>>"))

print(f"Полученное время {hour}:{minute}:{sec}")


#пункт3
chislo1 = int(input("Ведите число от 1 до 9 >>>"))
chislo2 = chislo1*10+chislo1
chislo3 = chislo1*100+chislo2
itog = chislo1 + chislo2 + chislo3
print(itog)

#пункт4
ch = int(input("Ведите число >>>"))
maxim = ch % 10
while ch >= 1:
    ch //= 10
    if maxim < ch % 10:
        maxim = ch % 10
print(maxim)

#пункт5
vyr = float(input("Введите выручку фирмы "))
izd = float(input("Введите издержки фирмы "))
rent = vyr / izd
if vyr > izd:
  print(f"Фирма работает с прибылью. Рентабельность выручки составила {rent}")
  workers = int(input("Введите количество сотрудников фирмы "))
elif vyr == izd:
    print("Фирма работает в ноль")
else:
    print("Фирма работает в убыток")
prib_na_sotr = vyr/workers
print(f"прибыль в расчете на одного сторудника сотавила {prib_na_sotr}")


#пункт6
rez1 = int(input("Введите дистанцию в первый день "))
rez2 = int(input("Введите дистанцию в первый день "))
c = 1
while rez2 > rez1:
    rez1 = rez1*1.1
    c = c + 1
print(f"На {c} день спортсмен достиг результата - не менее {rez2} км")
