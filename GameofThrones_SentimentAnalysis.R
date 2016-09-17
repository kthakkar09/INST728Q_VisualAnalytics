#1_S05E08  Hardhome
hardhome<-get_text_as_string("D:/Classes/INST728Q/Phase 3/Top 5 Game Of Thrones Episode/1_S05E08.txt")
hardhome<-get_sentences(hardhome)
hardhome_sentiment_vector <- get_sentiment(hardhome, method="bing")

plot(hardhome_sentiment_vector, type="l", main="Plot Trajectory", xlab = "Narrative Time", ylab= "Emotional Valence")
#plot(hardhome_sentiment_vector, type="h", main="Plot Trajectory", xlab = "Narrative Time", ylab= "Emotional Valence")



hardhome_ft_values <- get_transformed_values(hardhome_sentiment_vector, low_pass_size=3, x_reverse_len=100, scale_vals=TRUE, scale_range=FALSE)
plot(hardhome_ft_values, type ="h", main ="Hardhome", xlab = "narrative time", ylab = "Emotional Valence", col = "red")
lines(hardhome_ft_values, type ="l", col = "dark red")



#Normalized moving average
hardhome_bin<- round(length(hardhome_sentiment_vector)*.1)
hardhome_sentiment_rolled <- zoo::rollmean(hardhome_sentiment_vector, k=hardhome_bin)
hardhome_list <- rescale_x_2(hardhome_sentiment_rolled)
hardhome_sample <- seq(1, length(hardhome_list$x), by=round(length(hardhome_list$x)/100))


#Plot from samples

plot(hardhome_list$x[hardhome_sample], 
     hardhome_list$z[hardhome_sample], 
     type="l", 
     col="red",
     xlab="Narrative Time (sampled)", 
     ylab="Emotional Valence"
)



#2_S04E10 The Children
thechildren<-get_text_as_string("D:/Classes/INST728Q/Phase 3/Top 5 Game Of Thrones Episode/2_S04E10.txt")
thechildren<-get_sentences(thechildren)
thechildren_sentiment_vector <- get_sentiment(thechildren, method="bing")

plot(thechildren_sentiment_vector, type="l", main="Plot Trajectory", xlab = "Narrative Time", ylab= "Emotional Valence")
#plot(thechildren_sentiment_vector, type="h", main="Plot Trajectory", xlab = "Narrative Time", ylab= "Emotional Valence")



thechildren_ft_values <- get_transformed_values(thechildren_sentiment_vector, low_pass_size=3, x_reverse_len=100, scale_vals=TRUE, scale_range=FALSE)
plot(thechildren_ft_values, type ="h", main ="The Children", xlab = "narrative time", ylab = "Emotional Valence", col = "orange")
lines(thechildren_ft_values, type ="l", col = "dark orange")



#Normalized moving average
thechildren_bin<- round(length(thechildren_sentiment_vector)*.1)
thechildren_sentiment_rolled <- zoo::rollmean(thechildren_sentiment_vector, k=thechildren_bin)
thechildren_list <- rescale_x_2(thechildren_sentiment_rolled)
thechildren_sample <- seq(1, length(thechildren_list$x), by=round(length(thechildren_list$x)/100))


#Plot from samples

plot(thechildren_list$x[thechildren_sample], 
     thechildren_list$z[thechildren_sample], 
     type="l", 
     col="dark orange",
     xlab="Narrative Time (sampled)", 
     ylab="Emotional Valence"
)


#3_S02E09 Blackwater
blackwater<-get_text_as_string("D:/Classes/INST728Q/Phase 3/Top 5 Game Of Thrones Episode/3_S02E09.txt")
blackwater<-get_sentences(blackwater)
blackwater_sentiment_vector <- get_sentiment(blackwater, method="bing")

plot(blackwater_sentiment_vector, type="l", main="Plot Trajectory", xlab = "Narrative Time", ylab= "Emotional Valence")
#plot(blackwater_sentiment_vector, type="h", main="Plot Trajectory", xlab = "Narrative Time", ylab= "Emotional Valence")



blackwater_ft_values <- get_transformed_values(blackwater_sentiment_vector, low_pass_size=3, x_reverse_len=100, scale_vals=TRUE, scale_range=FALSE)
plot(blackwater_ft_values, type ="h", main ="Blackwater", xlab = "narrative time", ylab = "Emotional Valence", col = "blue")
lines(blackwater_ft_values, type ="l", col = "navy blue")



#Normalized moving average
blackwater_bin<- round(length(blackwater_sentiment_vector)*.1)
blackwater_sentiment_rolled <- zoo::rollmean(blackwater_sentiment_vector, k=blackwater_bin)
blackwater_list <- rescale_x_2(blackwater_sentiment_rolled)
blackwater_sample <- seq(1, length(blackwater_list$x), by=round(length(blackwater_list$x)/100))


#Plot from samples

plot(blackwater_list$x[blackwater_sample], 
     blackwater_list$z[blackwater_sample], 
     type="l", 
     col="navy blue",
     xlab="Narrative Time (sampled)", 
     ylab="Emotional Valence"
)


#5_S03E09 The Rains of Castamere
rainsofCastamere<-get_text_as_string("D:/Classes/INST728Q/Phase 3/Top 5 Game Of Thrones Episode/5_S03E09.txt")
rainsofCastamere<-get_sentences(rainsofCastamere)
rainsofCastamere_sentiment_vector <- get_sentiment(rainsofCastamere, method="bing")

plot(rainsofCastamere_sentiment_vector, type="l", main="Plot Trajectory", xlab = "Narrative Time", ylab= "Emotional Valence")
#plot(rainsofCastamere_sentiment_vector, type="h", main="Plot Trajectory", xlab = "Narrative Time", ylab= "Emotional Valence")



rainsofCastamere_ft_values <- get_transformed_values(rainsofCastamere_sentiment_vector, low_pass_size=3, x_reverse_len=100, scale_vals=TRUE, scale_range=FALSE)
plot(rainsofCastamere_ft_values, type ="h", main ="The Rains Of Castamere", xlab = "narrative time", ylab = "Emotional Valence", col = "green")
lines(rainsofCastamere_ft_values, type ="l", col = "dark green")



#Normalized moving average
rainsofCastamere_bin<- round(length(rainsofCastamere_sentiment_vector)*.1)
rainsofCastamere_sentiment_rolled <- zoo::rollmean(rainsofCastamere_sentiment_vector, k=rainsofCastamere_bin)
rainsofCastamere_list <- rescale_x_2(rainsofCastamere_sentiment_rolled)
rainsofCastamere_sample <- seq(1, length(rainsofCastamere_list$x), by=round(length(rainsofCastamere_list$x)/100))


#Plot from samples

plot(rainsofCastamere_list$x[rainsofCastamere_sample], 
     rainsofCastamere_list$z[rainsofCastamere_sample], 
     type="l", 
     col="dark green",
     xlab="Narrative Time (sampled)", 
     ylab="Emotional Valence"
)



#All Lines Game of Thrones
plot(hardhome_ft_values, type ="l", main ="Best of Game of Thrones", xlab = "narrative time", ylab = "Emotional Valence", col = "red")
lines(thechildren_ft_values, type ="l", col = "dark orange")
lines(blackwater_ft_values, type ="l", col = "navy blue")
lines(rainsofCastamere_ft_values, type ="l", col = "dark green")


plot(hardhome_ft_values, type ="l", main ="Best of Game of Thrones", xlab = "narrative time", ylab = "Emotional Valence", col = "red")
lines(thechildren_ft_values, type ="l", col = "dark orange")

plot(blackwater_ft_values, type ="l",main ="Best of Game of Thrones", xlab = "narrative time", ylab = "Emotional Valence", col = "navy blue")
lines(rainsofCastamere_ft_values, type ="l", col = "dark green")

#Moving Average
plot(hardhome_list$x[hardhome_sample], 
     hardhome_list$z[hardhome_sample], 
     type="l", 
     col="red",
     xlab="Narrative Time (sampled)", 
     ylab="Emotional Valence"
)
plot(thechildren_list$x[thechildren_sample], 
     thechildren_list$z[thechildren_sample], 
     type="l", 
     col="dark orange",
     xlab="Narrative Time (sampled)", 
     ylab="Emotional Valence"
)
plot(blackwater_list$x[blackwater_sample], 
     blackwater_list$z[blackwater_sample], 
     type="l", 
     col="navy blue",
     xlab="Narrative Time (sampled)", 
     ylab="Emotional Valence"
)
plot(rainsofCastamere_list$x[rainsofCastamere_sample], 
     rainsofCastamere_list$z[rainsofCastamere_sample], 
     type="l", 
     col="dark green",
     xlab="Narrative Time (sampled)", 
     ylab="Emotional Valence"
)



plot(hardhome_list$x[hardhome_sample], 
     hardhome_list$z[hardhome_sample], 
     type="l", 
     col="red",
     xlab="Narrative Time (sampled)", 
     ylab="Emotional Valence"
)
lines(thechildren_list$x[thechildren_sample], 
     thechildren_list$z[thechildren_sample], 
     type="l", 
     col="dark orange"
     
)

lines(blackwater_list$x[blackwater_sample], 
     blackwater_list$z[blackwater_sample], 
     type="l", 
     col="navy blue",
     xlab="Narrative Time (sampled)", 
     ylab="Emotional Valence"
     
)
lines(rainsofCastamere_list$x[rainsofCastamere_sample], 
     rainsofCastamere_list$z[rainsofCastamere_sample], 
     type="l", 
     col="dark green"
     
)



plot(hardhome_list$x[hardhome_sample], 
     hardhome_list$z[hardhome_sample], 
     type="l", 
     col="red",
     xlab="Narrative Time (sampled)", 
     ylab="Emotional Valence"
)
lines(rainsofCastamere_list$x[rainsofCastamere_sample], 
      rainsofCastamere_list$z[rainsofCastamere_sample], 
      type="l", 
      col="dark green"
      
)
