Dim pin AS Integer
Dim senha AS Integer

pin = 5555

input "Digite a senha:", senha

if pin <> senha THEN
    PRINT "PIN invalido. Tente novamente"
else
    PRINT "Transacao autorizada!"
end if

sleep


