Reproducible Research with R
========================================================
author: Reni Kaul & Deven Gokhale
date: May 29th
autosize: true
font-import: https://fonts.googleapis.com/css?family=PT+Sans
font-family: 'PT Sans', sans-serif;

***
<div class="midcenter"><div style="margin-left:-0px;margin-top:500px;"><img style="margin:0px; background-color:transparent; border:0px; box-shadow:none;" src="figs/logo.png"></img></div></div>



About Myself
========================================================

 -  I am curious about understanding the population biology of pathogens that spread across a rough susceptibility landscape. 
 - I use `R` in my research to:
   + organize data 
   + develop tools based on dynamical systems to analyze time-series data 
   + visualization of results (plots and animations)
 - I have worked with Dengue in the past and am currently working on exploring drivers of mumps re-emergence in the US.  
 - My contact info is deven.gokhale@uga.edu
 

Outline 
========================================================
left: 40%

**At the end of this workshop you should be able to…**
- code using best practices
- create an HTML doc with code and commentary  
- write a function
- create and use scripts
- <span style="color:gray"> calculate summary and inferential statistics of a dataset </span>
- <span style="color:gray"> create a figure from data </span>

  
*** 

**Topics**
  1. Introduction to reproducible research
  2. Review of tidyverse
  
    *Break*
    
  3. Explore data using a R project
  4. Automating data analysis with functions
  5. Using scripts in your workflow 
  6. Wrap Up 


1. What is Reproducibe Research (RR)? 
========================================================

**Johns Hopkins Bloomberg School of Public Health:**

Reproducible Research is the idea that data analyses, and more generally, scientific claims, are published with their data and software code so that others may verify the findings and build upon them.

 ![](figs/repspectrum.JPG)


What is reproducible research? 
========================================================
Three R's: Replication, repeatability, and reproducibility
  
**Replication** concerns the number of data points (observations, study subjects, etc.) and establishes the generality of the observed finding to a study population.
  
**Repeatability** concerns the ability to arrive at the same findings when a study is repeated and establishes the generality of the observed finding to other study populations or systems.

**Reproducibility** concerns the reliability of the logic that leads from data to conclusions -- that is, the *data analysis*. It would seem that reproducibility is an essential ingredient of scientific knowledge. But, as data workflow become more and more complicated they also bring more subjective decision-making by the data analyst, more computations, and more opportunities for error.

Why should research be made reproducible?
========================================================
**Four public virtues and one private one**

- Enables readers to develop a complete and exact understanding of methods
- Enables error detection and correction 
- Facilitates critique
- Enables extension and advancement
- Saves time (private)

How can research be made reproducible?
========================================================  
left: 50%

**Three concepts**

- *Workflow/Dataflow* is made reproducible by file organization and coding practices
- *Literate statistical programming* is incorporated into research by blending computer code and with natural language explanations
- *Science archive* must be used for public virtures to be realized 

Workflow is...
========================================================  

the idea that data analysis may be viewed as a repeatable pattern of computational activities. If these activities are truly repeatable and truly computational, then they may be encoded in an algorithm (programming). This principle of repeatable computation is the key to reproducible research. In reproducible research, a computer program is written to perform an analysis.

 ![workflow](figs/directory_org.png)
**Organization is key**


What should be included in RR? 
========================================================
left: 50%

*What would you need to recreate an experimental project?*

***

*What would you need to recreate a modeling project?*


What should be included in RR? 
========================================================
left: 50%

*What would you need to recreate an experimental project?*
 - Experimental details: experimental design, sampling protocol, etc.
 - Analysis: `R` code
 - What else?
 
***

*What would you need to recreate a modeling project?*
 - Experimental details: model assumptions, number of simulations, etc.
 - Analysis: `R` code
 - What else?
 

What should be included in RR? 
========================================================
left: 50%

*What would you need to recreate an experimental project?*
 - Experimental details: experimental design, sampling protocol, etc.
 - Analysis: `R` code
 - What else?

**Where is the <i>why </i>?**
***

*What would you need to recreate a modeling project?*
 - Experimental details: model assumptions, number of simulations, etc.
 - Analysis: `R` code
 - What else?

 


 Where is the 'Why'? 
========================================================

Within your code your comments and longer commentary should include the *why* instead of the what or how.  

Is this an example of good commenting the **why**?


```r
passengers %>% # start with Titanic passengers data set
  filter(Sex == "male") %>% # pull out male passengers
  ggplot(aes(x= Age, y =Fare)) + # plot age on x axis and fare on y axis
  geom_point() # plot the data as points
```

 Commenting the "Why"? 
========================================================

An example of better comments with commentary: 

> I hypothesize that older men will pay a higher fare because they have had more time to accumulate more wealth. The first step of testing this hypothesis is to determine if there is a possitive correlation between age and fare for male passengers.

```r
# create a plot to see how male passengers' age correlated with the fare they paid. 
passengers %>% 
  filter(Sex == "male") %>% 
  ggplot(aes(x= Age, y =Fare)) + 
  geom_point() 
```


2. Review of tidyverse
========================================================  
left: 50%

- The tidyverse is a set of packages that work in harmony because they share common design. 
- Unique syntax used pipes (`%>%`) to connect data (object) to verbs (functions). 

***
![tidy syntax](figs/tidysyntax.png)


tidyverse package
========================================================  
The tidyverse package is designed to make it easy to install and load core packages from the `tidyverse` in a single command. Last workshop we transformed and visualized data, this time we will also incorporate rmarkdown. 

![tidy verse package](figs/tidyverse.png)



======================================================== 

<h1>Double click "W2_Exercise.Rproj"
 to practice commenting and literate programming
 
Open the `W2_ExerciseG_.Rmd` with your group number in the file name/<h1>

Questions to reflect on...
======================================================== 
1. What did you include in your commentary? in comments? why? 
1. What was challenging about documenting the other group's work? 
2. How does your document compare to other group members? Did you include similar information? 
3. What changes (if any) did you make to the markdown code to format the html output?  

========================================================
 
 <span style="color:gray">  1. Introduction to reproducible research </span>  
<span style="color:gray">  2. Review of tidyverse </span>
 <h1> *Break* </h1>

  * Explore data using a R project
  * Automating data analysis with functions
  * Wrap Up 


3. Creating a R project
========================================================
Now, we are going explore data starting from scratch. Let's start a new project. 

<iframe width="660" height="415" src="https://www.youtube.com/embed/hKoSJGWnFFA" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

Some great reasons to use projects at http://bit.ly/WhyUseProjects

Exploring the Global Mammal Parasite Database
========================================================

It is now your turn to start a R project to explore the Global Mammal Parasite Database (GMPD).

1. Start a new project from a new directory called `GMPD`
2. Move the contents of `W2_Exercise\GMPD_data` into the appropriate location

 ![workflow](figs/directory_org.png)
 
**Organization is key**

What is the Global Mammal Parasite Database? 
========================================================

Take the next few minutes to review:

* Check out the dataset publication at http://bit.ly/RworkshopGMPD under *Supporting Information*
* Read the abstract of the `metadata.pdf` file 
* Read about the file formats on page 14-19
* Open the data files, match the column titles to the metadata explaination  


You've been tasked to explore the data set
========================================================

Your research group is particularly interested in: 

1. Which of the 3 groups (carnivores, primates, or ungulates) are sickest? *(hint: use the main.csv file)*
2. Are parasites transmitted by vectors also likely to have complex life cycles compared to non-vectored parasites? *(hint: use the traits.csv file)*  

Be sure to use comments and commentary to explain your process.


Exploring the Global Mammal Parasite Database
========================================================

You might start by loading the needed packages and data. 


```r
library(tidyverse)
gmp <- read_csv("data/GMPD_main.csv")
```

* use the cheat sheets, `W1_exercise.Rmd` and each other for help! 

Q1. Which group is sicker? 
========================================================

  > I'm using mean prevalence as a measurement of health. The mean prevalence is calculated for all reported parasites, ignoring parasite type. This might be an assumption to explore later. The sample sizes are very different so I will also calculate standard error to use when comparing the mean values.  


```r
gmp %>%
  drop_na(Prevalence) %>%
  group_by(Group) %>%
  summarise(MeanPrev = mean(Prevalence), SdErrPrev = sd(Prevalence)/sqrt(n())) %>%
  ggplot(aes(x = Group, y = MeanPrev)) +
  geom_bar(stat = "identity") +
  geom_errorbar(aes(ymin = MeanPrev-SdErrPrev, ymax = MeanPrev+SdErrPrev), width = 0.2)
```

*what is the output of this code chunk?*


========================================================

```r
gmp %>%
  drop_na(Prevalence) %>%
  group_by(Group) %>%
  summarise(MeanPrev = mean(Prevalence), SdErrPrev = sd(Prevalence)/sqrt(n())) %>%
  ggplot(aes(x = Group, y = MeanPrev)) +
  geom_bar(stat = "identity") +
  geom_errorbar(aes(ymin = MeanPrev-SdErrPrev, ymax = MeanPrev+SdErrPrev), width=0.2)
```

<img src="W2_Presentation-figure/unnamed-chunk-4-1.png" title="plot of chunk unnamed-chunk-4" alt="plot of chunk unnamed-chunk-4" style="display: block; margin: auto;" />

Q2. Do vectored parasites also have intermediate hosts? 
========================================================

> I am interested in the proportion of parasites with complex life histories or intermediate hosts. I think that vectored parasites as compared to non-vectored parasites are more likely to have an intermediate host. For the first pass, I want to visualize the number of vectored parasites. 


```r
gmpTraits <- read_csv("data/GMPD_parasite_traits.csv")

gmpTraits %>%
  mutate(vector = ifelse(vector == 0, "No", "Yes")) %>%
  mutate(intermediate = ifelse(intermediate == 0, "No", "Yes")) %>%
  ggplot(aes(x = vector, fill = intermediate)) +
  geom_bar()
```

*what happens if an `ifelse` statement isn't used?*

Q2. Do vectored parasites also have intermediate hosts? 
========================================================




```r
gmpTraits %>%
  mutate(vector = ifelse(vector == 0, "No", "Yes")) %>%
  mutate(intermediate = ifelse(intermediate == 0, "No", "Yes")) %>%
  ggplot(aes(x = vector, fill = intermediate)) +
  geom_bar()
```

![plot of chunk unnamed-chunk-7](W2_Presentation-figure/unnamed-chunk-7-1.png)



4. Automating data analysis with functions
========================================================

Sometimes we have a set of analyses that needs to be done multiple times. Instead of a copy & paste approach, we can write a `function()` 

![automation](figs/geeks2.png)

Anatomy of a function 
========================================================



```r
FunctionName <- function(arguement1, arguement2, ...){
  #some analysis
  return(outputOfFunction)
}
```


Function Names
========================================================
Function names should...

* be verbs describing what the function will do. 
* use CamelCaseNaming 

*GOOD:* CalculateAvgClicks  
*BAD:* calculate_avg_clicks , calculateAvgClicks 

An Example
========================================================

Move `W2_Functions.Rmd` from the W2_Exercise folder into your GMPD folder containing the `GMPD.Rproj`

Open the `.Rmd` once it is in the correct location. 

An Example
========================================================

*scenario:* In addition to the GMPD, there are also parasite datasets for cetaceans and fish among others. They all follow the same format and column naming system. You've been asked to continue exploring which groups are sickest (Q1) using these additional datasets. 

*task:* Write a function that will automate these calculations for each dataset. 

An Example
========================================================

*scenario:* In addition to the GMPD, there are also parasite datasets for cetaceans and fish among others. They all follow the same format and column naming system. You've been asked to continue exploring which groups are sickest (Q1) using these additional datasets. 

*task:* Write a function that will automate these calculations for each dataset. 

*step 1:* Determine what the function should do. Maybe try out the analysis on a sample dataset


Step 1. Sketching out the function analysis
========================================================
  * we have code that will do this for the `gmp` dataset


```r
gmp %>%
  drop_na(Prevalence) %>%
  group_by(Group) %>%
  summarise(MeanPrev = mean(Prevalence), SdErrPrev = sd(Prevalence)/sqrt(n()))
```

```
# A tibble: 3 x 3
  Group      MeanPrev SdErrPrev
  <chr>         <dbl>     <dbl>
1 carnivores    0.388   0.0141 
2 primates      0.328   0.00534
3 ungulates     0.500   0.00706
```

Step 2. Decide how to generalize the code
========================================================
  * What names will change with each dataset? 
  * What will stay the same? 


```r
gmp %>%
  drop_na(Prevalence) %>%
  group_by(Group) %>%
  summarise(MeanPrev = mean(Prevalence), SdErrPrev = sd(Prevalence)/sqrt(n()))
```

Step 3. Put into function format
========================================================
 

```r
 PrevByParType<- function(dataset){
  dataset %>%
    drop_na(Prevalence) %>%
    group_by(Group) %>%
    summarise(MeanPrev = mean(Prevalence), SdErrPrev = sd(Prevalence)/sqrt(n()))
 }
```

Step 4. Try it out
========================================================
 

```r
 PrevByParType<- function(dataset){
  dataset %>%
    drop_na(Prevalence) %>%
    group_by(Group) %>%
    summarise(MeanPrev = mean(Prevalence), SdErrPrev = sd(Prevalence)/sqrt(n()))
 }

PrevByParType(gmp)
```

```
# A tibble: 3 x 3
  Group      MeanPrev SdErrPrev
  <chr>         <dbl>     <dbl>
1 carnivores    0.388   0.0141 
2 primates      0.328   0.00534
3 ungulates     0.500   0.00706
```

Tidyverse Challenge
========================================================
 Modify this function so that the mean prevalence is calculated for each host group *and* parasite type. 
 

```r
 PrevByParType<- function(dataset){
  dataset %>%
   # calculate mean prevalence for host group and parasite type
 }
```

Tidyverse Challenge: Solution
========================================================
 Modify this function so that the mean prevalence is calculated for each parasite type. 
 

```r
 PrevByParType<- function(dataset){
  dataset %>%
    drop_na(Prevalence) %>%
    group_by(Group, ParType) %>% # add second grouping variable
    summarise(MeanPrev = mean(Prevalence), SdErrPrev = sd(Prevalence)/sqrt(n()))
 }
```



Returning to RR
========================================================  
**Dataflow is the idea that when a variable changes, downstream computations affected by that variable should change as well.**

So in this case, we've written a function that can take in different datasets or updated versions and adjust the output atuomatically*

*as long as the column names are consistent. 

5. Using scripts in your workflow 
========================================================
We've touched on organization earlier. Let's focus on the *scripts* folder.

 ![flow](figs/directory_orgScripts.png)

Keeping a clean workflow
========================================================
If you are writing functions that:
- are long
- used for different parts of your research
- won't be changing often. 

Then, a script might make for clean workflow. 

 ![flow](figs/directory_orgScripts.png)

What is a script?
========================================================

- stable code often consisting of functions
- is saved as `.R` file type
- is loaded into the R environment using the `source()` command
- simplifies your `.Rmd` files 



Make a script
========================================================

1. Create a `.R` file 
2. Make some comments at the start of the file, write your functions
3. Save file in scripts directory with an informative name


Make a script
========================================================
left: 30%
1. Create a `.R` file 

***

 ![](figs/newScript.png)
 
 
Make a script
========================================================

1. Create a `.R` file 
2. Make some comments at the start of the file


```r
# Written on May 11, 2018 by Reni Kaul
# This script contains functions for the R workshop; REU popbio program. 
# Originally written to be part of the W2_Functions.Rmd exploration

 PrevByParType <- function(dataset){
  dataset %>%
    drop_na(Prevalence) %>%
    group_by(Group) %>%
```

*Never start a script with rm(list = ls())*

Make a script
========================================================

1. Create a `.R` file 
2. Make some comments at the start of the file
3. Save file in scripts directory with an informative name

- What is good name for this script? 
- Create a script folder inside the `GMPD` project and save your script


Use a script
========================================================

 *only for this demo Session > Restart R*

Source the script 


```r
source("scripts/YOURFILE.R")
```

What's in the Environment tab?


6. Wrap Up
========================================================
left: 50%


**We can…**
- code using best practices
- create an HTML doc with code and commentary  
- write a function
- create and use scripts
- <span style="color:gray"> calculate summary statistics of a dataset </span>
- <span style="color:gray"> create a figure from data </span>


    
***
![W2](figs/W2_iterative.png)

**Reminder: complete project worksheet**

  6. Wrap Up
========================================================
left: 50%
    
**Next**

  - Modeling
    -   simulating data
    -   fitting models to data 

***

![W3](figs/W3_iterative.png)

