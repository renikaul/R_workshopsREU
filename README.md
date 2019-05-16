
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

This workshop focuses on implementing infectious disease models in R. since this workshop requires some understanding of compartmental models, the students are given a short primer to read it before hand. The primer covers the very basics of ordinary differential equations, and population modeling. The workshop starts with a code-along of an exponential growth model using lsoda. Here students revisit interpreting manual pages, and function syntax introduced in the previous workshops. The students then work in groups to develop an SIR model using the exponential growth model as a template. Then, the workshop revisits the workflow tenant of reproducible research by introducing and demonstrating a the `.R` script file type. ~Creating and sourcing a script leads into a conversation about iterations. The discrete exponential growth model is used to explore for loops in R.~

This workshop is unique in the series since it focuses on connecting discipline specific concepts like environmental models to implementing code. 


4. Data Visualization with R

The final workshop of the series focuses on data visualization, revisits reproducible workflow, and covers basic statistical analysis. Students have produced basic visualizations (scatterplot, barplot) as part of the exercises in the 3 previous workshops. This workshop focuses on choosing the appropriate visualization, and adding details (labels, legends, etc.) in ggplot. The visualization exercises are completed in an .Rmd file which allows explicit exploration of markdown syntax, code chunk options, and YAML settings. The final concept covered in the workshop series are linear regressions. Students will be asked to reference the ggplot documentation to add a timeline to a scatter plot, and then use the lm() function to create a model. 

## Learning objectives
The learning objectives are broken down by workshop, and are stated as "Students will be able to" (SWBAT).

### Workshop 1: Introduction to R

- install and load a package
- load data from csv
- manipulate data using dplyr verbs and tidyverse syntax
- calculate summary statistics of a dataset
- create a barplot from data
- list trouble shooting resources

### Workshop 2: Reproducible research with R

- start a new project in RStudio
- write the syntax for a generic function
- code using RR best practices
    - good file organization and naming
    - good commenting  "the why, not the how"
    - good commentary
    - good object and function naming
- write and source a script


### Workshop 3: Simulating infectious diseases with R

- convert data between wide and long data format using gather()
- explain the difference between wide and long data format
- code a system of ODEs as a function for lsoda() simulations
- describe Euler's method (conceptually)
- write code to numerically solve ODEs using lsoda()
- describe a compartmental model
- plot numerical solutions of ODE models
- describe the impact of changing beta and gamma on the size and duration of an outbreak in a SIR model
- ~write and source a script in R~ (MOVED TO W2)
- ~write a for loop to iterate over a vector~ (Removed from workshop)

### Workshop 4: Data visualization in R

- customize ggplot figures
- code a t-test
- code a correlation coefficient test
- code a linear regression 

## Other useful information

The bottom quarter of the projected screen is hard to see with the desk monitors are at full height. You might encourage students to push the monitors down so people can see behind them, put away monitors that aren't being worked on, and rearrange your RStudio panels so that the panel you're interacting with most is in the upper half of the screen.

We have requested that students use the computers provided to avoid installation issues with R.


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

1. What is `R` and RStudio?
2. Introduction to with tidyverse with code along

*Break*

3. Troubleshooting
4. Exploring data in groups
5. Wrap Up

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


## Notes

This is the first workshop in the series, and so it is important to start by clearly motivating the workshops and setting the tone for what is to come. The latest iteration of this series has been modified and reorganized to clearly communicate the value of R in scientific research. These modifications include:

1. John will give an intro pep talk at the first workshop about the value of R
2. The first workshop jumps right in with tidyverse data manipulation and plotting.
3. Researchers leading the workshops will be asked to explain how they use R in their research.
4. The first exercise in a workshop will have a review component, connect the concepts from the last workshop to the next.

This approach comes at the cost of covering the finer technical details that are sometimes introduced during an *Introduction to R* course. Students can cover some of this content in the Free Course Introduction to R offered by DataCamp (https://www.datacamp.com/courses/free-introduction-to-r). I think it is also important to acknowledge that this workshop series will not cover *all* of the skills the students will need, but instead emphisize the skills needed to for future learning as new challenges arise. These problem solving skills are practiced while covering commonly used concepts/tasks in this field.

This workshop will start with John Drake giving a brief overview of the importance of R programming in research. This is followed by describing the workshop formats, setting expectations and introducing yourself including how you use  `R`.   Science is iterative, so our work flow matches this process. Workshops will cover multiple parts of this cycle, each time focusing on a new aspect. Today will focus mostly on Import>Tidy>Transform of the workflow diagram.  Exercises are designed to be 'authentic tasks' or something similar to scientific programming.

### 1. What is R and RStudio?

Before jumping into the demo/code-along make sure to give the students a good grasp of vocabulary. Stress the difference between R the language, and RStudio is software. These workshops will exclusively use RStudio.

Demonstrate opening the project as a way to launch RStudio. The next workshop will focus on projects, so you don't need to go into much detail explaining the project component. Orientate them to the different panels of Rstudio- you might want to point out specific features like:

- green arrow to run code chunk
- expand/collapse sections
- section navigator
- etc.

### 2. Introduction to with tidyverse with code along (1.5 hours)

 We will use tidyverse for all of the workshops with the exception of workshop 3 which uses base `R`. If the students completed the DataCamp introduction course they will have been exposed to base `R` and the various object classes. Point out `pipes` and explain the verb orientated nature of tidyvers.
The syntax example also has a reference to a specific package, this will not often be used in the exercises but is useful when different packages can have the same named function.

Packages are associated with a specific task or feature and many have icons. Since packages are typically designed to do a single thing really well, so we need many packages to move through the iterative cycle. Of these, the workshops will mainly focus on dplyr, ggplot and rmarkdown.

The first command the students will execut in R is installing the tidyverse package. The installation should take less than 10 seconds. You should demo the GUI and command line method. While the package is installing you might also metion the hash tag comment. Make sure that install.packages() is commented before continuing. The document will not knit with an install.packages() command.

The install.packages() requires quoted package name but library() does not. Use this difference as an opprotunity to point out the importance of paying attention to syntax.

At this point, you can jump into the code-along in  W1_Exercise.Rmd with a solutions file (W1_Exercise_soln.Rmd or code chunks only: W1_Exercise_soln.R). It might be easiest to print off the .R to reference during the code along.  I have modified the DataCamp's  Introduction to tidyverse live code-along held on Facebook live April 5th, 2018. The code-along was a fast paced hour. The video is broken into 2 parts. It might be help watch the video to see how this type of instruction works.

Part 1: https://www.facebook.com/726282547396228/videos/2021285494562587/
Part 2: https://www.facebook.com/726282547396228/videos/2021328791224924/

I think this type of instruction works best when the leader takes the time to read the bits in between the code chunks and keeps a relatively moderate pace. I have built in little reflection sections to allow students to catch up as needed. Check in with the students often to find the appropriate pace. Watch the non-verbals for engagement. Do they make eye contact when you're asking questions? Do they shake their heads "yes" when you end with a "right"? Are students still typing? Are they struggling to see what your typing?

The dataset defines gender as a binary. Be sensitive to this.

If you haven't already this section should end with a break.

### 3. Troubleshooting

The break is followed by a short lecture on different ways to trouble shoot code. The purpose of this section is to drive home coding and trouble shooting go hand in hand. The slides run through a few different resources: manual pages, vignettes/turtorials, cheatsheets, error messages, and google.

In my experience manual pages, and error messages are the most intimidating for students. The round() manual page is one of the more straight forward pages to use for explaining the basic layout and argument interpretations. This is also a good place to introduce vocabulary specific to functions (the belong to a package, they take in arguments, etc.).  Students often need a little push to read beyond `error:`

### 4. Exploring data in groups (1 hour max)

Students will now have a chance to use tidyverse on their own. Working in groups makes this task appropriately challenging. Assign groups if they don't self assemble. This is to be completed as a group at the end of the W1_Exercise.Rmd. The majority of your time will be spent working with groups. Engage students and groups who seem to be withdrawing from the activity. Encourage them to look at the cheatsheets and other references. This is an opportunity for them to develop trouble shooting skills, and ownership of a product. When possible help them understand the cheat sheets or other trouble shooting approaches.

You should check in with groups early in the process to make sure the question is appropriately challenging and answerable given the dataset.  This isn't a skill that will be explicitly covered in these workshops, but is needed for the program. This exploration will be used in the next workshop so try to steer groups into different questions. The more diversity of approaches and questions the better.

The exploration ends with saving the document with a group number. It is important that they 1) remember their number for the next workshop,  2)  are uniquly numbered, and 3) email a copy to you.

### 5. Wrap Up

Take a minute to recap all of the skills that have been covered. You might ask for examples for each of the steps in the Import -> Visualize flow.  Learning R can feel like you're drinking from a fire hose, but this workshop hopefully demonstrates that it is worth the effort. The next work shop will add communication into the mix.

---
# Reproducible Research Teaching Notes

## Agenda
  
  1. Introduction to reproducible research (RR)
  2. Review of tidyverse with RR
  
    *Break*
    
  3. Explore data using a R project
  4. Automating data analysis with functions
  5. Using scripts in your workflow
  6. Wrap Up 

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

### 1. Introduction to reproducible research (RR)

The workshop starts with a short lecture covering the basic principles of RR. This is also an opportunity to share how following RR practices have been useful to you and collaborators. I often stress the importance of these practices for them during the REU since the work that they are doing will most likely be handed off to another scientist (including future self). Many of these practices are baked into RStudio, RProjects and the workshops.

### 2. Review of tidyverse with RR

The first exercise (W2_exercise.Rmd) will focus on incorporating commentary outside of code chunks and comments inside of code chunks. Students are asked to revisit the group data exploration from the first workshop. They will need to add commentary/comments to their own work, and a different group’s work. They will need to be able to interpret the other groups code in order to add comments/commentary, forcing them to revisit tidyverse syntax. I expect trying to comment on another group’s work will give them an understanding of the importance of this practice in their own research. The exercise ends with a discussion reflecting on their experience. Questions to prompt conversation include:

1. What did you include in your commentary? in comments? why? 
2. What was challenging about documenting the other group's work? 
3. How does your document compare to other group members? Did you include similar information? 
4. What changes (if any) did you make to the markdown code to format the html output?  

and are on the last slide before the break.

*break*

### 3. Explore data using a R project

The second exercise of the workshop involves setting up an RProject from scratch. Start by walking the students through the GUI setup of an RProject, and the value of RProjects (there is an embedded YouTube video describing the set up process). I found a nice video of ‘why use projects’ that might also be useful but cannot be embedded or added to edpuzzle (http://bit.ly/WhyUseProjects). The video ends with github which we don’t cover. They will need to move the GMPD data into the project directory. This is a good opportunity to explain the type of files that could go into each subdirectory using the R for data science suggested organization. Once they have the organization in place they are given two prompts to explore the GMPD. This exercise is another opportunity to practice tidyverse syntax and commenting/commentary. Since they aren’t given any skeleton for the analysis, you may need to coach groups on a reasonable approach to get at an answer. I have provided an example figure for each, but summary statistics could also work. 

Q1. solution introduces piping directly into ggplot, and more complex visualization. At this stage a bar plot is all that is really expected. They will have a chance to explore more complex figures in the last workshop. 

Q2. solution revisited the ifelse() command to convert 0/1 numeric data into categorical data. You might take a minute to print the data object before and after the ifelse() mutate to show the change to factors.    
 
For groups that finish quickly, push them by asking them to add more nuance to the analysis or refining commenting/commentary of the document. This module can be shortened to a single question if needed. The new skills are covered in the set up. 

The last two modules of the workshop cover functions and scripts within the GMPD Rproject. 

### 4. Automating data analysis with functions

The functions exercise is motivated by a hypothetical scenario where a summary calculation of the GMPD is converted into a function. This work is done in the `W2_Functions.Rmd` file and has lots of scaffolding. The main take home from this module should be 1) good function names, 2) function syntax, and 3) how argument names are used as place holders within the function. Writing functions will be essential to the next workshop which used lsoda() to numerically solve an SIR model. 

### 5. Using scripts in your workflow

 The functions module flows into the script module.  Revisit the suggested subdirectory organization. The GMPD started with creating a data directory, this module focuses on the scripts directory. The function that was written in the previous module is then used to create a script. This is also another chance to give examples from your own research. 

### 6. Wrap Up 

Take a minute to recap all of the skills that have been covered. You might ask for examples for each of the steps in the Import -> Visualize flow.  Learning R can feel like you're drinking from a fire hose, but this workshop hopefully covers skills to manage the mess of learning. The next workshop will use the skills covered in the first 2 workshops to build an SIR model.


# Simulating Infectious Diseases Teaching Notes

## Agenda

1. Modeling Concepts
  2. Review of functions
  3. Converting ODEs to R code
  4. Simulate exponential growth of a population 
  
  *Break*
  
  5. Simulate an SIR model
  6. Iterations in `R`
  7. Wrap Up 

## Files

Files to be shared with students

- `W3_Reading.html`
- `W3_slide.html`
- `W3_Exercies_soln.html`
- `W3_Exercies_soln.Rmd`
- `W3_Exercise.Rmd`
- `W3_Sims.Rproj`

Additional files for instructor

- `W3_slides.Rpres` (used to make `W3_slides.html`)
- `W3_Reading.Rmd`

## Notes

### 1. Modeling Concepts

This workshop in the series is unique since it focuses on converting an ODE model into R code. Before the students can understand the `R` part of the workshop, they need to understand the basics of population modeling. The reading introduced an exponential growth model and an SIR model. This is a chance to discuss the readings as a class.  You might review key terminology and major points. Keep in mind there is no calculus reuirement for the program. 

### 2. Review of functions

The last workshop students converted a piece of code into a function (See Wk 2; #4). This function is presented as the example. Review could include the terminology, advantages, best practices, etc.  

### 3. Converting ODEs to R code

Conceptual discussion of how `lsoda` functions. It isn't important to stress the specifics of `lsoda` or any ODE solver, but touch on the conceptual approach that the code uses. The goal is to demystify simulations. 

### 4. Simulate exponential growth of a population 
 Walk through the example to writing an exponential growth model. You might start with a disclaimer like "We're going to do this together for the exponential model, then work in groups to make an SIR model". The W3_Exercise starts at this point. Have students open the `.Rproj` instead of the `.Rmd` to avoid working directory issues. The exercise is broken into smaller steps to mimic learning any new skill in `R`. Be sure to give them enough time to review the manual page, so they can practice reading documentation. The exercise ends with plotting. This maybe a bit tricky since they have to convert the output to a data.frame this was touched on *briefly* in an earlier workshop, but is coverted in detail in the recommended DataCamp course. Don't spend too much time explaining object classes. If they are interested, they have the resources to explore more on their own.  
  
  *Break*
  
### 5. Simulate an SIR model
The students are asked to repeat the process of coding a model and plotting the solution. I would encourage them to work in groups, and revisit Step 4. I would recommend having them read through all the steps before starting. This might make it easier to see how things fix together. Since the SIR model returns 3 values for each time point, I've included a uick aside on wide vs long data forms. This conversion is a time saver for plotting, and not an essential concept to understand. 

Given that the group has a wide range of abilities, I've included a challenge task for the faster groups to complete. If they are interested, this also creates an opprotunity to talk about some disease modeling concepts. The solution offered for the challenge is a bit complicated with pipes, gathering and plotting. I would not expect them to come up with this - this is more of an aspirational example of what can be done. 

### 6. Iterations in `R`

Loops always seem to be a challenge the first time around. I have tried to motivate why you would possibly write a loop in an authentic manner. The students have not had exposure to indexing in the workshop (but is covered early on in the DataCamp course they have access to). I imagine this would work best by walking them through most of it, but letting them write the loop themselves. 

### 7. Wrap Up 
Take a minute to recap all of the skills that have been covered. This might also be a good place to discuss the benfit of `R` over excel. Learning R can feel like you're drinking from a fire hose, but this workshop hopefully covers skills to manage the mess of learning. The last workshop will use the skills covered in the first 3 workshops to produce publication ready figures and basic statistical analysis.


# Data Visualization Teaching Notes

## Agenda
 
  1. Approach to visualizations
  2. `ggplot` review
  3. Plotting challenge 
  
    *Break*
    
  4. Inferential statistics
  5. Wrap Up 

## Files

Files to be shared with students

- `W4_Reading.html`
- `W4_Presentation.html`
- `W4_Exercise\W4_Exercies_soln.html`
- `W4_Exercise\W4_Exercies_soln.Rmd`
- `W4_Exercise\W4_Exercise.Rmd`
- `W4_Exercise\W4_Exercise.Rproj`
- `W4_Exercise\data\niamey.rds`
- `W4_Exercise\DataViz_1.html`
- `W4_Exercise\DataViz_2.html`
- `W4_Exercise\DataViz_3.html`
- `W4_Exercise\DataViz_4.html`
- `W4_Exercise\DataViz_Soln.html`

Additional files for instructor

- `W4_Presentation.Rpres` (used to make `W4_Presentation.html`)
- `W4_Reading.Rmd` (which pulls from `\data` and `\figs`)

## Notes

### 1. Approach to visualizations
 
 This section serves as a discussion based on the reading, and is a place to share some of your experiences in developing appropriate visualizations. The reading sets up the differences between visualizations used for data exploration and presentations along 4 different traits. This is a chance to talk about specific differences (ie. when to include units on axes labels, color choice, plot appropriateness for specific data). 
 
### 2. `ggplot` review

The students have create ggplots scatter or barplots in every workshop, and have been guided to reference the cheat sheets. They should be familiar with the ggplot basics, but this is a good chance to review and explicitly walk through using the dense cheat sheet. This is the last bit of guidance before they are set loose on the plotting challenge. 

### 3. Plotting challenge (1.5 - 2 hours)

The plotting challenge is a modified jigsaw exercise and is based on the premise that we often have a visualization goal but can be challenging to reach. You might present the scenario of chatting with your mentor about your project. These meetings often include brainstorming different methods to visualize relationships. At the end of the meeting you're tasked with creating visualizations based on sketchs developed during the meeting. 

Students should work with the students in their row. Suggesting they only sit in 4 designated rows at the start of the workshop makes this exercise run smoother. Each row is given a different set of 2 challenges as an `.html`(DataViz_X.html). The first challenge is the same for all groups, and has a bit of guidence. The second challenge is different for each group, and are only given the dataset and the end figure. The data used in this exercise are either included in data packages or simulated. Encourage groups that finish early to include additional features appropriate for a presentation visualization, exporting the figure (covered in the reading), or explaining the code to eachother. 

When the groups have finished, reassign students so that each member of the new group worked on a different challenge (ie. groups by columns instead of rows). The new groups of students should then move through the rows of computers. At each row, the student who made the visualization should explain how they made their figure and any challenges they we able to figure out. Most students get stuck on including informative labels, and ordering factors (ie. order of months). 

After the students complete the jigsaw, you might include a class level reflective discussion on the task. You could also revisit the visualization vs presentation discussion by asking students how easily they understood the new visualizations produced by the other groups.   

    *Break*
    
### 4. Inferential statistics (~ 1 hour)

This is the only module focused on hypothesis testing, and closely follows the reading. The reading included the conceptual backgroud of t-test, correlations, and linear regression with `R` code. This is a chance for the students to practice using these tests during an authentic task exploring a measles dataset. The exercise is to be completed in W4_Exercise.Rmd, and is broken down into the 3 tests by prompts that are appropriate for each test. The lines of code in the exercise that need to be completed start with a double hash (##). Depending on the students, either stop after each test and discuss or let them run through the whole exercise. It might be useful to have the solutions open to review as they complete the different sections of the exercise. 

The t.test could reuire subsetting columns using base R `$` syntax. This might be a tricky bit for students who have been working along in the DataCamp course, since we have only focused on tidyverse.  

For students that are moving through the exercise uickly encourage them to practice including commentary with in-line test statistics reported from objects (`r lm.fit$coefficients`). More details are included in the reading for the W2_RepRe.  

### 5. Wrap Up 

Take a minute to recap all of the skills that have been covered. This might also be a good place to discuss the benfits of `R` over excel. Learning R can feel like you're drinking from a fire hose, but this workshop hopefully covers skills to manage the mess of learning. This is the last workshop in the series which has been structured around the tidyverse interation diagram included at the beginning and end of each presentation. They have touched on each of the steps in at least two seperate workshops. They have really covered many concepts! Give them a chance to reflect on their progress, and perhaps even set new goals. 
