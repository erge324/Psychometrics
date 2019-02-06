# Psychometrics Week One
# Graphs of simple models of GRE scores
# 2 February 2010

# Model 1
 # GRE = 0.

ls()
rm()


 GRE1 <- rnorm(200, 0, 0)

 # Note: rnorm generates random data (N, Mu, Sigma) where
 # N = sample size, Mu = population mean, Sigma = population
 # standard deviation.

 x.axis <- c(0, 300)
 hist(GRE1, xlim=x.axis, breaks=c(-1, 1))

 # Note, this is such a bizzare data set that R needs a little
 # guidance in producing a useful histogram. xlim sets the limits
 # of the x axis. breaks sets the breaks between bins.


# Model 2
 # GRE = 150.

 GRE2 <- rnorm(200, 150, 0)
 hist(GRE2, xlim=x.axis, breaks=c(149, 151))


# Model 3
 # GRE = 150 + e
 # e ~N(0,1)

 GRE3 <- rnorm(200, 150, 1)
 hist(GRE3, xlim=x.axis)



# Model 4
 # GRE = 150 + e
 # e ~N(0,8.5)

 GRE4 <- rnorm(200, 150, 8.5)
 hist(GRE4, xlim=x.axis)

 # Retest Correlation
 GRE4b <- rnorm(200, 150, 8.5)
 GRE4.cor <- round(cor(GRE4, GRE4b), digits=3)
 plot(GRE4, GRE4b, main='Correlation between GRE tests',
  sub=paste('r(GRE4, GRE4b) = ', GRE4.cor), pch=16)
 
 #generic plot function, function differently when giving different objects

 # Note: The first line simulates the second GRE test.
 # The second line computes the correlation and rounds it
 # to 3 digits.
 # The third line draws the scatter plot and puts the 
 # correlation in the subtitle.
 # The pch parameter sets the print character to a solid dot.


# Note: To simulate normally distributed data in PASW/SPSS
# Use the rvnormal() function in a compute statement.
# To simulate normally distributed data in Excel, use the
# rand() function to generate uniform probabilities and then
# use norminv() to convert the probabilities to raw values
# based on the mean and standard deviation that you enter.


# Model 5
 # GRE5 ~N(150,8.5)
 # GRE5b ~(150 + (.9 * (GRE5 - 150)) + e
 # e ~N(0, 4)
 # Note: GRE5b is normally distributed with a constant SD of 4
 #  conditional on the value of GRE5.  For each value of GRE5,
 #  there is a separte normal distribution of GRE5b with its own
 #  mean value.

 GRE5 <- rnorm(200,150,8.5)
 GRE5b <- 150 + (.9 * (GRE5 - 150)) + rnorm(200,0,4)
 GRE5.cor <- round(cor(GRE5, GRE5b), digits=3)
 plot(GRE5, GRE5b, main='Correlation between GRE tests',
  sub=paste('r(GRE5, GRE5b) = ', GRE5.cor), pch=16)

 #to display and partition many plots in one window
 #using par()
 #set parameters for graphs, mfcol (by column), mfrow (by row)

 ?rnorm
 help(rnorm)

