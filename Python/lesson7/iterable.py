class MyIterator:
    def __init__(self,counter: int):
        self.counter = counter
        self.start = 0

    def __iter__(self):
        return self #вернуть иетрируемый объект

    def __next__(self):
        self.start += 1#автомтатически вызвается при каждом выходе из цикла

        if self.start >= self.counter:
            raise StopIteration #необходимо так писать для вывода такого вида остановки
        else:
            return self.start

for x in MyIterator(10):
    print(x)