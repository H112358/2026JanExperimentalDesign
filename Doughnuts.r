# Doughnuts data input

Doughnuts<- read.csv("DOUGHNUTS.csv", header=TRUE, stringsAsFactors=FALSE)

    Doughnuts$Fat <- as.numeric(Doughnuts$Fat)
    Doughnuts$Outlet <- as.factor(Doughnuts$Outlet)

# Doughnuts plot
{
hist(Doughnuts$Fat)
qqnorm(Doughnuts$Fat)
qqline(Doughnuts$Fat, col = "blue", lwd = 2)
boxplot(Doughnuts$Fat~Doughnuts$Outlet)
}

# ANOVA Doughnuts

aov.Doughnuts <- aov(Fat~Outlet,data=Doughnuts)
print(TukeyHSD(aov.Doughnuts))
