class Data:
    def __init__(self, day_month_year):
        self.day_month_year = str(day_month_year)

    @classmethod
    def chisla(cls, day_month_year):
        chisl_data = []

        for i in day_month_year.split('.'):
            if i != '.':
                chisl_data.append(i)
        return f'дата: {int(chisl_data[0])}, месяц: {int(chisl_data[1])}, год: {int(chisl_data[2])}'

    def __str__(self):
        return Data.chisla(self.day_month_year)

    @staticmethod
    def valid(day, month, year):
        if 1 <= day <= 31:
            if 1 <= month <= 12:
                if 0 <= year <= 2022:
                    return f'Формат даты верен'
                else:
                    f'Неверен формат года'
            else:
                f'Неверен формат месяц'
        else:
            f'Неверен формат дня'


print(Data.chisla('22.02.2022'))
today = Data('01.11.2001')
print(today)
print(Data.valid(11, 11, 2022))
print(today.valid(11, 11, 2022))
