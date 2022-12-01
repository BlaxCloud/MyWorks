from time import sleep
class TrafficLight:
    __color_red = 'Red'
    __color_yellow = 'Yellow'
    __color_green = 'Green'

    def running(self):

        print('Светофор запущен')

        print("\033[41m {}" .format(TrafficLight.__color_red))
        sleep(7)

        print("\033[43m {}" .format(TrafficLight.__color_yellow))
        sleep(2)

        print("\033[42m {}" .format(TrafficLight.__color_green))
        sleep(10)

        print("\033[0m {}" .format('Цикл работы завершен'))


t = TrafficLight()
t.running()
