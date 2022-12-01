class Stationery:
    title = "title"
    def draw(self):
        print('Запуск отрисовки.')
class Pen(Stationery):
    def draw(self):
        print('Запуск отрисовки ручкой')
class Pencil(Stationery):
    def draw(self):
        print('Запуск отрисовки карандашом')
class Handle(Stationery):
    def draw(self):
        print('Запуск отрисовки маркером')

m_pen = Pen()
m_pencil = Pencil()
m_handle = Handle()
m_pen.draw()
m_pencil.draw()
m_handle.draw()