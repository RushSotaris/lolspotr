## ---- include = FALSE---------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(lolspotr)

## ----lolscrape----------------------------------------------------------------
#example usage

champData <- lolscrape()

## ----aSpeed-------------------------------------------------------------------
#example usage

aSpeed(.75,.25,.3,.25)
aSpeed(.638,.4,.25,.25,.3)

#example incorrect usage

##aSpeed(-.665,.5,.3)


## ----cdReduction--------------------------------------------------------------
#example usage

cdReduction(20,25,25)
cdReduction(12,15)

#example incorrect usage

##cdReduction(-15,-3)


## ----lethCalc-----------------------------------------------------------------
#example usage

lethCalc(30,6)
lethCalc(30,18)

#example incorrect usage

##lethCalc(30, 19)
##lethCalc(-15, 13)


## ----mSpeed-------------------------------------------------------------------
#example usage

mSpeed(325, 45, .07, .07)
mSpeed(330, 25, .06)

#example incorrect usage

##mSpeed(-325, 45, .3)
##mSpeed(340, 45, -1.3)


## ----pPenCalc-----------------------------------------------------------------
#example usage

pPenCalc(.25,.12,.5)
pPenCalc(.1,.3)

#example incorrect usage

##pPenCalc(.25,.5,.51)


## ----pRedCalc-----------------------------------------------------------------
#example usage

pRedCalc(.2,2)
pRedCalc(.1,6)

#example incorrect usage

##pRedCalc(.4,0,0)
##pRedCalc(.3,7)
##pRedCalc(1.1,3)


