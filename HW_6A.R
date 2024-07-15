setwd('G:/My Drive/Academics/TRGN 510/HW_6A')
library(googledrive)
library(tidyr)
library(dplyr)
drive_deauth()
drive_download("https://drive.google.com/file/d/11ebdJSErJN58THWvlaiu8k7AKiMjHMFL/view?usp=sharing", type = "csv")
drive_download("https://drive.google.com/file/d/11cxySFxeF3SrJpRxkyP4YOQBn2rsIo-q/view?usp=sharing", type = "csv")
cancer_by_county <- read.csv('cancer_by_county.csv', header=TRUE, sep=",", strip.white=TRUE)
medicare_by_county <- read.csv('medicare_by_county.csv', header=TRUE, sep=",")
head(cancer_by_county)
head(medicare_by_county)
medicare_by_county<-separate(data = medicare_by_county, col = StateCode_County, into = c("StateCode", "County"), sep="\\_")
head(medicare_by_county['County'])
#Joins
cancer_medicare_by_county<-inner_join(medicare_by_county,cancer_by_county)

summary(cancer_medicare_by_county)


cancer_medicare_by_county %>% 
  select(State,Physician.reimbursements.per.enrollee) %>%
  group_by(State) %>%
  summarise(Physician.reimbursements.per.enrollee = mean(Physician.reimbursements.per.enrollee,na.rm=TRUE)) %>%
  filter(State=="Arizona")

AZ_df<-cancer_medicare_by_county %>% filter(State == "Arizona")
mean(AZ_df$Physician.reimbursements.per.enrollee)
