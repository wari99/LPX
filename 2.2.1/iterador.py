class Pares:
    def __init__(self):
        self.cur = 0
    def __iter__ (self):
        return self
    def __next__ (self):
        self.cur += 2
        proximo = self.cur
        return self.cur

for v in Pares():
    print(v)
