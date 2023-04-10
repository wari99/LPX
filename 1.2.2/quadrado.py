class Quadrado:
    def __init__(self):
        self.max = 40
        self.direcoes = ["dir", "esq", "cima", "baixo"]
        self.contador = 0

    def __iter__(self):
        return self

    def __next__(self):
        if self.contador >= self.max:
            self.contador = 0
        pos = self.direcoes[self.contador // 10] # vai de 0 a 3 para pos de self.direcoes
        
        self.contador += 1
        return pos

for dir in Quadrado():
    print(dir)
