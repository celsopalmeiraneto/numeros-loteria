function main
set date brit
set century on

nUniverso = 60
bSair     = .F.
Do While .T.
   sPalavra = Space(30)
   Do While len(AllTrim(sPalavra))=0
      @03,10 Say "Digite a palavra: " Get sPalavra
      Read
      If Lastkey() = 27
         Sair()
      EndIf   
   enddo
   
      
   
   sPalavra = Upper(Alltrim(sPalavra))
   nSoma = 0
   
   For i:=1 to Len(sPalavra)
      nSoma += Asc(Substr(sPalavra,i,1))
   next
   
   nSoma = nSoma%nUniverso
   Alert(""+Str(nSoma))
EndDo

Quit

Function Sair
Quit
 
