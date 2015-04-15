# ANTsTutorial
Guide to tutorial materials for ANTs/R


## Overview

The goal of this tutorial is to use ANTs and ANTsR to turn raw data
into clean data.

We will focus on pediatric brain magnetic resonance images available in the [PTBP](http://figshare.com/articles/The_Pediatric_Template_of_Brain_Perfusion_PTBP_/923555) and show how to:

* Organize and inspect the raw data and identify potential problem cases.

* Identify hypotheses and quantification targets, given our data.

* Develop a template construction procedure to address our hypotheses.

* Attach prior distributions to the template.

* Process the full data with ANTs pipelines.

* Extend the baseline processing to interpret auxiliary modalities.

* Perform univariate and multivariate statistical tests.

* Explore prediction algorithms based on imaging data.

Along the way, we will cover theoretical foundations as well as practical
insights arising from our experience with processing biological images
numbering from the tens to tens of thousands.

**Software dependencies**

[ANTs](http://stnava.github.io/ANTs/)

[ANTsR](http://stnava.github.io/ANTsR/)

[Camino](http://cmic.cs.ucl.ac.uk/camino/index.php?n=Tutorials.DTI)

[ITK-SNAP](http://www.itksnap.org/pmwiki/pmwiki.php)

The above tools depend on [R](http://cran.r-project.org), [cmake](http://www.cmake.org) and [java](https://java.com/).

Supported platforms include OSX and Linux variants.

These may work on windows but we do not regularly test there.
