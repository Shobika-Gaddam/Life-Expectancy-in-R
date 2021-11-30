library(tidyverse)

life_expec<-read_csv("C:/Users/shobi/OneDrive/Desktop/Woxsen/Term 2/R Programming/lifeexp.csv")
life_expec

colnames(life_expec)
life_expec %>%
  filter(Year==2000)  
life_expec <-life_expec %>%
  filter(Race=="All Races",Gender=="Both")  
life_expec %>%
  ggplot()
life_expec %>%
  ggplot(aes(x=Year, y=Avg_Life_Expec))
life_expec %>%
  ggplot(aes(x=Year, y=Avg_Life_Expec)) + geom_line()
life_expec %>% #data layer
  ggplot(aes(x=Year, y=Avg_Life_Expec)) + #axes layer 
  geom_line() + #geom layer
  labs( #annotations layer
    title="United States Life Expectancy: 100 Years of Change",
    y="Average Life Expectancy(Years)")
