class Road:
    _lenght: int
    _width: int
    weight: int
    hight: float

    def __init__(self, lenght, widht):
        self.lenght = lenght
        self.width = widht

    def work(self):
        self.weight = 30
        self.hight = 0.025
        func = self.lenght * self.width * self.weight * self.hight
        print(f'Необходимо {func} кг асфальта')

New_road = Road(3000,8)
New_road.work()