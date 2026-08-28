print ("Digite o tamanho da tabela:")
local n = tonumber(io.read())

local tabela = {}

for i = 1, n do
    print ("Digite o ".. i .."º elemento:")
    local elemento = tonumber(io.read())
    table.insert(tabela, elemento)
end

print ("Digite o valor limite (K):")
local limite = tonumber(io.read())

local resultado = {}

function filtrarMaiores(tabela, limite) 
    for i = 1, n do
        if tabela[i] > limite then
            table.insert(resultado, tabela[i])
        end
    end
    return resultado
end
  
print("--- Elementos maiores que ".. limite .." ---")
filtrarMaiores(tabela, limite)
for i = 1, #resultado do
    print (resultado[i])
end




