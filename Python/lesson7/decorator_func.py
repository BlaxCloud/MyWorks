def print_decotarot(func):
    def wrapper(*args, **kwargs) : #наборы аргументов и ключевых аргументов
        print('start')
        func(*args, **kwargs)
        print('End')

    return wrapper



@print_decotarot #упрощения определения пересенной для конструктора и передачи жтой перемнной значения
def show_message(content):
    print(content)



show_message('Hello')