function Primos()
  local n = 1

  return function()
    while true do
      local num_primo = true

      for i = 2, math.floor(math.sqrt(n)) do -- verificando se é primo ou nao
        if n % i == 0 then
          num_primo = false
          break
        end
      end


      if num_primo then -- se for primo
        local num_atual = n
        n = n + 1
        return num_atual
      end

      n = n + 1
    end
  end
end

for primo in Primos() do --imprimindo os numeros primos 
  print(primo)
end
