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



ggplot(data=se)+
  geom_point(aes(x=year, y=visitors,color=park_name))+
  facet_wrap(~state, scales = "free")



ggplot(data=se)+
  geom_jitter(aes(x=park_name, y=visitors, color=park_name),
              width = 0.1, alpha=0.4)+
  coord_flip()+
  theme(legend.position = "none")



ggplot(data=se,aes(x=park_name, y=visitors))+
  geom_boxplot()+
  theme(axis.text.x = element_text(angle = 45,hjust = 1))+
  xlab("")



ggplot(se, aes(x=year, y=visitors, col=park_name))+
  geom_line()




ggplot(data=acadia)+
  geom_point(aes(x=year, y=visitors))+
  geom_line(aes(x=year, y=visitors))+
  geom_smooth(aes(x=year, y=visitors))+
  labs(title="Acadia National Park Visitation",
       y="Visitation",
       x="Year")+
  theme_bw()


ggplot(data=acadia, aes(x=year, y=visitors))+
  geom_point()+
  geom_line()+
  geom_smooth(color="red")+
  labs(title="Acadia National Park Visitation",
       y="Visitation",
       x="Year")+
  theme_bw()



ggplot(data=visit_16, aes(x=state))+
  geom_bar()


my_plot<-ggplot(data=mass)+
  geom_bar(aes(x=type, fill=park_name))+
  labs(x="",y="")+
  theme(axis.text.x = element_text(angle = 45,hjust = 1, size = 7))
ggsave("myplot.png", my_plot, width=15, height = 10)



library(plotly)
ggplotly(my_plot)



acad_vis <- ggplot(data = acadia, aes(x = year, y = visitors)) + 
  geom_point() +
  geom_line() +
  geom_smooth(color = "red") +
  labs(title = "Acadia National Park Visitation",
       y = "Visitation",
       x = "Year") +
  theme_bw()

ggplotly(acad_vis)





























































































