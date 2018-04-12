Introduction to R
========================================================
author: Person
date: date
autosize: true
font-import: https://fonts.googleapis.com/css?family=PT+Sans
font-family: 'PT Sans', sans-serif;

***
<div class="midcenter"><div style="margin-left:-0px;margin-top:500px;"><img style="margin:0px; background-color:transparent; border:0px; box-shadow:none;" src="W1_Intro-figure/logo.png"></img></div></div>



Why is R programming a useful skill?
========================================================
(John Drake)

About Myself
========================================================

 - My research interest is [INSERT DESCRIPTION]
 - I use `R` in my research to:
   + organize data 
   + develop machine learning algorithms
   + 
 - I mostly work [in this disease system or approach] 
 - My contact info is [INSERT EMAIL]
 

Workshop Goals 
========================================================
left:65%
**The workshop series** consists of four half day workshops each focusing on a different part of the research process
- Introduction to `R` and RStudio (Today)
- Conducting reproducible research (Date; Person)
- Visualizing data (Date; Person)
- Simulating infectious disease dynamics (Date; Person)

***

![workflow](W1_Intro-figure/iterative.png)


Workshop Format 
========================================================

- Introduction of instructor & how they use `R`
- Review of past concepts
- Outline of the day's goals  
- Work through data analysis project  
- Reflection on day's materials

Expectations
========================================================
left:60%
**You**
- Come ready to participate
  + review the materials before hand
  + room tends to be cold
- Ask questions
- Help eachother

***
**Instructor**
- Come ready to participate
- Help you find answers 
- Be a resource for you during the REU program

Outline 
========================================================
left: 40%

**You should be able to...**
- calculate summary statistics of a dataset
- automate an analysis
  
*** 

**Topics**
  1. What is `R` and RStudio? 
  2. How is it used for research?
  3. Introduction to with tidyverse with code along
  
  *Break*
  
  4. Troubleshooting   
  5. Exploring data in groups 
  6. Wrap Up 

 1. What is R and RStudio? 
========================================================

R packages are collections of functions and data sets developed by the community.

![RStudio](W1_Intro-figure/rstudio-console.png)
  
2. How is it used for research?
========================================================


3. Introduction to tidyverse
========================================================  
left: 50%

- The tidyverse is a set of packages that work in harmony because they share common design. 
- Unique syntax used pipes (`%>%`) to connect data (object) to verbs (functions). 

***
![tidy syntax](W1_Intro-figure/tidysyntax.png)


tidyverse package
========================================================  
The tidyverse package is designed to make it easy to install and load core packages from the `tidyverse` in a single command.

![tidy verse package](W1_Intro-figure/tidyverse.png)


Install tidyverse package
======================================================== 
- We need to install the `tidyverse` package. This can be done by clicking on buttons in Rstudio or from the console using `install.packages()`
- Install the package by running line X of the `W1_Exercise.Rmd` file


```r
#install all the packages in the tidyverse
install.packages("tidyverse") 
```


Load tidyverse package
======================================================== 
- Once a package is installed, we need to load it during our current R session. 
- This is done using `library()`.
- How should this code be altered to load the tidyverse library? 


```r
#load tidyverse library
library()
```


======================================================== 

Switch over to `W1_Exercise.Rmd`

========================================================
 
 <h1> *Break* </h1>

4. How to get unstuck: functions
========================================================
left: 35%
- Every function has a help page 
- `?function()` to access  

***
![manual page](W1_Intro-figure/read-a-help-page.png)

How to get unstuck: packages
========================================================
left: 50%
* Packages have a vignette and/or reference manual on [cran.r-project.org](cran.r-project.org)

* People often make their own tutorials too
***
![](W1_Intro-figure/dplyr_tutorial.png)

How to get unstuck: packages
========================================================
left: 30%

 - Cheatsheets published out by RStudio
 
***
![cheatsheets](W1_Intro-figure/ggcheat.png)

https://www.rstudio.com/resources/cheatsheets/

How to get unstuck: packages
========================================================
left: 30%

 - Cheatsheets published out by RStudio
 - Contributed cheatsheets 
 
***
![cheatsheets](W1_Intro-figure/datastructures2.png)


How to get unstuck: error messages
========================================================

![error](W1_Intro-figure/error_msg.png)

First, try to understand the error message. It can be very helpful. 

How to get unstuck: error messages
========================================================
left: 30%

 - But sometimes, the messages is cryptic. So use google!   

***
![google](W1_Intro-figure/googlefu.png)


  
  5. Exploring further
========================================================
Let's work in small groups (max [X])

- Develop a question about that can be answered with this data
- Decide on the needed verbs, and order
- Write the code in the final code chunck of the `W1_Exercise.Rmd` file

More instructions in the file. 




