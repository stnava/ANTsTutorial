library(rmarkdown)
fns=Sys.glob("src/*Rmd")
fns=c("./src/phantomMorphometryStudy.Rmd",
      "./src/rfLesionSeg.Rmd",
      "./src/ANTsR_Intro.Rmd")
rm(list = ls()) 
render( "./src/phantomMorphometryStudy.Rmd" , "pdf_document")
rm(list = ls())
render( "./src/rfLesionSeg.Rmd" ,"pdf_document")
rm(list = ls())
render( "./src/ANTsR_Intro.Rmd" ,"pdf_document")
