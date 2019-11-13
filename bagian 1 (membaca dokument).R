#mengmbil data atau membaca data berupa file .txt
getwd()
readLines("data.txt")
str(readLines("data.txt"))

#menyatukan data dalam satu baris
paste(readLines("data.txt"), collapse = " ")

a <- c("hello","world","R.")
a
paste(a, collapse = " ")
