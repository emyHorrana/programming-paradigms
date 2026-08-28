print ("Digite o tamanho da tabela:")
local n = tonumber(io.read())

local elementos = {}

for i = 1, n do
    print ("Digite o ".. i .."º elemento:")
    local elemento = tonumber(io.read())
    table.insert(elementos, elemento)
end

print ("Digite o numero buscado: ")
local buscado = tonumber(io.read())
local ocorrencias = 0
function contarOcorrencias(elementos, buscado)
    for i = 1, n do
        if buscado == elementos[i] then
            ocorrencias = ocorrencias + 1
        end
    end
    return ocorrencias
end
  
print("O numero buscado aparece ".. contarOcorrencias(elementos, buscado).. " vezes na tabela")




