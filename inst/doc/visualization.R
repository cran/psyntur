## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  fig.width = 6
)

## ----setup--------------------------------------------------------------------
library(psyntur)

## ----fig.width=5--------------------------------------------------------------
scatterplot(x = trustworthy, y = faithful, data = faithfulfaces)

## -----------------------------------------------------------------------------
scatterplot(x = trustworthy, y = faithful, data = faithfulfaces, by = face_sex)

## ----fig.width=6--------------------------------------------------------------
scatterplot(x = trustworthy, y = faithful, data = faithfulfaces, 
            by = face_sex, best_fit_line = TRUE)

## ----fig.width=5--------------------------------------------------------------
tukeyboxplot(y = time, data = vizverb)

## ----fig.width=5--------------------------------------------------------------
tukeyboxplot(y = time, data = vizverb, jitter = TRUE)

## ----fig.width=5--------------------------------------------------------------
tukeyboxplot(y = time, x= task, data = vizverb)

## -----------------------------------------------------------------------------
tukeyboxplot(y = time, x= task, data = vizverb, by = response)

## -----------------------------------------------------------------------------
tukeyboxplot(y = time, x= task, data = vizverb,
             by = response, jitter = TRUE)

## ----fig.width=5--------------------------------------------------------------
tukeyboxplot(y = len, x = dose, data = ToothGrowth)

## -----------------------------------------------------------------------------
tukeyboxplot(y = len, x = dose, data = ToothGrowth,
             by = supp, jitter = TRUE, jitter_width = .5)

## ----fig.width=5--------------------------------------------------------------
histogram(x = age, data = schizophrenia)

## ----fig.width=5--------------------------------------------------------------
histogram(x = age, data = schizophrenia, bins = 20)

## -----------------------------------------------------------------------------
histogram(x = age, data = schizophrenia, by = gender, bins = 20)

## -----------------------------------------------------------------------------
histogram(x = age, data = schizophrenia, 
          by = gender, bins = 20, position = 'dodge')

## -----------------------------------------------------------------------------
histogram(x = age, data = schizophrenia, 
          by = gender, bins = 20, position = 'identity')

## -----------------------------------------------------------------------------
histogram(x = age, data = schizophrenia, 
          by = gender, bins = 20, position = 'identity', alpha = 0.7)

