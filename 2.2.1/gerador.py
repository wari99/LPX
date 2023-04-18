def pares():
    numeros = 0
    while True:
        numeros += 2
        yield numeros 
        
for v in pares():
    print(v)
