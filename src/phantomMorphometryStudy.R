## ----setup,eval=TRUE,results='hide',warning=FALSE,echo=FALSE-------------
# set this for your own compilation
library(ANTsR)
bd="/home/socs/csuser74/ANTsTutorial/"
bd="/Users/stnava/data/ANTsTutorial/"
templatefn=paste(bd,"phantomData/phantomtemplate.jpg",sep='')
if ( ! file.exists(templatefn) )
  stop( paste( "no image", templatefn ) )
allfns=Sys.glob( paste(bd,"phantomData/ph*wmgm.jpg",sep='')  )
demog=read.csv(paste(bd,'phantomData/phantpredictors.csv',sep=''))
ilist=imageFileNames2ImageList( allfns )
sccansig=0

## ----pop,results='asis'--------------------------------------------------
plot( ilist[[1]], window.img=c(0,255) )

## ----pop2,results='asis'-------------------------------------------------
plot( ilist[[2]], window.img=c(0,255) )

## ----pop5,results='asis'-------------------------------------------------
plot( ilist[[5]], window.img=c(0,255) )

## ----pop6,results='asis'-------------------------------------------------
plot( ilist[[6]], window.img=c(0,255) )

## ----segment-------------------------------------------------------------
template=antsImageRead( templatefn )
ilist=imageFileNames2ImageList( allfns )
plist=imageFileNames2ImageList( allfns )
for ( x in 1:length(ilist) )
  {
  mask=getMask( ilist[[x]] )  %>% iMath("MD",1)
  img = ilist[[ x ]]
  km=kmeansSegmentation(  img, 3, mask ) # segment
  gm=km$probabilityimages[[2]]
  plist[[x]]=gm
  }

## ----segment1,echo=FALSE-------------------------------------------------
plot( ilist[[1]])

## ----segment1b,echo=FALSE------------------------------------------------
mask=getMask( ilist[[1]] )  %>% iMath("MD",1)
img = ilist[[ 1 ]]
km=kmeansSegmentation(  img, 3, mask ) # segment
plot( km$segmentation, window.img=c(0,3) )

## ----register------------------------------------------------------------
template=antsImageRead( templatefn )
jlist=imageFileNames2ImageList( allfns )
for ( x in 1:length(ilist) )
  {
  gm=plist[[x]]
  tx=antsRegistration( template, ilist[[x]], "SyNCC" )
  gmw=antsApplyTransforms( template, gm, tx$fwdtransforms)
  plist[[x]]=gmw
  jlist[[x]]=createJacobianDeterminantImage( template,
    tx$fwdtransforms[1], 1) %>% smoothImage(1.5)
  }

## ----templ,echo=FALSE----------------------------------------------------
plot( template )

## ----regtempl,echo=FALSE-------------------------------------------------
plot( tx$warpedmovout  )

## ----regtemplb,echo=FALSE------------------------------------------------
plot( template, tx$warpedmovout %>% iMath("Canny",1,5,12),
  window.overlay=c(0.5,1)  )

## ----logj,echo=FALSE-----------------------------------------------------
plot( jlist[[1]])

## ----logjb,echo=FALSE----------------------------------------------------
plot( jlist[[5]])

## ----demog,echo=FALSE----------------------------------------------------
knitr::kable(demog)

## ----jaclm---------------------------------------------------------------
templatemask=getMask( template )
jmat=imageListToMatrix( jlist, templatemask )
mdl=lm( jmat ~ vol + gender, data=demog )
mdl=bigLMStats( mdl )
volstats=mdl$beta.pval[ "vol", ]
qv=p.adjust(volstats,'BH')
qvimg=makeImage( templatemask, 1-qv )

## ----jaclmviz,echo=FALSE-------------------------------------------------
plot( template, qvimg, window.overlay=c(0.99,1))

## ----gmlm,echo=FALSE-----------------------------------------------------
gmat=imageListToMatrix( plist, templatemask )
mdl=lm( gmat ~ vol + gender, data=demog )
mdl=bigLMStats( mdl )
gmstats=mdl$beta.pval[ "vol", ]
gqv=p.adjust(gmstats,'BH')
gqvimg=makeImage( templatemask, 1-gqv )

## ----multivar,echo=TRUE,eval=TRUE,results='hide',warning=FALSE-----------
mypreds<-as.matrix( cbind( demog$vol*(-1), demog$vol*(-1) ) )
sccan<-sparseDecom2(
  inmatrix  = list( jmat, mypreds ),
  inmask    = c( templatemask , NA ) ,
  mycoption = 1,
  sparseness=c( 0.2, -1 ),
  nvecs=1, its=10,
  cthresh=c(10,0),
  smooth=0.0, perms=200 )
knitr::kable(sccan$ccasummary)
sccansol <- sccan$eig1[[1]] %>% iMath("Normalize")

## ----sccanviz,echo=FALSE,out.width='.6\\linewidth',message=FALSE,warning=FALSE,eval=TRUE----
plot( template, sccansol, window.overlay=c(0.1,1.01) )

## ----ch2-----------------------------------------------------------------
if ( ! exists("tem") )
  tem<-antsImageRead( getANTsRData("ch2") )

## ----defineclust---------------------------------------------------------
clust <- thresholdImage( tem, 82, 90 ) %>%
   iMath("ME",1)  %>% labelClusters()

## ----mymnidl,eval=TRUE---------------------------------------------------
if ( ! exists("mymni") ) {
# try getANTsRData if you have www access
  mymni<-list( antsImageRead(getANTsRData("mni") ),
               antsImageRead(getANTsRData("mnib") ),
               antsImageRead(getANTsRData("mnia") ) )
}

## ----mypair,eval=TRUE----------------------------------------------------
template_cluster_pair<-list(tem,clust)

## ----mymni,eval=TRUE-----------------------------------------------------
t1=Sys.time()
gcoords<-getTemplateCoordinates( template_cluster_pair ,
    mymni , convertToTal = TRUE )
t2=Sys.time()
print(t2-t1)

## ----repomni,echo=FALSE,eval=TRUE----------------------------------------
knitr::kable( gcoords$templatepoints  )

