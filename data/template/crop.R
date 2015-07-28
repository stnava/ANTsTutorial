
library(ANTsR)
mk=antsImageRead("/home/avants/PTBP_T1_Crop_Mask.nii.gz")
for ( x in Sys.glob("*nii.gz") ) 
  { 
  print(x)
  fim=antsImageRead( x ) 
  img=cropImage( fim, mk ) %>% iMath("PadImage",5)
  antsImageWrite( img, x ) 
  }

