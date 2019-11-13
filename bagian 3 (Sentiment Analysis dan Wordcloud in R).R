library(wordcloud)
library(stringr)

#membagi kalimat dengan perkata 
text_split_1<-str_split(text_cleaning_5, pattern = "\\s+")

#menghilangkan kelas list [[1]] ke [1] (karakter)
class(text_split_1)
text_split_2 <- unlist(text_split_1)
class(text_split_2)

#menghitung kata-kata positif dengan algoritma metode/algoritma word matching https://github.com/masdevid/ID-OpinionWords

kataPostive <- readLines("positive.txt")
kataNegative <- readLines("negative.txt")

hasilPositve <- sum( !is.na(match(text_split_2, kataPostive)))
hasilNegative <- sum(!is.na(match(text_split_2, kataNegative)))

score <- hasilPositve-hasilNegative


#visualiasi dengan worldclod

wordcloud(text_split_2, min.freq = 4, random.order = FALSE, scale = c(3,0.5),color = rainbow(3))
