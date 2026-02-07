
cat("Null hypothesis (H0): The mean number of seeds are equal between all sites.\n")
cat("Alternative hypothesis (H1): At least one site significantly differs in mean number of seeds.\n\n") 

# Seeds data input

Seeds<- read.csv("SEEDS.csv", header=TRUE, stringsAsFactors=FALSE)

    Seeds$logseeds <- as.numeric(Seeds$logseeds)
    Seeds$site <- as.factor(Seeds$site)

##########################
 #Printing to txt from here on 
##########################
    sink("Seeds_summary_output.txt")
# Summary statistics
    
cat("Overall summary statistics:\n") 
print(summary(Seeds$logseeds)) 

# Seeds plot
{
hist(Seeds$logseeds)
qqnorm(Seeds$logseeds)
qqline(Seeds$logseeds, col = "blue", lwd = 2)
boxplot(Seeds$logseeds~Seeds$site)
}

# ANOVA Seeds

aov.Seeds <- aov(logseeds~site,data=Seeds)
cat("Summary ANOVA seeds")
print(summary(aov.Seeds))
cat("Summary TukeyHSD seeds")
print(TukeyHSD(aov.Seeds))
  
  sink()
##########################
#Stop printing to txt from here on 
##########################

