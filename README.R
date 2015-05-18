library( ggplot2 )
library( shiny )
library( ggvis )
library( rmarkdown )
library( revealjs )

buildRmd <- 'antsMniBuild.Rmd'
rawRmds <- c( "src/PTBP_Intro.Rmd" )
rawRmds <- c( "antsMNI.Rmd","registration/registration.Rmd" )
# rawRmds <- c( "segmentation/segmentation.Rmd" )
# rawRmds <- c( "scripts/scripts.Rmd" )

for( x in 1:length( rawRmds ) )
  {
  if ( x == 1 )
    {
    cmd <- paste( "cat ", rawRmds[x], " > ", buildRmd )
    } else {
    cmd <- paste( "cat ", rawRmds[x], " >> ", buildRmd )
    }
  system( cmd )
  }

render( buildRmd,clean = TRUE, output_file = 'index.html' )
