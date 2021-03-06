# library
install.packages('wordcloud2')
library(wordcloud2) 

# have a look to the example dataset
head(demoFreq)
wordcloud2(demoFreq, size=1.6)

# Gives a proposed palette
wordcloud2(demoFreq, size=1.6, color='random-dark')

# or a vector of colors. vector must be same length than input data
wordcloud2(demoFreq, size=1.6, color=rep_len( c("green","blue"), nrow(demoFreq) ) )

# Change the background color
wordcloud2(demoFreq, size=1.6, color='random-light', backgroundColor="black")

# Change the shape:
wordcloud2(demoFreq, size = 0.7, shape = 'star')

# Change the shape using your image
wordcloud2(demoFreq, figPath = "peace.png", size = 1.5, color = "skyblue", backgroundColor="black")

#install webshot
install.packages('webshot')
library(webshot)
webshot::install_phantomjs()
# Make the graph
my_graph=wordcloud2(demoFreq, size=1.5)
# save it in html
install.packages('htmlwidgets')
library("htmlwidgets")
saveWidget(my_graph,"tmp.html",selfcontained = F)
# and in png
webshot("tmp.html","fig_1.pdf", delay =5, vwidth = 480, vheight=480)
