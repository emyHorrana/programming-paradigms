Dim peso AS single
Dim quantidade_agua AS single
Dim quantidade_ideal As single


input "Digite seu peso:", peso
input "Digite a quantidade de agua em ml ingerida:", quantidade_agua

quantidade_ideal = peso * 35

if quantidade_agua >= quantidade_ideal THEN
    PRINT "Meta atingida!"
else
    PRINT "Meta nao atingida"
end if
