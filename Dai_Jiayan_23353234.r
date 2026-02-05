# Doughnuts data input

Doughnuts<- read.csv("DOUGHNUTS.csv", header=TRUE, stringsAsFactors=FALSE)

    Doughnuts$Fat <- as.numeric(Doughnuts$Fat)
    Doughnuts$Outlet <- as.factor(Doughnuts$Outlet)

# Doughnuts plot
hist(Doughnuts$Fat)
    qqnorm(Doughnuts)
    qqline(Doughnuts$Fat, col = "blue", lwd = 2)