# ANTsTutorial
Guide to tutorial materials for ANTs/R/py

## Overview

The goal of this tutorial is to preview ANTs, ANTsR *or* ANTsPy.  We have fairly limited time so will have to restrict to:

* Q/A session
* running some github examples using core C++/bash ANTs
* poking around some of the new ANTsX environments where X=py or X=R .

The "home" for ANTs tutorial material is [here](https://github.com/stnava/ANTsTutorial) but, honestly, there is tons of information spread across many places.  I will try to index the main locations below.

## Installation


### ANTs:  The core C++ tools scripts

This should work on OSX, LINUX and majority of Windows variants ( in particular
any that have LINUX subsystems ).

General instructions are below:

  * [OSX or linux](https://github.com/ANTsX/ANTs/wiki/Compiling-ANTs-on-Linux-and-Mac-OS)

  * [windows with linux subsystem](https://github.com/ANTsX/ANTs/wiki/Compiling-ANTs-on-Windows-10)

  * [other windows users](https://github.com/ANTsX/ANTs/issues/196) - probably out of date

Tutorial topics that can use proper ANTs installs:

* [https://stnava.github.io/fMRIANTs/](https://stnava.github.io/fMRIANTs/) - not recommended but shows some basic stuff and hints at 4D registration possibilities.

* overview collection of programs described in latter parts of the [ants handout](https://github.com/stnava/ANTsTutorial/blob/master/handout/antsHandout.pdf)

* our collection of github examples described here in the section called "Learning about ANTs": [https://github.com/ANTsX/ANTs](https://github.com/ANTsX/ANTs)

* General comments on [registration](
https://rpubs.com/antsr/registrationIntro)


### ANTsR: Thin R-wrappers over C++ in addition to statistical methods

To install:

* see the releases on [github](https://github.com/ANTsX/ANTsR/releases) - these will not work on windows - only OSX and LINUX

* see **source** install instructions [here](https://github.com/ANTsX/ANTsR/) and also [here](https://github.com/ANTsX/ANTsR/wiki/Installing-ANTsR-in-Windows-10-(along-with-FSL,-Rstudio,-Freesurfer,-etc).) for windows with linux subsystems

* the "easiest" (but slowest) installation is through devtools.

To **try out ANTsR** without much work (sign in via google), visit the [cloud version](https://rstudio.cloud/project/38492) ( very limited memory ) and do:

```
.libPaths('/cloud/project/RL/')
library(ANTsR)
?plot.antsImage
?antsRegistration
```

There, we can run the vignettes, look at help and try quick examples.

Many ANTsR examples are also [here](https://rpubs.com/antsr)

* [fmri tutorial](https://github.com/ntustison/ANTsRfMRITutorial/blob/master/tutorial.pdf) - these are constantly evolving with data types and such.

* there is HCP example data [here](https://figshare.com/articles/hcpLSDataANTs/6399935) that matches what is needed for these fMRI illustrations:
    * [https://stnava.github.io/distortionCorrectionWithANTs/](https://stnava.github.io/distortionCorrectionWithANTs/)
    * [https://stnava.github.io/structuralFunctionalJointRegistration/](https://stnava.github.io/structuralFunctionalJointRegistration/)
    * [
https://antsx.github.io/ANTsR/articles/RestingBOLD.html](
https://antsx.github.io/ANTsR/articles/RestingBOLD.html)


### ANTsPy: Thin python wrappers over C++ in addition to statistical methods

ANTsPy is very closely tied to ANTsR. We believe that, in the relatively near future, much of R will be translatable into python and vice versa ( see the `reticulate` package ).  The syntax/style is pythonic but the design mimics ANTsR and tries to be consistent, when it makes sense to do so.

Installation instructions are [here](https://github.com/ANTsX/ANTsPy#installation)

OSX releases are very up to date but LINUX users may need to install an older release version.  Then we can play with [this ipython notebook](https://github.com/ANTsX/ANTsPy/blob/master/tutorials/10minTutorial.ipynb) and poke around the `ants.plot...` functionality.


### Other information

We can also play around with pediatric brain magnetic resonance images available in the [PTBP](http://figshare.com/articles/The_Pediatric_Template_of_Brain_Perfusion_PTBP_/923555).  With any of the above (ANTs, ANTsR, ANTsPy), we can show how to:

* Organize and inspect the raw data and identify potential problem cases.

* Identify hypotheses and quantification targets, given our data.

* Develop a template construction procedure to address our hypotheses.

* Attach prior distributions to the template.

* Process the full data with ANTs pipelines.

* Extend the baseline processing to interpret auxiliary modalities.

* Perform univariate and multivariate statistical tests.

* Explore prediction algorithms based on imaging data.


**Other Data sources**

A complete multi-modality subject http://files.figshare.com/1701182/PEDS012_20131101.zip

PTBP demographics [here](https://ndownloader.figshare.com/files/1699436)

PTBP tutorial data [here](https://www.dropbox.com/s/5p0vlx8en9uzbge/ ants_tutorial_data.zip?dl=1)

Elderly subject data [here](https://figshare.com/articles/hcpLSDataANTs/6399935)

**Software dependencies**

Core: [ANTs](http://stnava.github.io/ANTs/), [ITKR](http://stnava.github.io/ITKR/),  [ANTsR](http://stnava.github.io/ANTsR/)

Suggested: [Camino](http://cmic.cs.ucl.ac.uk/camino/index.php?n=Tutorials.DTI), [ITK-SNAP](http://www.itksnap.org/pmwiki/pmwiki.php)

The above tools depend on [R](http://cran.r-project.org), [cmake](http://www.cmake.org) and [java](https://java.com/).

Supported platforms include OSX and Linux variants.

These may work on windows but we do not regularly test there.
