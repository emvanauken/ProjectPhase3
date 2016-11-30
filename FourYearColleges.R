setwd("~/MyData")
library(class)
library(dplyr)
library(ggplot2)

USColleges <- read.csv("MERGED2014_15_PP.csv")

USColleges <- select(USColleges, HIGHDEG, INSTNM, CITY, STABBR, LATITUDE, LONGITUDE, LOCALE, UG, UGDS, ADM_RATE,C150_4, SAT_AVG, UGDS_BLACK, UGDS_WHITE, UGDS_HISP, UGDS_ASIAN,UGDS_AIAN, UGDS_AIAN,RELAFFIL, COSTT4_A, PCTPELL, PCTFLOAN)

FourYear <- c("3", "4")
FourYearColleges <- filter(USColleges, HIGHDEG %in% FourYear)

write.csv(FourYearColleges, "~/MyData/FourYearColleges.csv")
