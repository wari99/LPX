a = {
    'aaa',
    {
        'xxx',
        'yyy',
    },
    'bbb'
}

function arvore(a)
    local index = 0
    local pilha = {a} -- pilha p armazenar elementos da árvore

    return function()
        while true do
            index = index + 1
            local elemento = pilha[index]

            if not elemento then --verificar se esta vazio/nulo
                break
            end

            if type(elemento) == "table" then
                
                -- inicio, fim, passo
                for i = #elemento, 1, -1 do --percorrendo de tras pra frente
                    table.insert(pilha, index + 1, elemento[i])
                end
            else
                return elemento
            end
        end
    end
end

for f in arvore(a) do
    print(f)
end
