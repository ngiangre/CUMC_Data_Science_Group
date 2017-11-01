#rmarkdown::render('index.Rmd', 
#                  knitrBootstrap::bootstrap_document(
#                    "CUMC Data Science Homepage", 
#                    theme="Spacelab", highlight="Sunburst",
#                    theme.chooser=T,highlight.chooser = T, menu=T)
#                  )
rmarkdown::render('index.Rmd')
