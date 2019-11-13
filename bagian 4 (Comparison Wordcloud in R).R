
corpus <- Corpus(VectorSource(text_cleaning_5))
tdm <- TermDocumentMatrix(corpus)
tdm
m  <- as.matrix(tdm)
m
colnames(m)
comparison.cloud(m)
