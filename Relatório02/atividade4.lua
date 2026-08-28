print ("Digite o primeiro numero: ")
local n1 = tonumber(io.read())
print ("Digite o segundo numero: ")
local n2 = tonumber(io.read())
print ("Digite a operação (media, maior ou diferenca)")
local operacao = io.read()

function calcularMedia(n1, n2)
    local media = (n1 + n2)/ 2
    print("Resultado: " .. media)
end

function encontrarMaior(n1, n2)
    if n1 > n2 then
        print("Resultado: " .. n1)
    elseif n2 > n1 then
        print("Resultado: " .. n2)
    else
        print("OS dois são iguais")    
    end    
end

function calcularDiferencaAbsoluta(n1, n2)
    local diferenca = 0
    if n1 > n2 then
        diferenca = n1 - n2
    else
        diferenca = n2 - n1
    end
    print("Resultado: " .. diferenca)
end    

function analisarNumeros(n1, n2, operacao)   
    if operacao == "media" then
        calcularMedia(n1, n2)
    elseif  operacao =="maior" then  
        encontrarMaior(n1, n2)
    elseif operacao == "diferenca" then
        calcularDiferencaAbsoluta(n1, n2)
    else
        print ("Opção inválida!")    
    end
end    

analisarNumeros(n1, n2, operacao)
