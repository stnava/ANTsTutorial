library(rmarkdown)
fns=Sys.glob("src/*Rmd")
fns=c("./src/phantomMorphometryStudy.Rmd",
      "./src/rfLesionSeg.Rmd",
      "./src/ANTsR_Intro.Rmd")
rm(list = ls()) 
render( "./src/phantomMorphometryStudy.Rmd")
rm(list = ls())
render( "./src/rfLesionSeg.Rmd")
rm(list = ls())
render( "./src/ANTsR_Intro.Rmd")
rm(list = ls())
render( "./src/PTBP_Intro.Rmd")
