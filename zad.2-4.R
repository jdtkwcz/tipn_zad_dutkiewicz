#2-4 Zrób jeszcze raz zadanie 2-3, tym razem u¿ywaj¹c pêtli while zamiast for.

aktualny_rok<-2018
przeskakujacy_rok<-1800 
#przeskakujacy_rok

while(przeskakujacy_rok<aktualny_rok){
  if( (przeskakujacy_rok%%4==0 & !(przeskakujacy_rok%%100==0)) | (przeskakujacy_rok%%400==0))#spawdzam warunki roku przestêpnego
  {
    print(przeskakujacy_rok)
  }
  przeskakujacy_rok<-przeskakujacy_rok+1
}
