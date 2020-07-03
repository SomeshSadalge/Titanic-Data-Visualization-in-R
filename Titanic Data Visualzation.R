library(ggplot2)
## Visualizing Catagorical Variables

# Setting up factors for catagorical data
Titanic_data$Pclass<- as.factor(Titanic_data$Pclass)
Titanic_data$Survived<- as.factor(Titanic_data$Survived)
Titanic_data$Sex<- as.factor(Titanic_data$Sex)
Titanic_data$Embarked<- as.factor(Titanic_data$Embarked)

# Q1. What was the survived rate?
ggplot(Titanic_data,aes(x=Survived))+geom_bar()
prop.table(table(Titanic_data$Survived))

# lebelling & customaizing Chart
ggplot(Titanic_data,aes(x=Survived))+
  geom_bar()+
  theme_bw()+
  labs(y="passenger count",title = "Titanic Survival Rate")
ggplot(Titanic_data,aes(x=Survived))+
  geom_bar()+
  theme_light()+
  labs(y="passenger count",title = "Titanic Survival Rate")

# Q2. Survival rate based on Sex
ggplot(Titanic_data,aes(x=Sex,fill=Survived))+
  geom_bar()+
  theme_light()+
  labs(y="passenger count",title = "Titanic Survival Rate")

# Q3. Survival rate by ticket class?
ggplot(Titanic_data,aes(x=Pclass,fill=Survived))+
  geom_bar()+
  theme_light()+
  labs(y="passenger count",title = "Titanic Survival Rate")

# Q4. Survival rate by ticket class & Sex?
ggplot(Titanic_data,aes(x=Sex,fill=Survived))+
  geom_bar()+
  theme_light()+
  facet_wrap(~Pclass)+
  labs(y="passenger count",title = "Titanic Survival Rate")

## Visualizing Continuous Variables
summary(Titanic_data$Age)
ggplot(Titanic_data,aes(x=Age))+
  geom_histogram(binwidth = 5)+
  theme_bw()+
  labs(y="Passenger Count",x="Age(Bindwidth=5)", title = "Titanic Age Distribution")


# Using facet_wrap for visualizing Gender based Survival upon Age?
ggplot(Titanic_data,aes(x=Age, fill=Survived))+
  geom_histogram(binwidth = 5)+
  theme_bw()+
  facet_wrap(~Sex)+
  labs(y="Passenger Count",x="Age(Bindwidth=5)", title = "Titanic Age Distribution")

# Q5. Survival rate baased on Sex, Age, Ticket Class
ggplot(Titanic_data,aes(x=Age, fill=Survived))+
  geom_histogram(binwidth = 5)+
  theme_bw()+
  facet_wrap(Sex~Pclass)+
  geom_density(alpha=0.5)+
  labs(y="Passenger Count",x="Age(Bindwidth=5)", title = "Titanic Age Distribution")

plot(Titanic_data$Age)
summary(Titanic_data$Age)



















