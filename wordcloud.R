words_df<-sns%>%
  unnest_tokens(word,text) #output, input

words_df<-words_df%>%
  filter(!word %in% stop_words$word) #don't keep the stop_words from the book

word_freq<-words_df%>%
  group_by(word)%>%
  summarize(count=n())  # number of times each word appears

wordcloud(word_freq$word,word_freq$count,min.freq=25)

# min.freq = #  <- if the word count is 25 or greater,
#  include it in the wordcloud