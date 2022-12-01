class Car:
    def __init__(self, speed, color, name, is_police):
        self.speed = speed
        self.color = color
        self.is_police = is_police
        self.name = name


    def go(self):
        return f'Автомобиль движется'
    def stop(self):
        return f'Автомобиль остановился'
    def direction(self):
        return f"Повернул"
    def show_speed(self):
        return f'Текущая скоросто автомобиля: {self.speed}'
class TownCar(Car):
    def show_speed(self):
        if self.speed > 60:
            return f'Вы превышаете разрешенную скорость для TownCar 60'
        else:
            return f'Текущая скорость автомобиля: {self.speed}'

class PoliceCar(Car):
    def Police(self):
        if self.is_police == True:
            return f'Полицейский автомобиль'

class WorkCar(Car):
    def show_speed(self):
        if self.speed > 60:
            return f'Вы превышаете разрешенную скорость для WorkCar 40'
        else:
            return f'Текущая скорость автомобиля: {self.speed}'

class SportCar(Car):
    def __init__(self, speed, color, name, is_police):
        super().__init__(speed, color, name, is_police)



Lamborgini = SportCar(150, 'Красн', 'Mersede', False)
GAZ = TownCar(25, 'Зел', 'GAZ', False)
Vaz = WorkCar(50, 'Бел', 'Vaz', True)
BMW = PoliceCar(90, 'Голуб',  'BMW', True)

print(f'Автомобиль {Lamborgini.name} {Lamborgini.direction()} со скоростью {Lamborgini.speed}')

print(f'Отслеживается {Vaz.name} {Vaz.color}ого цвета')

print(f'Патрульный автомобиль {BMW.name} {BMW.color}ого цвета ведет преследование {Lamborgini.color}ого {Lamborgini.name},  двигающийся со скоростью {Lamborgini.speed}')
print(f'Перекрывает движение патрульный автомобиль {Vaz.name} для дальнейшего преследования')
print(Lamborgini.show_speed())
print(BMW.show_speed())







