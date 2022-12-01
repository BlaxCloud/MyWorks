class Person:
    job:str
    def __init__(self,attrs: dict):
        self._attributes = attrs #нижнее подчеркивание для соблюдений правил инкапсуляции


    def __del__(self): #действие при удалении
        print('person removed')


    def __str__(self): #преобразование объекта к строке
        return f"Person: {self._attributes['first_name']} {self._attributes['last_name']}"


    def __repr__(self): #вывод коллекции целоком - возвращаем предстваление от строки селф
        return self.__str__()

    def __getitem__(self, item): #для вытаскивания необходимого объекта из атрибута
        if item != 'age':
            return self._attributes[item]
        else:
            return None

    def __setattr__(self, key, value):#сохранения параметра в атрибуты(ПРИ ВВОДЕ С КЛАВЫ) - переопределение логики установки атрибутов
        if '_attributes' in self.__dict__: #на момент конструктора назначаем атрибуты, они приходят сюда key=attribures value = attr, получаем значени falls
            self._attributes[key] = value
        else:# при первой проверке не будут еще заданы значения
            super().__setattr__(key, value)


john = Person({'first_name': 'John','last_name': 'Doe','age': 30}) #это не словарь и не список, это объект класса персон
artur = Person({'first_name': 'Artur','last_name': 'Doe','age': 40})

#del John #удаление переменной


users = [john, artur]

# print(John.attributes['first_name'])
# print(John)

print(users)
print(john['first_name'])

john.job = "Developer"
print(john['job'])



