name = 'John'
print(hash(name))
tup = (1,2,3)
print(hash(tup))

class Testclass:
    first_name: str
    values: list

    def __init__(self, attr):
        self.first_name = attr
        self.values = []

    def __hash__(self):
        return hash(self.first_name)


a = Testclass('John')

print((hash(a)))