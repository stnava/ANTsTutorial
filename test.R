library(rmarkdown)
fns=Sys.glob("src/*Rmd")
fns=c(".//src/phantomMorphometryStudy.Rmd",
      ".//src/rfLesionSeg.Rmd")
for ( fn in fns )
  {
  render( fn ,"pdf_document")
  }
