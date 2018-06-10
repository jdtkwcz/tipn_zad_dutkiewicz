#2-2 Napisz skrypt, który wyliczy za ile godzin skoñczysz studia. Za³o¿enia:
#   - Studia koñcz¹ siê 30 czerwca
#   - Studia mo¿na skoñczyæ planowo, albo z poœlizgiem (rocznym, dwuletnim…) Utwórz zmienn¹, która pozwoli ³atwo tym manipulowaæ.
#   - Dzisiejsz¹ datê i godzinê mo¿na wpisaæ “na sztywno”
#   - Dla u³atwienia przyjmijmy, ¿e rok zawsze trwa 365 dni a miesi¹c zawsze 30


#Dane wejœciowe
aktualny_rok<-2018
aktualny_miesiac<-3
aktualny_dzien<-20
aktualna_godzina<-18

planowany_rok_ukonczenia<-2021
poslizg<-0            #opóŸniony koniec studiów


#dane które wiemy z treœci zadania
miesiac_graniczny<-6      #mies¹c ukoñczenia roku Czerwiec
liczba_dni_w_roku<-365    #uproszczona liczba dni w ka¿dym roku
liczba_dni_w_miesiacu<-30 #uproszczona liczba dni w ka¿dym miesiacu

#wiedza ogólna
liczba_godzin_w_dobie<-24
liczba_miesiecy_w_roku<-12


ostateczy_rok_zakonnczenia<-planowany_rok_ukonczenia+poslizg #wyznaczenie rzeczywistego roku zakoñczenia

#wyliczenie godzin do koñca bierz¹cego dnia
liczba_godzin_do_konca=liczba_godzin_w_dobie-aktualna_godzina

#wyliczenie liczby pe³nych dni do koñca miesi¹ca. Wyznaczamy do koñca miesi¹ca bo za³o¿yliœmy ¿e rok koñczy sie ostatniego dnia czerwca
liczba_dni_do_konca<-liczba_dni_w_miesiacu-aktualny_dzien-1 #-1 bo godziny


#w warunkach if sprawdzamy czy aktualny miesi¹c znajduje siê przed czerwcem, po czerwcu czy jest to czerwiec
if(aktualny_miesiac<miesiac_graniczny){
  #aktualny miesi¹c znajduje siê przed czerwcem
  #wyliczenie liczby pe³nych miesiêcy do czerwca, wliczaj¹c czerwiec
  liczba_miesiecy_do_konca<-miesiac_graniczny-(aktualny_miesiac+1)
  #wyliczenie liczby pe³nych lat do koñca studiów
  liczba_lat_do_konca<-ostateczy_rok_zakonnczenia-aktualny_rok
} else 
{
  if(aktualny_miesiac>miesiac_graniczny)
  {
    #aktualny miesi¹c znajduje siê za czerwcem
    #wyliczenie liczby pe³nych miesiêcy do najbli¿szego czerwca, wliczaj¹c czerwiec
    liczba_miesiecy_do_konca<-liczba_miesiecy_w_roku-(aktualny_miesiac+1)+miesiac_graniczny
    #wyliczenie liczby pe³nych lat do koñca studiów, uwzglêdniaj¹c ¿e aktualny rok zosta³ ju¿ policzony 
    liczba_lat_do_konca<-ostateczy_rok_zakonnczenia-(aktualny_rok+1)
  }
  else 
  {
    if(aktualny_miesiac==miesiac_graniczny)
    {
      #aktualny miesi¹c to czerwiec
      #mamy czerwiec wiêc 0 miesiêcy do czerwca
      liczba_miesiecy_do_konca<-0
      #wyliczenie liczby pe³nych lat do koñca studiów
      liczba_lat_do_konca<-ostateczy_rok_zakonnczenia-aktualny_rok
    }
  }
}

#liczba_godzin_do_konca
#liczba_dni_do_konca
#liczba_miesiecy_do_konca
#liczba_lat_do_konca

#zliczenie ile dni pozosta³o do koñca studiów
#wynik=
#      liczba_dni_do_konca(aktualnie jestto liczba dzni do koñca miesi¹ca)+
#     +liczba_miesiecy_do_konca*liczba_dni_w_miesiacu+
#     +liczba_lat_do_konca*liczba_dni_w_roku
liczba_dni_do_konca<-liczba_dni_do_konca+liczba_miesiecy_do_konca*liczba_dni_w_miesiacu+liczba_lat_do_konca*liczba_dni_w_roku


#dodanie do liczby godzin do koñca dnia liczbê dni do koñca roku wyra¿on¹ w godzinach
liczba_godzin_do_konca<-liczba_godzin_do_konca+liczba_dni_do_konca*liczba_godzin_w_dobie
#liczba_dni_do_konca
liczba_godzin_do_konca #ostateczy wynik
