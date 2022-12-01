def my_func(var1,var2,var3):
  spisok = [var1,var2,var3]
  spisok_new = []
  max1 = max(spisok)
  spisok_new.append(max1)
  max2 = max(spisok)
  spisok_new.append(max2)
  return (max1+max2)



print(my_func(4,3,4))