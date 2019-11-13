library(tm)
library(stopwords)

#memasukan nilai pada variabel text
text <- paste(readLines('data.txt'),collapse = " ")

#membersihkan text dari simbol koma, ?, titik, kutif, dll
text_cleaning_1 <- gsub(pattern = "\\W", replacement = " ", text)
#membersikan text dari angka
text_cleaning_2 <- gsub(pattern = "\\d", replacement = " ", text_cleaning_1)
#merubah text semunya menjadi huruf kecil
text_cleaning_3 <- tolower(text_cleaning_2)
gsub(text_cleaning_3, pattern = "", replacement = "")
#menghikan kata sambung "dan, yang, untuk, dll", alamat stopwords https://github.com/quanteda/stopwords
head(stopwords::stopwords("id", source = "stopwords-iso"), 20)
text_clening_4 <- removeWords(text_cleaning_3, stopwords("id", source = "stopwords-iso"))

#menghilangkan jarak spasi yang berlenihan
text_cleaning_5 <- stripWhitespace(text_clening_tambahan)

