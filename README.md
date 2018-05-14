# R_workshopsREU
Series of workshops used to introduce R to participants of the Population Biology of Infectious Disease 

<Philosophy of workshop and rationale for changes>

# Learning objectives
The learning objectives are broken down by workshop, and are stated as "Students will be able to" (SWBAT). 


## Workshop 3: Simulating infectious diseases with R

    - convert data between wide and long data format using gather()
    - explain the difference between wide and long data format
    - write the syntax for a generic function
    - code a system of ODEs as a function for lsoda() simulations
    - describe Euler's method (conceptually)
    - write code to numerically solve ODEs using lsoda()
    - describe a compartmental model
    - plot numerical solutions of ODE models 
    - describe the impact of changing beta and gamma on the size and duration of an outbreak in a SIR model
    - write and source a script in R
    - write a for loop to iterate over a vector 

# Outline of Workshop Modules
## Workshop 1: Introduction to R, Rstudio using tidyverse

0. Why is R programming a useful skill? (John)
0. Workshop format and expectations
1.  What is R and RStudio
    - list at least 3 reasons R/RStudio is a useful research tool 
    - describe CRAN's function
    - install a package
    - create a variable in R
    - Interface with Rstudio
2. Introduction to R with tidyverse code along
3. How to troubleshoot in R
4. Exploring data further in groups 
  	
  Additional reading:
  
     
## Workshop 2: Reproducible research with RStudio (Done)

1. Introduction to reproductive research
    - starting/working in R projects
    - good file organization  	
    - good commenting  "the why, not the how"
    - good commentary
    - using code chunks
    - writing a script
2. Review of tidyverse with exercise
    - edit Exploring further from Wksp 1 to adhere to best practices
3. Exploring data using reproducible research practices
    - explore the data using the reproducible workflow
    - new skills:
      - writing functions
      - ~~class str()~~
      - ~~iterating~~ 
    - practice old skills:
      - tidyverse
      - Rproject
      - logic statements (ifelse)
  
  Additional reading:

## Workshop 3: Simulating infectious diseases with R

1. Modeling concepts
2. Review of functions
3. Converting ODEs to R code
4. Simulate exponential growth of a populations
5. Simulate an SIR model
6. Iterations in R

 Additional reading: 
 
 1. ODE and compartmental models primer
 2. Base are syntax primer
 
 
## Workshop 4: Data visualization with R
Collaborative plotting
 7.  Data Visualization
      - plotting in base R
      - plotting in ggplot
      - spatial data 

---
Old bits
  
  5. Getting the terminology
  6.  Data Types
      - assigning objects
      - data structure and syntax
      - troubleshooting through Rstudio
      - data subsetting
  7.  Best practices
  8.  Writing functions 
      - function syntax
      - control statements
      - logic statements 
  9. What to do when you are stuck       
 

  
  1. Review making a script
  2. Function swap
  3. Reproducible research
  4.  Manipulating and exploring Data  
      - loading data 
      - calculate simple stats in base `R`
      - plot function in base `R`

      which will require the following skills already covered:
       - logic statements
       - manipulating data  
       - assigning an object
       
       
        8.  Simulating Data
        - simulating data of discrete model
        - simulating data of continuous model
        
      which will require the following skills already covered:

        - function syntax
        - data structure 
        - assigning an object
        - plotting in base `R`
        - plotting in ggplot
        - manipulating data  
