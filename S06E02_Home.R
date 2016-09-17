#4_S02E10 Valar Morghulis
home<-get_text_as_string("D:/Classes/INST728Q/Phase 3/Top 5 Game Of Thrones Episode/S06E02_Home.txt")
home<-get_sentences(home)
home_sentiment_vector <- get_sentiment(home, method="bing")

plot(home_sentiment_vector, type="l", main="Plot Trajectory", xlab = "Narrative Time", ylab= "Emotional Valence")
#plot(home_sentiment_vector, type="h", main="Plot Trajectory", xlab = "Narrative Time", ylab= "Emotional Valence")



home_ft_values <- get_transformed_values(home_sentiment_vector, low_pass_size=3, x_reverse_len=100, scale_vals=TRUE, scale_range=FALSE)
plot(home_ft_values, type ="h", main ="Home", xlab = "narrative time", ylab = "Emotional Valence", col = "grey")
lines(home_ft_values, type ="l", col = "dark grey")



#Normalized moving average
home_bin<- round(length(home_sentiment_vector)*.1)
home_sentiment_rolled <- zoo::rollmean(home_sentiment_vector, k=home_bin)
home_list <- rescale_x_2(home_sentiment_rolled)
home_sample <- seq(1, length(home_list$x), by=round(length(home_list$x)/100))


#Plot from samples

plot(home_list$x[home_sample], 
     home_list$z[home_sample], 
     type="l", 
     col="dark grey",
     xlab="Narrative Time (sampled)", 
     ylab="Emotional Valence"
)

