class NumberTakeException(Exception):# верная версия с исключением
    def __init__(self, number):
        self.number = number

    def __str__(self):
        return str(f'{self.number} не являеются числом')




NewList = []
while True:
   ch = input('Осуществите ввод>>> ')
   if ch == 'Q':
       print('Exit')

       exit()
   try:
       if not ch.isdigit():
           raise NumberTakeException(ch)
       NewList.append(ch)
       print(NewList)

   except NumberTakeException:
       print(NumberTakeException(ch))





