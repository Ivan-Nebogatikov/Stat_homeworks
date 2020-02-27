N<-10000
l<-1
a<-3
  center_x<-a * runif(N)
  alpha<-runif(N, min = 0, max = pi / 2)
  res<-mean(center_x < l * cos(alpha))
  print(res)
  print(2 / l / pi)