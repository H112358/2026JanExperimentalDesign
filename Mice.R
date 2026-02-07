
cat("Null hypothesis (H0): The mean number of tota lung parasites are equal between all mouse strains\n")
cat("Alternative hypothesis (H1): At least one mouse strain significantly differs in mean number of lung parasites\n\n") 

# Mice data input

Mice<- read.csv("Ascaris_mouse-1.csv", header=TRUE, stringsAsFactors=FALSE)

Mice$Lung.Total <- as.numeric(Mice$Lung.Total)
Mice$Strain <- as.factor(Mice$Strain)

##########################
#Printing to txt from here on 
##########################
sink("Mice_summary_output.txt")
# Summary statistics

cat("Overall summary statistics:\n") 
print(summary(Mice$Lung.Total)) 

# Mice plot
{
  hist(Mice$Lung.Total)
  qqnorm(Mice$Lung.Total)
  qqline(Mice$Lung.Total, col = "blue", lwd = 2)
  boxplot(Mice$Lung.Total~Mice$Strain)
}

# ANOVA Mice

aov.Mice <- aov(Lung.Total~Strain,data=Mice)
cat("Summary ANOVA Mice")
print(summary(aov.Mice))
cat("Summary TukeyHSD Mice")
print(TukeyHSD(aov.Mice))

sink()
##########################
#Stop printing to txt from here on 
##########################

