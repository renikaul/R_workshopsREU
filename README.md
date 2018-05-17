
# Series goals

The goal of these workshops are for students to develop R programming skills that they will use during the REU by jumping straight into those tasks. The design will show students the value of this skill and encourage maintained engagement. However, this approach prioritizes task completion over detailed technical knowledge which will hopefully be filled in over time and as needed.     

Please take breaks as needed, some are just built in for reminders. 

Each workshop is broken down into 3 parts: 1. Short lecture, 2. Code Along or demonstration of a skill, and 3. Application of those skills.  

## Workshop Overview

1. Introduction to R
    This workshop gives students an introductory to R and RStudio, along with a review of troubleshooting strategies. The majority of the workshop is spent exploring the Titanic passenger list using tidyverse in a code-along session. Data manipulation, summary statistics and basic visualizations using tidyverse are covered. The workshop ends with the students working in groups to explore a self-identified question regarding the Titanic data set. The workshop ends with students compiling their .Rmd into an html document. 

2. Reproducible Research with R
    This workshop gives students an introduction to reproducible research concepts. They develop and practice best practices for commenting and commentary of code, along with using RStudio projects to manage workflow. The workshop revisits tidyverse and the Titanic data set by asking students to comment and add commentary to their group exploration of the Titanic data set. Students also start a new RStudio project, and are asked to explore the global mammal parasite database using tidyverse. The workshop ends with an introduction to writing functions.

3. Simulating Infectious Diseases with R

This workshop focuses on implementing infectious disease models in R. since this workshop requires some understanding of compartmental models, the students are given a short primer to read it before hand. The primer covers the very basics of ordinary differential equations, and population modeling. The workshop starts with a code-along of an exponential growth model using lsoda. Here students revisit interpreting manual pages, and function syntax introduced in the previous workshops. The students then work in groups to develop an SIR model using the exponential growth model as a template. Then, the workshop revisits the workflow tenant of reproducible research by introducing and demonstrating a the `.R` script file type. Creating and sourcing a script leads into a conversation about iterations. The discrete exponential growth model is used to explore for loops in R.

This workshop is unique in the series since it focuses on connecting discipline specific concepts like environmental models to implementing code. 


4. Data Visualization with R

The final workshop of the series focuses on data visualization, revisits reproducible workflow, and covers basic statistical analysis. Students have produced basic visualizations (scatterplot, barplot) as part of the exercises in the 3 previous workshops. This workshop focuses on choosing the appropriate visualization, and adding details (labels, legends, etc.) in ggplot. The visualization exercises are completed in an .Rmd file which allows explicit exploration of markdown syntax, code chunk options, and YAML settings. The final concept covered in the workshop series are linear regressions. Students will be asked to reference the ggplot documentation to add a timeline to a scatter plot, and then use the lm() function to create a model. 

## Learning objectives
The learning objectives are broken down by workshop, and are stated as "Students will be able to" (SWBAT).

### Workshop 1: Introduction to R

IN PROGRESS
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

### Workshop 2: Reproducible research with R

IN PROGRESS
- start a new project in RStudio
-
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
- practice old skills:
- tidyverse
- Rproject
- logic statements (ifelse)

Additional reading:



### Workshop 3: Simulating infectious diseases with R

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

### Workshop 4: Data visualization in R


# Provided Materials 

I have developed a suite of materials for the workshops for the instructors and student. Students will be given the exercise materials, readings, and lecture slides before the workshop. 

## Lecture: 

You've been provided HTML slides that will help you introduce the topic. There are some slides that will require edits from you (ie. contact information, how you use R in your research). Specific items to be edited are noted with `[INSERT INFO]' notation. 

The slides were created with RStudio .Rpres feature. Once you have made your edits, save the presentation as a html for the workshop. See
https://support.rstudio.com/hc/en-us/articles/200486468-Authoring-R-Presentations for more details. 

Feel free to edit the material as needed, but please still cover the information since each workshop will build on previously covered skills. 

## Exercises:

Students will be given templates for the exercises in a `exercise.Rmd` document. There is a complementary `exercise_soln.Rmd` file as well. In some cases, it would be best to type along in the student version while other times it might be useful to have the code already completed. Using completed code is a time saver for longer tasks since it will free you to walk the room instead. 

Any data required for the exercises will also be included in a data folder. In an effort to reinforce best practices, materials will be given to students in organized directories using .Rproj 

## Readings and videos:

In some cases students will given short readings to be done before the workshop. I have also created a collection of videos using edpuzzle.com relating to topics for each workshop. Students will be able to access the videos at any point in the series.  


# Introduction to R Teaching Notes

## Agenda

## Files

Files to be shared with students

- `W1_Reading.html`
- `W1_Presentation.html`
- `W1_Exercies_soln.html`

- `W1_Exercise.Rmd`

- data/train.csv

Additional files for instructor

- `W1_Exercise_soln.Rmd`
- `W1_Presentation.Rpres` (used to make `W1_Presentation.html`)


## Notes (IN PROGRESS)
Code-Along:
The code along file is the W1_Exercise.Rmd with a solutions file (W1_Exercise_soln.Rmd or code chunks only: W1_Exercise_soln.R). It might be easiest to print off the .R to reference during the code along.   
I have modified the Data Camp's  Introduction to tidyverse live code-along held on Facebook live April 5th, 2018. The code-along was 1 hour. The video is broken into 2 parts. It might be help watch the video to see how this type of instruction works. 

Part 1: https://www.facebook.com/726282547396228/videos/2021285494562587/
Part 2: https://www.facebook.com/726282547396228/videos/2021328791224924/

I think this type of instruction works best when the leader takes the time to read the bits in between the code chunks and keeps a relatively moderate pace. I have built in little reflection sections to allow students to catch up as needed. 
It is also important to set up your screen to maximize the view of previously completed lines while making sure students can still see what is currently being typed. The bottom of the projector screen is too low to be seen from the back of the computer lab. You may also want to make sure that monitors not in use are stored under the table. 

See W1_Exercise_soln.R for chunck specific comments. 

Application of skills: 
This is to be completed as a group at the end of the W1_Exercise.Rmd. The majority of your time will be spent working with groups. Engage students and groups who seem to be withdrawing from the activity. Encourage them to look at the cheatsheets and other references. This is an opportunity for them to develop trouble shooting skills, and ownership of a product. 

You should check in with groups early in the process to make sure the question is appropriately challenging and answerable given the dataset. This isn't a skill that will be explicitly covered in these workshops. 

The first workshop jumps in with data manipulation, summarization, and plotting in tidyverse using a code-along followed by group exploration of a data set. The exploration ends with foreshadowing the next workshop which focuses on reproducible research by kniting the .Rmd into a HTML file, and sharing the code which will be interpreted by others.

Setting the tone for the workshop series.

---
# Reproducible Research Teaching Notes

## Agenda
  
  1. Introduction to reproducible research (RR)
  2. Review of tidyverse
  
    *Break*
    
  3. Explore data using a R project
  4. Automating data analysis with functions
  5. Wrap Up 

## Files

Files to be shared with students

- `W2_Reading.html`
- `W2_Presentation.html`
- `W2_Exercies_soln.html`
- `W2_Functions_soln.html`

- `W2_Exercise.Rmd`
- `W2_Functions.Rmd`


- data/GMPD_*.csv (4 files)
- data/metadata.pdf

Additional files for instructor

- `W2_Exercies_soln.Rmd`
- `GMPD/Explore_GMPD.Rmd`
- `GMPD/GMPD.Rproj`
- `W2_Functions_soln.Rmd`
- `W2_Presentation.Rpres` (used to make `W2_Presentation.html`)

## Notes
The workshop starts with a short lecture covering the basic principles of RR. This is also an opportunity to share how following RR practices have been useful to you and collaborators. I often stress the importance of these practices for them during the REU since the work that they are doing will most likely be handed off to another scientist (including future self). Many of these practices are baked into RStudio, RProjects and the workshops.

The first exercise (W2_exercise.Rmd) will focus on incorporating commentary outside of code chunks and comments inside of code chunks. Students are asked to revisit the group data exploration from the first workshop. They will need to add commentary/comments to their own work, and a different group’s work. They will need to be able to interpret the other groups code in order to add comments/commentary, forcing them to revisit tidyverse syntax. I expect trying to comment on another group’s work will give them an understanding of the importance of this practice in their own research. The exercise ends with a discussion reflecting on their experience. Questions to prompt conversation include:

1. What did you include in your commentary? in comments? why? 
2. What was challenging about documenting the other group's work? 
3. How does your document compare to other group members? Did you include similar information? 
4. What changes (if any) did you make to the markdown code to format the html output?  

and are on the last slide before the break.

*break*

The second exercise of workshop involves setting up an RProject from scratch. Start by walking the students through the GUI setup of an RProject, and the value of RProjects (there is an embedded YouTube video describing the set up process). I found a nice video of ‘why use projects’ that might also be useful but cannot be embedded or added to edpuzzle (http://bit.ly/WhyUseProjects). The video ends with github which we don’t cover. They will need to move the GMPD data into the project directory. This is a good opportunity to explain the type of files that could go into each subdirectory using the R for data science suggested organization. Once they have the organization in place they are given two prompts to explore the GMPD. This exercise is another opportunity to practice tidyverse syntax and commenting/commentary. Since they aren’t given any skeleton for the analysis, you may need to coach groups on a reasonable approach to get at an answer. I have provided an example figure for each, but summary statistics could also work. 

Q1. solution introduces piping directly into ggplot, and more complex visualization. At this stage a bar plot is all that is really expected. They will have a chance to explore more complex figures in the last workshop. 

Q2. solution revisited the ifelse() command to convert 0/1 numeric data into categorical data. You might take a minute to print the data object before and after the ifelse() mutate to show the change to factors.    
 
For groups that finish quickly, push them by asking them to add more nuance to the analysis or refining commenting/commentary of the document. This module can be shortened to a single question if needed. The new skills are covered in the set up. 

The last module of the workshop covers writing functions using a hypothetical scenario where a summary calculation of the GMPD is converted into a function. This work is done in the `W2_Functions.Rmd` file and has lots of scaffolding. The main take home from this module should be 1) good function names, 2) function syntax, and 3) how argument names are used as place holders within the function. Writing functions will be essential to the next workshop which used lsoda() to numerically solve an SIR model. 


# Simulating Infectious Diseases Teaching Notes

## Agenda

## Files

## Notes


# Data Visualization Teaching Notes

## Agenda

## Files

## Notes

