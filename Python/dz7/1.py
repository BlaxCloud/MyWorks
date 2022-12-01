from copy import deepcopy


class Matrix:
    def __init__(self, matrix_data):
        self.matrix = deepcopy(matrix_data)

    def __str__(self):
        return str('\n'.join(['\t'.join([str(j) for j in i]) for i in self.matrix]))

    def __add__(self, other):
        while True:
            for i in range(len(self.matrix)):
                for j in range(len(self.matrix[i])):
                    self.matrix[i][j] = self.matrix[i][j] + other.matrix[i][j]
                    return Matrix(self.matrix)
            if len(self.matrix) != len(other.matrix):
                return f'Размеры матриц не совпадают'



my_matrix1 = Matrix([[5, 18, 11], [6, 17, 23], [41, 50, 9]])

my_matrix2 = Matrix([[11, 21, 41], [31, 41, 51], [51, 61, 61]])

print(f'Первая матрица:\n{my_matrix1}\n')
print(f'Вторая матрица:\n{my_matrix2}\n')

matr_sum = my_matrix1 + my_matrix2
print(f'Сумма матриц:\n{matr_sum}')
