#1.1 Pierwszy element:
#  Python: lista[0]
#R: wektor[1]
#
#1.2 Ostatni element:
#  Python: lista[-1]
#R: wektor[length(wektor)]
#
#1.3 Zakres 2 do 5:
#  Python: lista[1:5]
#R: wektor[2:5]
#
#1.4 Element (2,3):
#  Python: df.iloc[1, 2]
#R: macierz[2, 3]
#
#1.5 Drugi wiersz:
#  Python: df.iloc[1, ]
#R: macierz[2, ]

#2.1
liczba_calkowita <- 10L  
liczba_zmiennoprzecinkowa <- as.numeric(liczba_calkowita)
liczba_calkowita_z_powrotem <- as.integer(liczba_zmiennoprzecinkowa)

print(liczba_calkowita)
print(liczba_zmiennoprzecinkowa)
print(liczba_calkowita_z_powrotem)
#2.2
tekst <- "tekst"
typ_tekstu <- class(tekst)
print(typ_tekstu)
#2.3
tekst1 <- "Hello "
tekst2 <- "world!"
polaczony_tekst <- paste(tekst1, tekst2)
print(polaczony_tekst)
#2.4
log1 <- TRUE
log2 <- FALSE
wynik_or <- log1 | log2
wynik_and <- log1 & log2
print(wynik_or)
print(wynik_and)

numeric_vector <- c(10.2, 8.9, 12.5, 9.8, 15.3)

# 3.1
srednia <- mean(numeric_vector)
print(paste("Średnia wartość:", srednia))
# 3.2
roznica <- max(numeric_vector) - min(numeric_vector)
print(paste("Różnica max-min:", roznica))
# 3.3 
ilosc <- sum(numeric_vector > 10 & numeric_vector <= 14)
print(paste("Liczba elementów >10 i <=14:", ilosc))


text_vector <- c("R", "Bioinformatyka", "DNA")

# 3.4
dlugosci <- nchar(text_vector)
print("Liczba znaków w każdym elemencie:")
print(dlugosci)
# 3.5 
text_vector_malejaco <- sort(text_vector, decreasing = TRUE)
print("Wektor posortowany malejąco:")
print(text_vector_malejaco)
# 3.6 
text_vector_rosnaco <- sort(text_vector, decreasing = FALSE)
print("Wektor posortowany rosnąco:")
print(text_vector_rosnaco)

logical_vector <- c(TRUE, FALSE, TRUE, FALSE, TRUE)

# 3.7
indeksy_true <- which(logical_vector == TRUE)
print("Indeksy z wartością TRUE:")
print(indeksy_true)
# 3.8
negacja <- !logical_vector
print("Wektor po negacji:")
print(negacja)
####################4##################
# 4.1 
set.seed(123)
Ekspresja <- matrix(runif(12, 1, 10), nrow = 3, ncol = 4)

# 4.2
rownames(Ekspresja) <- c("Gen1", "Gen2", "Gen3")
colnames(Ekspresja) <- c("Próbka1", "Próbka2", "Próbka3", "Próbka4")

print("Macierz Ekspresja:")
print(Ekspresja)

# 4.3 
srednia_geny <- rowMeans(Ekspresja)
print("Średnia ekspresja dla każdego genu:")
print(srednia_geny)

# 4.4 
srednia_probki <- colMeans(Ekspresja)
print("Średnia ekspresja dla każdej próbki:")
print(srednia_probki)

# 4.5 
EkspresjaT <- t(Ekspresja)
print("Transponowana macierz EkspresjaT:")
print(EkspresjaT)

# 4.6 
dane_probki_1_3 <- Ekspresja[, c("Próbka1", "Próbka3")]
print("Dane dla Próbki1 i Próbki3:")
print(dane_probki_1_3)
#######################5###############
df <- data.frame(
  ID = 1:5,
  Wiek = c(25, 34, 28, 52, 40),
  Płeć = c("Kobieta", "Mężczyzna", "Kobieta", "Mężczyzna", "Kobieta"),
  Wzrost = c(165, 180, 170, 175, 168),
  Waga = c(60, 80, 65, 75, 58),
  Status_zdrowia = c("Dobry", "Średni", "Dobry", "Zły", "Dobry")
)

# 5.1 
print("Struktura ramki danych:")
str(df)

print("Pierwsze trzy rekordy:")
head(df, 3)

# 5.2 
sredni_wiek <- mean(df$Wiek)
print(paste("Średni wiek pacjentów:", sredni_wiek))

# 5.3
filtr <- subset(df, Status_zdrowia == "Dobry" & Płeć == "Kobieta")
print("Pacjenci ze statusem 'Dobry' i płcią 'Kobieta':")
print(filtr)

# 5.4 
df_posortowany <- df[order(df$Wiek, decreasing = TRUE), ]
print("Ramka danych posortowana według wieku (malejąco):")
print(df_posortowany)

# 5.5 
max_wzrost <- max(df$Wzrost)
min_wzrost <- min(df$Wzrost)
print(paste("Maksymalny wzrost:", max_wzrost))
print(paste("Minimalny wzrost:", min_wzrost))

###############6############

# 6.1
BMI_calc <- function(waga, wzrost) {
  wzrost_m <- wzrost / 100
  bmi <- waga / (wzrost_m^2)
  return(bmi)
}

# 6.2 
df$BMI <- BMI_calc(df$Waga, df$Wzrost)
print(df)

#####################7#################
bio_lista <- list(
  sekwencje_DNA = c("ATGCCTGAC", "GTCAGTCAG", "CTGATCGATGCTA"),
  gatunki = c("Homo sapiens", "Mus musculus", "Drosophila melanogaster"),
  ekspresja_genow = matrix(runif(9, 0, 100), nrow = 3),
  cechy_morfologiczne = data.frame(
    Gatunek = c("Homo sapiens", "Mus musculus", "Drosophila melanogaster"),
    Wysokość = c(170, 10, 0.1),
    Waga = c(70, 0.02, 0.0002)
  ),
  mutacje = list(Homo_sapiens = c("BRCA1", "BRCA2"), Mus_musculus = "p53")
)


# 7.1 
print("Struktura listy bio_lista:")
str(bio_lista)

# 7.2 
print("Nazwy gatunków:")
print(bio_lista$gatunki)

# 7.3
bio_lista$sekwencje_DNA <- c(bio_lista$sekwencje_DNA, "CGGGGCCATT")
print("Sekwencje DNA po dodaniu nowej:")
print(bio_lista$sekwencje_DNA)

# 7.4
srednia_ekspresja <- mean(bio_lista$ekspresja_genow)
print(paste("Średnia ekspresja genów:", srednia_ekspresja))

# 7.5
nowy_gatunek <- data.frame(
  Gatunek = "Arabidopsis thaliana",
  Wysokość = 0.3,
  Waga = 0.001
)
bio_lista$cechy_morfologiczne <- rbind(bio_lista$cechy_morfologiczne, nowy_gatunek)
print("Ramka cechy_morfologiczne po dodaniu nowego gatunku:")
print(bio_lista$cechy_morfologiczne)
str(bio_lista)
# 7.6 
print("Mutacje Homo sapiens:")
print(bio_lista$mutacje$Homo_sapiens)

# 7.7
bio_lista$mutacje$Mus_musculus <- c(bio_lista$mutacje$Mus_musculus, "Lmna")
print("Mutacje Mus musculus po dodaniu nowej mutacji:")
print(bio_lista$mutacje$Mus_musculus)
str(bio_lista)
#######################8######################
print("Macierz Ekspresja:")
print(Ekspresja)

# 8.1 
srednie_wiersze <- apply(Ekspresja, 1, mean)
print("Średnia każdego wiersza:")
print(srednie_wiersze)

# 8.2
srednie_kolumny <- apply(Ekspresja, 2, mean)
print("Średnia każdej kolumny:")
print(srednie_kolumny)

# 8.3
max_wiersze <- apply(Ekspresja, 1, max)
print("Maksymalna wartość w każdym wierszu:")
print(max_wiersze)
#################################9###################

#9.1
install.packages("dplyr")
library(dplyr)
df <- read.csv("C:/Users/s27753/Downloads/tissue_gene_expression_sample.csv")
head(df)
#9.2
cat("Liczba wierszy:", nrow(df), "\n")
cat("Liczba kolumn:", ncol(df), "\n")
#9.3
df %>%
  summarise(
    min_LHPP = min(x.LHPP, na.rm = TRUE),
    max_LHPP = max(x.LHPP, na.rm = TRUE)
  )
#9.4
df_sorted_asc <- df %>%
  arrange(x.LHPP)

df_sorted_asc %>%
  select(x.LHPP) %>%
  head(5) %>%
  print()

head(df_sorted_asc)
#9.5
df_sorted_desc <- df %>%
  arrange(desc(x.LHPP))

df_sorted_desc %>%
  select(x.LHPP) %>%
  head(5) %>%
  print()

head(df_sorted_desc)
#9.6
df_high_expression <- df %>%
  filter(x.LHPP > 14)

head(df_high_expression)

summary(df$x.LHPP)
#9.7
df_selected_genes <- df %>%
  select(x.MTF2, x.APBA1)

head(df_selected_genes)
################################10#################
#10.1

df <- data.frame(
  ID = 1:5,
  Wiek = c(25, 34, 28, 52, 40),
  Płeć = c("Kobieta", "Mężczyzna", "Kobieta", "Mężczyzna", "Kobieta"),
  Wzrost = c(165, 180, 170, 175, 168),
  Waga = c(60, 80, 65, 75, 58),
  Status_zdrowia = c("Dobry", "Średni", "Dobry", "Zły", "Dobry")
)

plot(df$Wzrost, df$Waga,
     main = "Zależność między wzrostem, a wagą",  
     xlab = "Wzrost (cm)",                        
     ylab = "Waga (kg)",                          
     pch = 16,                                   
     col = "blue")                     

#10.2

df <- read.csv("C:/Users/s27753/Downloads/tissue_gene_expression_sample.csv")
hist(df$x.LHPP,
     main = "Histogram ekspresji genu x.LHPP",
     xlab = "Wartość ekspresji",
     col = "lightblue",
     border = "black",
     breaks = 20)   
#10.3

install.packages("ggplot2")  
library(ggplot2)
install.packages("tidyr")  
library(tidyr)

df <- read.csv("C:/Users/s27753/Downloads/tissue_gene_expression_sample.csv", row.names = 1)


df <- df %>% 
  tibble::rownames_to_column(var = "Tkanka")


df_long <- df %>% 
  pivot_longer(
    cols = -c(Tkanka, y),  
    names_to = "Gen",
    values_to = "Ekspresja"
  )



ggplot(df_long, aes(x = Tkanka, y = Ekspresja, fill = Tkanka)) +
  geom_boxplot() +
  ggtitle("Rozkłady wartości ekspresji genów pomiędzy różnymi tkankami") +
  xlab("Tkanki") +
  ylab("Ekspresja genów") +
  theme_minimal() +
  theme(legend.position = "none") +   
  theme(axis.text.x = element_text(angle = 45, hjust = 1))  
