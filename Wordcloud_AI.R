# шаг-1. создаем текстовое хранилище "Corpus". Для этого создаем папку в рабочей директории, в которой хранится текстовый файл txt. Из этой папки все тексты загружаются в Корпус // load the text into a so-called corpus, so the tm package can process it. A corpus is a collection of documents (although in our case we only have one). The following command loads everything from the specified directory into a corpus called ‘lords’:
# обязательные пакеты:
library(RXKCD)
library(tm)
library(wordcloud)
library(RColorBrewer) 
library(SnowballC)          
Wordcloud <- Corpus(DirSource("/Users/polinalemenkova/Documents/R/36_Wordcloud/text/"))

# шаг-2. смотрим что в корпусе
inspect(Wordcloud)

# шаг-3. чистим и утряхиваем Корпус слов
Wordcloud <- tm_map(Wordcloud, stripWhitespace) # чистим Корпус от пробелов
Wordcloud <- tm_map(Wordcloud, tolower) # заменяем строчные на прописные
Wordcloud <- tm_map(Wordcloud, removeWords, stopwords("english")) #в англ. убираем "the" и пр.
Wordcloud <- tm_map(Wordcloud, stemDocument)

# шаг-4. теперь рисуем само облако точек 
wordcloud(Wordcloud, scale=c(6,0.3),
	min.freq=1,
	max.words=300, 
	random.order=F, 
	rot.per=0.35, use.r.layout=FALSE, 
	colors=brewer.pal(12, "Set1"),
	vfont=c("sans serif","plain"))
