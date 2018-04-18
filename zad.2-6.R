narysuj_galaz<-function(jak_daleko_od_pnia, poziom, igla ="#"){
  galaz<-""
  if(poziom>1){
    for(i in 2:(poziom))            {galaz<-paste(galaz," ")}}
  for(i in 1:(jak_daleko_od_pnia)){galaz<-paste(galaz," ")}
  galaz<-paste(galaz,igla)
  print(galaz)
}

pol_choinki()