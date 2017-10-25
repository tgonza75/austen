library(janeaustenr)
library(dplyr)
library(tidytext)
library(tm)
library(wordcloud)
library(stringr)

sns<- austen_books() #all content from jane austen books
 
#just want the Sense & Sens. Book... not other books

sns<- sns%>%
  filter(book == 'Sense & Sensibility')

#make it a character column instead of factor

sns$book<-as.character(sns$book)

str_detect(sns$text, '^CHAPTER') #detect and find where CHAPTER lines are

sns$text[827] #to show if the line begins with CHAPTER

sns<-sns%>%
  filter(!str_detect(sns$text, '^CHAPTER')) #don't show me the lines that start with chapter

sns<-sns[12:12574,]  #dim(sns) in console to see how many lines there are

sns<-sns[1:12562,] #before this, the new dim(sns) was 12653... last line had THE END.. get rid of it

