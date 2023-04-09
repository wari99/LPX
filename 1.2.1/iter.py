# Crie um iterador em Python que recebe uma string e retorna todos os caracteres da string, um por um.

class Sequencia:
    def __init__ (self, string): 
        self.max = len(string)
        self.string = string
    def __iter__ (self):
        self.cur = -1
        return self
    def __next__ (self):
        if self.cur > (self.max - 2):
            raise StopIteration
        v = self.cur
        self.cur += 1
        return self.string[self.cur]
        
for v in Sequencia("Ola Mundo"):
    print(v)
