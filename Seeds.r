# Seeds data input

Seeds<- read.csv("SEEDS.csv", header=TRUE, stringsAsFactors=FALSE)

    Seeds$logseeds <- as.numeric(Seeds$logseeds)
    Seeds$site <- as.factor(Seeds$site)

# Seeds plot
{
hist(Seeds$logseeds)
qqnorm(Seeds$logseeds)
qqline(Seeds$logseeds, col = "blue", lwd = 2)
boxplot(Seeds$logseeds~Seeds$site)
}

# ANOVA Seeds

aov.Seeds <- aov(logseeds~site,data=Seeds)
print(TukeyHSD(aov.Seeds))
