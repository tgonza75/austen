#new install package -> gutenbergr

library(janeaustenr)
library(dplyr)
library(tm)
library(tidytext)
library(wordcloud)
library(stringr)
library(gutenbergr)
library(knitr)


gutenberg_works(title == 'Dracula') # Look for the book 'Dracula'... within all the other books

 #connect to your austen folder from your desktop, with the 2 R scripts(wordcloud.R, cleaning.R) from last time
 #tools, global options, sweave, first drop down box change to 'knitr'
 #New file, Rsweave...installation of TeX NEEDED on your own computer ... working on article.Rnw file

# on line 37 for Chapter to be in quotes, use 'tick' mark, all the way to the left of the keyboard, under esc. button