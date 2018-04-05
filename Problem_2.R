
#a
xmin <- c(23.0, 20.5, 28.2, 20.3, 22.4, 17.2, 18.2)
xmax <- c(25.0, 22.8, 31.2, 27.3, 28.4, 20.2, 24.1)
dayNames <- c('Mon', 'Tue', 'Wed', 'Thu', 'Fri','Sat','Sun')

#b
xmax-xmin
#temperature amplitudes as follows: 2.0, 2.3, 3.0, 7.0, 6.0, 3.0, 5.9

#c
mean(xmin) #average min temp is 21.4
mean(xmax) #average max temp is 25.57143

#d
xmin[xmin < mean(xmin)] #20.5 20.3 17.2 18.2

#e
## Not relevant
xmin[xmin>mean(xmin)] #23.0 28.2 22.4

## Correct
xmin[xmax > mean(xmax)]

#f
xmin <- dayNames
xmax <- dayNames

#g
temperatures <- data.frame(
  df.xmin=xmin,
  df.xmax=xmax)

(9/5)*xmax+32

#h
xminFarenheit <- (9/5)*xmin+32
#
xmaxFarenheit <- (9/5)*xmax+32
#
#i
temperaturesFarenheit <- data.frame(
  df.farenheitmin=xminFarenheit,
  df.farenheitmax=xmaxFarenheit)

#j
#i

## Use shortcut function 1:5
temperaturesFarenheit <- data.frame(
  df.farenheitmin=xminFarenheit[c(1, 2, 3, 4, 5)],
  df.farenheitmax=xmaxFarenheit[c(1, 2, 3, 4, 5)]
)
#ii
temperaturesFarenheit <- data.frame(
  df.farenheitmin=xminFarenheit[-c(6, 7)],
  df.farenheitmax=xmaxFarenheit[-c(6, 7)])

## Easier way to the do above:

temperatures <- within(temperatures, {
  xminFahrenheit <- xmin * (9/5) + 32
  xmaxFahrenheit <- xmax * (9/5) + 32
})

temperaturesFahrenheit <- temeratures[, c('xminFahrenheit', 'xmaxFahrenheit)]

## Easier to subset the whole data.frame instead of 
## doing this for each vector used in its construction

temperaturesFahrenheit[1:5, ]
temperaturesFahrenheit[-(6:7), ]

