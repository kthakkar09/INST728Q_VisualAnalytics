setwd("D:/Classes/INST728Q/Phase 3")

#Shawshank
shawshank<-get_text_as_string("D:/Classes/INST728Q/Phase 3/Top 5 Movies/1_Shawshank Redemption.txt")
shawshank<-get_sentences(shawshank)
shawshank_sentiment_vector <- get_sentiment(shawshank, method="bing")

plot(shawshank_sentiment_vector, type="l", main="Plot Trajectory", xlab = "Narrative Time", ylab= "Emotional Valence")
#plot(shawshank_sentiment_vector, type="h", main="Plot Trajectory", xlab = "Narrative Time", ylab= "Emotional Valence")



shawshank_ft_values <- get_transformed_values(shawshank_sentiment_vector, low_pass_size=3, x_reverse_len=100, scale_vals=TRUE, scale_range=FALSE)
plot(shawshank_ft_values, type ="h", main ="The Shawshank Redemption", xlab = "narrative time", ylab = "Emotional Valence", col = "red")
lines(shawshank_ft_values, type ="l", col = "dark red")



#Normalized moving average
shawshank_bin<- round(length(shawshank_sentiment_vector)*.1)
shawshank_sentiment_rolled <- zoo::rollmean(shawshank_sentiment_vector, k=shawshank_bin)
shawshank_list <- rescale_x_2(shawshank_sentiment_rolled)
shawshank_sample <- seq(1, length(shawshank_list$x), by=round(length(shawshank_list$x)/100))


#Plot from samples

plot(shawshank_list$x[shawshank_sample], 
     shawshank_list$z[shawshank_sample], 
     type="l", 
     col="blue",
     xlab="Narrative Time (sampled)", 
     ylab="Emotional Valence"
)

# Godfather

godfather<-get_text_as_string("D:/Classes/INST728Q/Phase 3/Top 5 Movies/2_The Godfather 1972.txt")
godfather<-get_sentences(godfather)
godfather_sentiment_vector <- get_sentiment(godfather, method="bing")

plot(godfather_sentiment_vector, type="l", main="Plot Trajectory", xlab = "Narrative Time", ylab= "Emotional Valence")
#plot(shawshank_sentiment_vector, type="h", main="Plot Trajectory", xlab = "Narrative Time", ylab= "Emotional Valence")



godfather_ft_values <- get_transformed_values(godfather_sentiment_vector, low_pass_size=3, x_reverse_len=100, scale_vals=TRUE, scale_range=FALSE)
plot(godfather_ft_values, type ="h", main ="The Godfather (1972)", xlab = "narrative time", ylab = "Emotional Valence", col = "orange")
lines(godfather_ft_values, type ="l", col = "dark orange")



#Normalized moving average
godfather_bin<- round(length(godfather_sentiment_vector)*.1)
godfather_sentiment_rolled <- zoo::rollmean(godfather_sentiment_vector, k=godfather_bin)
godfather_list <- rescale_x_2(godfather_sentiment_rolled)
godfather_sample <- seq(1, length(godfather_list$x), by=round(length(godfather_list$x)/100))


#Plot from samples

plot(godfather_list$x[godfather_sample], 
     godfather_list$z[godfather_sample], 
     type="l", 
     col="blue",
     xlab="Narrative Time (sampled)", 
     ylab="Emotional Valence"
)


# godfather 2 (1974)

godfather2<-get_text_as_string("D:/Classes/INST728Q/Phase 3/Top 5 Movies/3_The Godfather 2 1974.txt")
godfather2<-get_sentences(godfather2)
godfather2_sentiment_vector <- get_sentiment(godfather2, method="bing")

plot(godfather2_sentiment_vector, type="l", main="Plot Trajectory", xlab = "Narrative Time", ylab= "Emotional Valence")
#plot(shawshank_sentiment_vector, type="h", main="Plot Trajectory", xlab = "Narrative Time", ylab= "Emotional Valence")



godfather2_ft_values <- get_transformed_values(godfather2_sentiment_vector, low_pass_size=3, x_reverse_len=100, scale_vals=TRUE, scale_range=FALSE)
plot(godfather2_ft_values, type ="h", main ="The Godfather 2 (1972)", xlab = "narrative time", ylab = "Emotional Valence", col = "blue")
lines(godfather2_ft_values, type ="l", col = "navy blue")



#Normalized moving average
godfather2_bin<- round(length(godfather2_sentiment_vector)*.1)
godfather2_sentiment_rolled <- zoo::rollmean(godfather2_sentiment_vector, k=godfather2_bin)
godfather2_list <- rescale_x_2(godfather2_sentiment_rolled)
godfather2_sample <- seq(1, length(godfather2_list$x), by=round(length(godfather2_list$x)/100))


#Plot from samples

plot(godfather2_list$x[godfather2_sample], 
     godfather2_list$z[godfather2_sample], 
     type="l", 
     col="blue",
     xlab="Narrative Time (sampled)", 
     ylab="Emotional Valence"
)


# The Dark Knight

darkknight<-get_text_as_string("D:/Classes/INST728Q/Phase 3/Top 5 Movies/4_The Dark Knight.txt")
darkknight<-get_sentences(darkknight)
darkknight_sentiment_vector <- get_sentiment(darkknight, method="bing")

plot(darkknight_sentiment_vector, type="l", main="Plot Trajectory", xlab = "Narrative Time", ylab= "Emotional Valence")
#plot(shawshank_sentiment_vector, type="h", main="Plot Trajectory", xlab = "Narrative Time", ylab= "Emotional Valence")



darkknight_ft_values <- get_transformed_values(darkknight_sentiment_vector, low_pass_size=3, x_reverse_len=100, scale_vals=TRUE, scale_range=FALSE)
plot(darkknight_ft_values, type ="h", main ="The Dark Knight", xlab = "narrative time", ylab = "Emotional Valence", col = "green")
lines(darkknight_ft_values, type ="l", col = "dark green")



#Normalized moving average
darkknight_bin<- round(length(darkknight_sentiment_vector)*.1)
darkknight_sentiment_rolled <- zoo::rollmean(darkknight_sentiment_vector, k=darkknight_bin)
darkknight_list <- rescale_x_2(darkknight_sentiment_rolled)
darkknight_sample <- seq(1, length(darkknight_list$x), by=round(length(darkknight_list$x)/100))


#Plot from samples

plot(darkknight_list$x[darkknight_sample], 
     darkknight_list$z[darkknight_sample], 
     type="l", 
     col="blue",
     xlab="Narrative Time (sampled)", 
     ylab="Emotional Valence"
)



#All lines
plot(shawshank_ft_values, type ="l", main ="Best Movies", xlab = "narrative time", ylab = "Emotional Valence", col = "red")
lines(godfather_ft_values, type ="l", col = "dark orange")
lines(godfather2_ft_values, type ="l", col = "navy blue")
lines(darkknight_ft_values, type ="l", col = "dark green")


plot(shawshank_ft_values, type ="l", main ="Best Movies", xlab = "narrative time", ylab = "Emotional Valence", col = "red")
#lines(godfather_ft_values, type ="l", col = "dark orange")
lines(godfather2_ft_values, type ="l", col = "navy blue")
#lines(darkknight_ft_values, type ="l", col = "dark green")


#Moving Average

plot(shawshank_list$x[shawshank_sample], 
     shawshank_list$z[shawshank_sample], 
     type="l", 
     col="red",
     xlab="Narrative Time (sampled)", 
     ylab="Emotional Valence"
)
lines(godfather_list$x[godfather_sample], 
     godfather_list$z[godfather_sample], 
     type="l", 
     col="dark orange"
     
)
lines(godfather2_list$x[godfather2_sample], 
     godfather2_list$z[godfather2_sample], 
     type="l", 
     col="navy blue"
     
)
lines(darkknight_list$x[darkknight_sample], 
     darkknight_list$z[darkknight_sample], 
     type="l", 
     col="dark green"
     
)


