library( ggplot2 )
library( shiny )
library( ggvis )
library( rmarkdown )
library( revealjs )

buildRmd <- 'antsMniBuild.Rmd'
rawRmds <- c( "antsMni.Rmd" )

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

render( buildRmd, clean = TRUE, "revealjs::revealjs_presentation", output_file = 'index.html' )
