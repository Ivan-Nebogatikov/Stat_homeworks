cnt<-0
num<-1000
for(ex in seq(1,num)){
  x <- runif(100)
  i<-0
  for (y in x) {
    z <- as.integer(y * 6 + 1)
    i <- i + 1
    if (z == 6){
      cnt<-cnt + i
      break
    }
  } 
}

print(cnt / num)