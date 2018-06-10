#2-3 Wydrukuj listê wszystkich lat przestêpnych od 1800 roku do teraz. U¿yj pêtli for. Latami przestêpnymi s¹ te, których numeracja:
#       - jest podzielna przez 4 i niepodzielna przez 100, lub
#       - jest podzielna przez 400.

for(i in 1800:2018){
  if( (i%%4==0 & !(i%%100==0)) | (i%%400==0))#spawdzam warunki roku przestêpnego
  {
    print(i)
  }
}