# http://www.cookbook-r.com/Graphs/Bar_and_line_graphs_(ggplot2)/
# 

#bar graph

dat <- data.frame(
  time = factor(c("Lunch","Dinner"), levels=c("Lunch","Dinner")),
  total_bill = c(14.89, 17.23)
)

x11()
ggplot(data=dat, aes(x=time
                     ,y=total_bill
                     ,fill=time #color code
                     ))+
geom_bar(stat='identity')+ #also stat=count, bin
  guides(fill=FALSE)+ #no legend
  xlab("Time of day") +
  ylab("Total bill") +
  ggtitle("Average bill for 2 people")


#Line graph
#
ggplot(data=dat, aes(x=time, y=total_bill, group=1)) + #all points group into 1 line
  geom_line()+
  geom_point()


#Need to try below with more variables ################
#
head(iris)


# Basic line graph with points
ggplot(data=dat1, aes(x=time, y=total_bill, group=sex)) +
  geom_line() +
  geom_point()

# Map sex to color
ggplot(data=dat1, aes(x=time, y=total_bill, group=sex, colour=sex)) +
  geom_line() +
  geom_point()

# Map sex to different point shape, and use larger points
ggplot(data=dat1, aes(x=time, y=total_bill, group=sex, shape=sex)) +
  geom_line() +
  geom_point()


# Use thicker lines and larger points, and hollow white-filled points
ggplot(data=dat1, aes(x=time, y=total_bill, group=sex, shape=sex)) + 
  geom_line(size=1.5) + 
  geom_point(size=3, fill="white") +
  scale_shape_manual(values=c(22,21))
