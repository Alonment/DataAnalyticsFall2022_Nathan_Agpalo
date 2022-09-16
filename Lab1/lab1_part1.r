temperature = 84.5
class(temperature)
RPI = "Rensselaer Polytechnic Institute"
class(RPI)
RPI = 3.1415
class(RPI)
isSNOWING = FALSE
class(isSNOWING)
R = 0;
class(R)
num_vec = c(1, 3, 5, 99)
class(num_vec)
num_vec
num_vec[1]
vec_mixed = c(1, 2, "ethan")
class(vec_mixed)
vec_mixed[3]
FB = c(223:226)
class(FB)
animal = c('d', 'c', 'd', 'c', 'c')
animal
id = c(1,2,3,4,5)
temps = c('cold', 'med','hot', 'hot', 'hot', 'cold', 'med')
temps
fact.temps = factor(temps, ordered=TRUE, levels=c('cold', 'med', 'hot'))
fact.temps
summary(fact.temps)
help('data.frame')
days = c('Mon', 'Tue', 'Wed', 'Thur', 'Fri', 'Sat', 'Sun')
temp = c(28, 30.5, 32, 31.2, 29.3, 27.9, 26.4)
snowed = c('T', 'T', 'F', 'F', 'T', 'T', 'F')
RPI_WEATHER_WEEK = data.frame(days, temp, snowed)
RPI_WEATHER_WEEK
head(RPI_WEATHER_WEEK)
str(RPI_WEATHER_WEEK)
summary(RPI_WEATHER_WEEK)
EPI_DATA = read.csv("/Users/naytun/Downloads/EPI_DATA.csv")

summary(EPI_DATA$EPI)
fivenum(EPI_DATA$EPI, na.rm=TRUE)
stem(EPI_DATA$EPI)
hist(EPI_DATA$EPI, seq(30., 95., 1.0), prob=TRUE)
lines(density(EPI_DATA$EPI, na.rm=TRUE, bw=1.))
rug()
plot(ecdf(EPI_DATA), do.points=FALSE, verticals=TRUE)

