# kiesselbach.oats.r
# Time-stamp: <23 Jun 2016 18:09:35 c:/x/rpack/agridat/data-done/kiesselbach.oats.r>


  
library(asreml)
library(dplyr)
library(kw)
library(Hmisc)
library(lattice)
library(rio)

setwd("c:/x/rpack/agridat/data-done/")
dat <- import("kiesselbach.oats.xlsx",col_names=FALSE)
dat <- dat/10
colnames(dat) <- 1:3
rownames(dat) <- 1:69
lib(reshape2)
dat <- as.matrix(dat)
dat <- melt(dat)
names(dat) <- c('row','col','yield')

kiesselbach.oats.uniformity <- dat

# ----------------------------------------------------------------------------

dat <- kiesselbach.oats.uniformity
if(require(desplot)){
  desplot(yield ~ col*row, dat,
          tick=TRUE, flip=TRUE, aspect=792/469, # true aspect
          main="kiesselbach.oats.uniformity")
}
range(dat$yield) # 56.7 92.8 match Kiesselbach p 64.
