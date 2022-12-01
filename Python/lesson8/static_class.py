import random



class Operations:
    """
    Description for class
    """
    class_name: str
    class_attr: int  = 100
    @staticmethod #используется, если функция не нуждается в экз класса, и чтоб не обращаться модуль.конструктор.метод
    def lower_string(content: str):#переводит строку в нижний регистр, он не свзяан с классом и экз калассов
        return content.lower()


    @classmethod #дает возможность обращаться к методам класса внутри самого классвого метода
    def upper_string(cls, content):
        cls.lower_string(content)

temp_string = "Hello"
print(Operations.lower_string(temp_string))
print(Operations.__dict__)
print(Operations.__annotations__)
