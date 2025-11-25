## ----include = FALSE----------------------------------------------------------
knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>"
)

## ----setup--------------------------------------------------------------------
library(psyntur)

## -----------------------------------------------------------------------------
describe(data = faithfulfaces, avg = mean(faithful), stdev = sd(faithful))

## -----------------------------------------------------------------------------
describe(data = faithfulfaces,
         avg_faith = mean(faithful), 
         avg_trust = mean(trustworthy),
         sd_trust = sd(trustworthy))

## -----------------------------------------------------------------------------
describe(data = faithfulfaces, by = face_sex, 
         avg = mean(faithful), stdev = sd(faithful))

## -----------------------------------------------------------------------------
describe(vizverb, by = c(task, response),
         avg = mean(time),
         median = median(time),
         iqr = IQR(time),
         stdev = sd(time)
)

## -----------------------------------------------------------------------------
describe_across(faithfulfaces,
                variables = c(trustworthy, faithful),
                functions = list(avg = mean, median = median, stdev = sd)
)

## -----------------------------------------------------------------------------
describe_across(faithfulfaces,
                variables = c(trustworthy, faithful),
                functions = list(avg = mean, median = median, stdev = sd),
                pivot = TRUE
)

## -----------------------------------------------------------------------------
describe_across(faithfulfaces,
                variables = c(trustworthy, faithful),
                functions = list(avg = mean, median = median, stdev = sd),
                by = face_sex,
                pivot = TRUE
)

## -----------------------------------------------------------------------------
faithfulfaces_na <- faithfulfaces %>%
  dplyr::mutate(faithful = ifelse(faithful > 6, NA, faithful))

## -----------------------------------------------------------------------------
describe_across(faithfulfaces_na,
                variables = c(trustworthy, faithful),
                functions = list(avg = mean, median = median, stdev = sd),
                by = face_sex,
                pivot = TRUE
)

## -----------------------------------------------------------------------------
describe(data = faithfulfaces, by = face_sex, 
         avg = mean(faithful, na.rm = T), stdev = sd(faithful, na.rm = T))

## -----------------------------------------------------------------------------
library(purrr)
describe_across(faithfulfaces_na,
                variables = c(trustworthy, faithful),
                functions = list(avg = ~mean(., na.rm = T), 
                                 median = ~median(., na.rm = T), 
                                 stdev = ~sd(., na.rm = T)),
                by = face_sex,
                pivot = TRUE
)

## -----------------------------------------------------------------------------
describe_across(faithfulfaces_na,
                variables = c(trustworthy, faithful),
                functions = list(avg = mean_xna, median = median_xna, stdev = sd_xna),
                by = face_sex,
                pivot = TRUE
)

