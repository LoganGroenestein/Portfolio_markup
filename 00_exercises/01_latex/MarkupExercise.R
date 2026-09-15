#load package lattice
library(lattice)
library(xtable) # generate the LaTeX code for tables
#fix the random generator seed
set.seed(123)
#create data
data <- rnorm(1000)
#plot histogram
histogram(data, col="cyan")
#plot density 
densityplot(data^12 / data^10, xlab = expression(data^12/data^10), 
            col="dodgerblue")
#plot stripplot
stripplot(data^2, xlab = expression(data^2), col="dodgerblue")
#plot boxplot
bwplot(exp(data), par.settings=list(box.rectangle=list(col="dodgerblue"),
                                    box.umbrella=list(col="dodgerblue"),
                                    plot.symbol=list(col="dodgerblue")))
#matrix with all data used
data.all <- cbind(data = data, 
                  squared1 = data^12 / data^10,
                  squared2 = data^2,
                  exponent = exp(data))

xtable(head(data.all, 9), 
       caption = "The same data, but now in a table. 
       Only the first nine rows are displayed.")
