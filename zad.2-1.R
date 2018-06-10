#2-1.1 Utwórz 4 wektory reprezentuj¹ce 4 kwarta³y w roku

kwartal_1<- c("Styczeñ", "Luty" , "Marzec") 
kwartal_2<- c("Kwiecieñ", "Maj" , "Czerwiec")
kwartal_3<- c("Lipiec", "Sierpieñ" , "Wrzesieñ")
kwartal_4<- c("Pa¿dziernik", "Listopad" , "Grudzieñ")


#2-1.2 Utwórz wektor rok sk³adaj¹cy siê z nazw 12 miesiêcy u¿ywaj¹c wektorów z pkt.1

rok<-c(kwartal_1,kwartal_2,kwartal_3,kwartal_4) 
rok


#2-1.3 Poka¿ pierwsze dwa miesi¹ce roku

rok[1:2] 


#2-1.4 Poka¿ ostatnie piêæ miesiêcy roku

dlugosc<-length(rok) 

rok [(dlugosc-4):dlugosc]   


#2-1.5 Poka¿ miesi¹ce nieparzyste

for(miesiac in seq(1,dlugosc,2)){
  print(rok[miesiac])
}


#2-1.6 Dla ka¿dego miesi¹ca policz, ile jego nazwa ma liter (funkcja nchar())

rok_liczba_liter <- c()
for(miesiac in rok){
  #print(miesiac)                                         
  #print(nchar(miesiac))                                
  print(paste(miesiac,"-",nchar(miesiac)))                
               
  rok_liczba_liter<- c(rok_liczba_liter,(nchar(miesiac))) 
}


#2-1.7Policz ile wynosi œrednia i odchylenie standardowe iloœci liter dla wszystkich miesiêcy w roku. Ile wynosi œrednia i 
#odchylenie standardowe dla miesiêcy zimowych (grudzieñ, styczeñ, luty, marzec)?

mean(rok_liczba_liter) 
sd(rok_liczba_liter)


rok_liczba_liter_zimowe<- c(
  nchar("Grudzieñ"),
  nchar("Styczeñ"),
  nchar("Luty"),
  nchar("Marzec"))

mean(rok_liczba_liter_zimowe) 
sd(rok_liczba_liter_zimowe)


#2-1.8 * Poka¿ wszystkie miesi¹ce, których nazwy koñcz¹ siê na “ec”. PodpowiedŸ - u¿yj funkcji endsWith() i subset().

#rozwi¹zanie przy uzyciu pêtli

for(miesiac in rok){
  if (endsWith(miesiac,"ec"))
    print(miesiac)
}


#rozwi¹zanie przy uzyciu funkcji endsWith() i subset()

print(subset(rok, endsWith(rok,"ec")))