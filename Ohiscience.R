fish_weight<-c("One"=12,"Two"=34, "red"=20, "blue"=6.6)
fish_weight
fish_weight_lb<-fish_weight*2.2
fish_weight_lb
sum(fish_weight_lb)


library(praise)
praise()
praise()
praise()




library(tidyverse)


#National Parks in California
ca <- read_csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/ca.csv") 

#Acadia National Park
acadia <- read_csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/acadia.csv")

#Southeast US National Parks
se <- read_csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/se.csv")

#2016 Visitation for all Pacific West National Parks
visit_16 <- read_csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/visit_16.csv")

#All Nationally designated sites in Massachusetts
mass <- read_csv("https://raw.githubusercontent.com/OHI-Science/data-science-training/master/data/mass.csv")



head(ca)
names(ca)

ggplot(data=ca)+
  geom_point(aes(x=year, y=visitors))


ggplot(data=ca)+
  geom_point(aes(x=year, y=visitors, color=park_name))


ggplot(data=ca)+
  geom_point(aes(x=year, y=visitors, color=park_name))+
  labs(x="YEAR", y="VISITATION",
       title = "California National Park Visitations")+
  theme_bw()+
  theme(legend.title = element_blank())



names(se)
unique(se$park_name)
unique(se$state)

ggplot(data=se)+
  geom_point(aes(x=year, y=visitors, col=park_name))

ggplot(data=se)+
  geom_point(aes(x=year, y=visitors, col=state))+
  ggtitle("Southeast region Visitors frequency")+
  xlab("Years")+
  ylab("Visitors")+
  theme_light()+
  theme(legend.title =element_blank(),
        axis.text.x = element_text(angle=45, hjust = 1, size = 14))












































































































































