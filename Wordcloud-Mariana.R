# ============================================================================
# Word cloud of project terms of the Mariana Trench (R). This produced Figure 22 (right) in the peer-reviewed article:
#   Lemenkova, P. (2019). Statistical Analysis of the Mariana Trench
#   Geomorphology Using R Programming Language.
#   Geodesy and Cartography, 45(2), 57-84.
#   DOI: https://doi.org/10.3846/gac.2019.3785
#   figshare: https://doi.org/10.6084/m9.figshare.9762860
#   HAL: https://hal.science/hal-02277500  Zenodo: https://zenodo.org/record/3385005
# Author: Polina Lemenkova | ORCID: 0000-0002-5759-1089
# ============================================================================

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
