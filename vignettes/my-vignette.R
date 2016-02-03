## ---- warning=FALSE, echo=FALSE------------------------------------------
library(ggplot2)
devtools::load_all(".")
load("C:/Users/Austin Vo/Desktop/facultyephs/data/catalog09.rda")
load("C:/Users/Austin Vo/Desktop/facultyephs/data/catalog10.rda")
load("C:/Users/Austin Vo/Desktop/facultyephs/data/catalog11.rda")
load("C:/Users/Austin Vo/Desktop/facultyephs/data/catalog12.rda")
load("C:/Users/Austin Vo/Desktop/facultyephs/data/catalog13.rda")
load("C:/Users/Austin Vo/Desktop/facultyephs/data/catalog13.rda")

## ---- warning=FALSE,echo=FALSE-------------------------------------------
data(catalog13)
names(catalog13)

## ---- echo=FALSE---------------------------------------------------------
head(catalog13)

## ---- results='hide'-----------------------------------------------------
catalog12.13 <- rbind(catalog12, catalog13)
catalog11.12.13 <- rbind(catalog11, catalog12, catalog13)
dim(catalog12.13)
dim(catalog11.12.13)

## ------------------------------------------------------------------------
mean(catalog13$Age)

## ------------------------------------------------------------------------
summary(catalog13$Age)
summary(catalog12$Age)

## ------------------------------------------------------------------------
youngest(catalog13)
youngest(catalog12)

## ------------------------------------------------------------------------
youngest(catalog12.13)

## ---- results="hide"-----------------------------------------------------
oldest(catalog13)
oldest(catalog12)

## ----echo=FALSE, warning=FALSE, fig.height=3-----------------------------
qplot(catalog13$Age[catalog13$Field=="Economics"], main="Economics Histogram", xlab= "Economics Age", bins = 15)
qplot(catalog13$Age[catalog13$Field=="Philosophy"], main="Philosophy Histogram", xlab= "Philosophy Age", bins = 15)

## ----echo=FALSE, fig.width=7---------------------------------------------
qplot(Age, data=catalog13, geom="density", color= Field=="Economics")

## ----echo=FALSE, fig.width=7---------------------------------------------
qplot(Age, data=catalog13, geom="density", color= Field=="Philosophy")

## ----echo=FALSE, fig.width=10, fig.height=10, warning=FALSE--------------
qplot(Age, data=catalog10, fill=Degree, bins=10)

## ----echo=FALSE----------------------------------------------------------
qplot(Age, Degree, data= catalog10)

## ----echo=FALSE, warning=FALSE, fig.height=3-----------------------------
qplot(catalog10$Age[catalog13$Degree=="BA"], main="BA Histogram", xlab= "BA Age", bins=30)
qplot(catalog10$Age[catalog13$Degree=="BS"], main="BS Histogram", xlab= "BS Age", bins=30)

## ----echo=FALSE, fig.height=4--------------------------------------------
qplot(Age, Degree=="PhD", data= catalog10)
qplot(Age, data=catalog10, geom="density", color= Degree=="PhD")

