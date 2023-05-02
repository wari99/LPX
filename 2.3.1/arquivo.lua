--F: funcao  f: arquivo

function F()
    f = io.open("teste.txt", "r") -- r: modo leitura
    letra = f:read(1)
    while letra do
        coroutine.yield(letra)
        letra= f:read(1)
    end
    f:close()
end

for c in coroutine.wrap(F) do
    print(c)
end
