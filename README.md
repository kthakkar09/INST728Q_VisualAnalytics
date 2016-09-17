# INST728Q-Visual-Analytics

Game of Thrones - Script Analysis and More..

Introduction

What makes a great movie “Great”? Or a great television series “Great”? We believe one of the most fundamental component behind a good movie or a television series is the script. With this simple idea we started exploring for commonalities between scripts of top rated movies and television shows. 

As part of this project we explore the sentiment variability in raw scripts of top Game of Thrones episodes and top IMDB rated movies. We try to look for hidden patterns among the best of the best scripts and share our findings for aspiring screenwriters, movie buffs and Game of Thrones enthusiasts.

Key Findings
 
1.  Popular and TV shows and movies have a template of sentiment variability in their scripts. 
2. 	It is interesting to note that popular movies and shows have similar emotion variability across the length of the script which makes a strong argument that most audiences have a strong preference some of these templates.
3.  Author/Show producers on Game of Thrones tend to kill characters as they get older or if they are affiliated to a particular house/group.
 
Analysis

Script Analysis in R
Identified and downloaded scripts for top movies and Game of Thrones episodes on IMDB.
Analysis done using the “syuzhet” package in R (“bing method”). After normalization, Fourier Transforms and Moving Average techniques for smoothing raw sentiment values were used. We used a bin size of 1% (of the total sentences in the script) to compare scripts of different length side by side.

Data sources
1.     https://jordanschermer.wordpress.com/2014/08/06/valar-morghulis/
2.    Game of Thrones Scripts
