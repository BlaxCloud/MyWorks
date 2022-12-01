class Car:
    model: str
    price: int

    def __init__(self, model, price):
        self.model = model
        self.price = price

class CarFactory:
    model = 'Audi'
    common_price = 4000

    def build(self, count=1):
        cars = []
        for x in range(count):
            cars.append(
                Car(self.model, self.common_price)
            )


class CarStock:
    max_count: int
    cars: list

    def __init__(self, count=0):
        self.max_count = count
        self.cars = [] #надо указать иначе карс определена как аннотакция без начального значние, а значит не определена как объект класса

    def store(self, cars: list):
        #проверять self.max_count (cars)
        self.cars.extend(cars)


class NotEnothMoneyException(Exception):
    def __init__(self, current, needle):
        self.current = current
        self.needle = needle

    def __str__(self): #для вывода строки в опеределенном формате
        return f"Not enough money, current = {self.current}"


class Customer:
    money: int

    def __init__(self, money):
        self.money = money



    def buy(self, car: Car):
        # проверять текущий баланс
        if car.price > self.money:
            raise NotEnothMoneyException(self.money, car.price)

        self.money -= car.price


factory = CarFactory()
stock = CarStock(1)
john = Customer(100)
car_list = factory.build(4)
stock.store(car_list)
john.buy(stock.cars[1])