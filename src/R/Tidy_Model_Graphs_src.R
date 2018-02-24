#####To-do:#####

#Make Rmarkdown document detailing excursions of data ETL and plotting using grammar of graphics

#Add more examples over the next few weeks

##########

#####PCA example#####

##load and calculate pca algorithm on data
#pca_model <- prcomp(USArrests,scale=T) #option 1
pca_model <- prcomp(mtcars,scale=T) #option 2

library(dplyr)

##convert pca model data to tibble 
tidy_model <- 
  pca_model$x %>% 
    as.data.frame() %>% as.tbl()

##make generic variable name for identifying observations
tidy_model <- 
  tidy_model %>% 
    mutate(
      "Variable" = rownames(pca_model$x)
    )

##Optional code for truly tidy data
#tidy_model_gathered <- tidy_model %>% 
#    tidyr::gather("Component","value",-Variable)
  
##plot
library(ggplot2)
tidy_model %>% 
  ggplot(aes(PC1,PC2,label=Variable)) +
  geom_text(position="jitter") +
  theme(
    legend.position = "none"
  )
##########