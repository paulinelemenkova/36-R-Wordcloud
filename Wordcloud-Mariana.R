# шаг-1. создаем текстовое хранилище "Corpus". Для этого создаем папку в рабочей директории, в которой хранится текстовый файл txt. Из этой папки все тексты загружаются в Корпус // load the text into a so-called corpus, so the tm package can process it. A corpus is a collection of documents (although in our case we only have one). The following command loads everything from the specified directory into a corpus called ‘lords’:
# обязательные пакеты:
library(RXKCD)
library(tm)
library(wordcloud)
library(RColorBrewer) 
library(SnowballC)          
Mariana <- Corpus(DirSource("/Users/pauline/Documents/R/36_SCRIPT-Wordcloud/text/"))

# шаг-2. смотрим что в корпусе
inspect(Mariana)

# шаг-3. чистим и утряхиваем Корпус слов
Mariana <- tm_map(Mariana, stripWhitespace) # чистим Корпус от пробелов
Mariana <- tm_map(Mariana, tolower) # заменяем строчные на прописные
Mariana <- tm_map(Mariana, removeWords, stopwords("english"))
Mariana <- tm_map(Mariana, stemDocument)

# шаг-4. теперь рисуем само облако точек 
wordcloud(Mariana, scale=c(5,0.3), 
	min.freq=1,
	max.words=300, 
	random.order=F, 
	rot.per=0.35, use.r.layout=FALSE, 
	colors=brewer.pal(8, "Dark2"),
	vfont=c("sans serif","plain"))
