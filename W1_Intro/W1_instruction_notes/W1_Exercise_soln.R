## ----setup, include=FALSE------------------------------------------------
knitr::opts_chunk$set(echo = TRUE)

## ----message = FALSE-----------------------------------------------------
# Install the tidyverse
#install.packages("tidyverse")

# Chunk comment. Point out file path and tab to complete
# View object by printing
## ----message = FALSE, warning=FALSE--------------------------------------
# Import the Tidyverse
library(tidyverse)
# Import data
passengers <- read_csv("data/train.csv")
passengers 

## ----message = FALSE-----------------------------------------------------
# Summary titanic using base R syntax
summary(passengers)

## ----message = FALSE-----------------------------------------------------
# Summarize titanic using a pipe
passengers %>%
  summary()

# Pipe between each verb
# parenthesis is important
## ----message = FALSE-----------------------------------------------------
# Summarize titanic after dropping na
passengers %>% 
  drop_na() %>% 
  summary() 

### Wrangle your data ###
# Using logical expressions
# quote "male"
## ----message = FALSE-----------------------------------------------------
# Filter to get all "male" rows
passengers %>% 
  filter(Sex == "male") 

# Case sensitive 
## ----message = FALSE-----------------------------------------------------
# Filter to get all "female" rows
passengers %>% 
  filter(Sex == "female")

## ----message = FALSE-----------------------------------------------------
# Arrange by increasing Fare
passengers %>% 
  arrange(Fare)

## ----message = FALSE-----------------------------------------------------
# Arrange by decreasing Fare
passengers %>% 
  arrange(desc(Fare))

## ----message = FALSE-----------------------------------------------------
# Create new column FamSize (size of family)
passengers %>% 
  mutate(FamSize = Parch + SibSp)

## ----message = FALSE-----------------------------------------------------
# Create new column FamSize (size of family)
# Arrange by decreasing FamSize
passengers %>% 
  mutate(FamSize = Parch + SibSp) %>% 
  arrange(desc(FamSize))

# This is a challenge. Let them try first to come up with their own answer to ifelse()
## ----message = FALSE-----------------------------------------------------
# Turn numerical values of Survived column to "No" & "Yes" 
passengers %>% 
  mutate(Survived = ifelse(Survived == 0, "No", "Yes"))
  
# passengers1 is needed to plot survival as a factor 
## ----message = FALSE-----------------------------------------------------
# Turn numerical values of Survived column to "No" & "Yes" (new dataframe)
passengers1 <- passengers %>% 
  mutate(Survived = ifelse(Survived == 0, "No", "Yes"))
passengers1

### Plotting your data ###

## ----message = FALSE-----------------------------------------------------
# Plot barplot of passenger Sex
ggplot(passengers1, aes(x = Sex)) +
  geom_bar()

## ----message = FALSE-----------------------------------------------------
# Scatter plot of Age vs Fare
ggplot(passengers1, aes(x = Age, y = Fare)) +
  geom_point()

## ----message = FALSE-----------------------------------------------------
cor.test(passengers1$Age, passengers1$Fare)
## ----message = FALSE-----------------------------------------------------
# Scatter plot of Age vs Fare colored by Sex
ggplot(passengers1 %>% drop_na(), aes(x = Age, y = Fare, color = Sex)) +
  geom_point()

## ----message = FALSE-----------------------------------------------------
# Scatter plot of Age vs Fare colored by Sex faceted by Survived
ggplot(passengers1, aes(x = Age, y = Fare, color = Sex)) +
  geom_point() +
  facet_grid(~Survived)

## ----message = FALSE-----------------------------------------------------
# Plot barplot of passenger Sex & fill according to Survival
ggplot(passengers1, aes(x = Sex, fill = Survived)) +
  geom_bar()


### Summary and groupsing data ###

# Point out base R calculations (mean, median, etc.)
## ----message = FALSE-----------------------------------------------------
# Check out mean Fare
passengers %>% 
  summarise(meanFare = mean(Fare))

## ----message = FALSE-----------------------------------------------------
# Check out mean Fare
passengers %>% 
  summarise(medianFare = median(Fare))

## ----message = FALSE-----------------------------------------------------
# Check out mean Fare for women
passengers %>% 
  filter(Sex == "female") %>% 
  summarise(meanFare = mean(Fare))

## ----message = FALSE-----------------------------------------------------
# Check out mean Fare & number of survivors for women
passengers %>% 
  filter(Sex == "female") %>% 
  summarise(meanFare = mean(Fare), numSurv = sum(Survived))

## ----message = FALSE-----------------------------------------------------
# Check out mean Fare & number of survivors grouped by Sex
passengers %>% 
  group_by(Sex) %>% 
  summarise(meanFare = mean(Fare), numSurv = sum(Survived))

# n() is total, used to get at proportion. 
## ----message = FALSE-----------------------------------------------------
# Check out mean Fare & proportion of survivors grouped by Sex
passengers %>% 
  group_by(Sex) %>% 
  summarise(meanFare = mean(Fare), numSurv = sum(Survived)/n())

## ------------------------------------------------------------------------
#write your analysis here



