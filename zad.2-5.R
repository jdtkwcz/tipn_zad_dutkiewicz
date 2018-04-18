#2-5 Napisz funkcjê obliczaj¹c¹ n-ty wyraz ci¹gu Fibonacciego.

#podejœcie rekurencyjne
fibonacci <- function(n){
  if(n==1 | n==2)return(1)
  else 
  {
    return(fibonacci(n-1)+fibonacci(n-2))
  }
}

#testowanie dla kolejnych n od 1 do 20 
for(i in 1:20){
  print(fibonacci(i))
}


#podejœcie z zapisywaniem kolejnych elementów do ci¹gu
fibonacci2 <- function(n){
  ciag<-c(1,1)
  for(i in 2:n){
    kolejny_element<-ciag[i-1]+ciag[i-2]
    ciag<-c(ciag,kolejny_element)
  }
  return(ciag[n])
}

#testowanie dla kolejnych n od 1 do 20 
for(i in 1:20){
  print(fibonacci2(i))
}