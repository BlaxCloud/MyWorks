class Worker:
    name = 'Ivan'
    surname = 'Polovinkin'
    position = 'advanced'
    _income = {'wage': 26000, 'bonus': 5000}
class Position(Worker):
    def get_full_name(self):
        name_get = self.name
        surname_get = self.surname
        print(f'Полное имя: {name_get} {surname_get}')
    def get_total_income(self):
        income_get = self._income.get('wage') + self._income.get('bonus')

        print(f'Полный доход: {income_get}')




Pos = Position()
Pos.get_full_name()
Pos.get_total_income()


