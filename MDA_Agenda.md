# ANTs tutorial / workshop at MD Anderson: Aug 11-12, 2016

## Overview
  * Cooking show format
  * Using data described [here](http://www.nature.com/articles/sdata20153)
  * Supplemented with a couple of elderly subject datasets.

## Software

  * [ANTs](http://stnava.github.io/ANTs/)
  * [ITKR](http://stnava.github.io/ITKR/)
  * [ANTsR](http://stnava.github.io/ANTsR/)

The above tools depend on [R](http://cran.r-project.org) and [cmake](http://www.cmake.org).

Supported platforms include OSX and Linux variants.  These may work on windows but no promises.

## Visualization

  * [ITK-snap](http://www.itksnap.org/pmwiki/pmwiki.php) for images
  * [Rstudio](https://www.rstudio.com) for statistics and plotting

  * ANTs programs
      * [antsSurf](https://github.com/stnava/antsSurf) for surfaces
      * [antsVol](https://github.com/ntustison/antsVisualizationExamples) for rendering
      * [CreateTiledMosaic](https://github.com/ntustison/antsVisualizationExamples) for mosaic rendering

## Datasets

  * A complete multi-modality subject http://files.figshare.com/1701182/PEDS012_20131101.zip
  * PTBP demographics [here](https://ndownloader.figshare.com/files/1699436)
  * PTBP tutorial data [here](https://www.dropbox.com/s/5p0vlx8en9uzbge/ ants_tutorial_data.zip?dl=1)
  * Elderly subject data [here (FIXME)](notyet)

-----------------------------------------------------------------

## Agenda

### August 11

Day 1: The ANTs framework for adaptable registration and segmentation

| Time             |     Activity                              | Presenter| Notes |
|:----------------:|-------------------------------------------|----------|-------|
|  9:00 - 10:00    | Overview of tools and 2014 Nimg paper     | NT | see [associated paper](http://www.ncbi.nlm.nih.gov/pubmed/24879923) |
| 10:00 - 10:30    | Coffee and questions/discussion           | -- | -- |
| 10:30 - 12:00    | ANTs Registration                         | BA | define transforms, metrics, connect to cars, C, chicken, wiki?  base off of WBIR_2012.key? |
| 12:00 -  1:00    | Lunch and questions/discussion            | -- | -- |
|  1:00 -  2:00    | Template building and mapping multiple modalities (MMM) | NT | github examples, antsmultimodality, and applying transforms to other modalities |
|  2:00 -  2:30    | Coffee and questions/discussion           | -- | -- |
|  2:30 -  3:30    | ANTs Segmentation: JLF, MRVRNF, etc       | BA + NT | could be research related, MRVNRF, [rfLesionSeg.Rmd](https://github.com/stnava/ANTsR/blob/master/vignettes/rfLesionSeg.Rmd), WMH? |
|  3:30 -  4:00    | Research topics and/or discussion         | NT | context dependent, or resting state e.g. RestingBold.Rmd |

### August 12

Day 2: The ANTsR framework for multivariate statistics and prediction

| Time             |     Activity                         |Presenter| Notes |
|:----------------:|--------------------------------------|----|-------|
|  9:00 - 10:00    | Review of previous day and address questions | NT + BA | modify as needed |
| 10:00 - 10:30    | Coffee and questions/discussion      | -- | -- |
| 10:30 - 11:00    | Visualization of surfaces or volumes | NT | antsSurf, antsVol, CreateTiledMosaic, `plot.antsImage`  |
| 11:00 - 12:00    | Let's perform a "real study"         | BA | PTBP and VBM results |
| 12:00 -  1:00    | Lunch and questions/discussion       | -- | -- |
|  1:00 -  2:00    | Dimensionality reduction in ANTsR    | BA | or maybe something else here, perhaps keep this slot flexible - could do ICA/[blindsource](https://github.com/stnava/blindSourceSeparationInANTsR) |
|  2:00 -  2:30    | Coffee and questions/discussion      | ?? | -- |
|  2:30 -  3:00    | Prediction & visualization           | NT + BA | Multiple modality age/cog prediction in PTBP |
|  3:00 -  4:00    | Individual/group discussion          | NT + BA | review, prepare for after party? |

### August 11:  The ANTs framework for adaptable registration and segmentation

__Topics__

    * ANTs history & philosophy
        * ANTs origins in SyN
        * collaborators
        * open source and reproducibility
        * competition history
    * Development and interface with the user community
        * ITK
        * Github
        * sourceforge and github help forum
        * documentation
    * ANTs command line
    * Dependencies
        * CMake
        * ITK
        * VTK
    * Core programs
        * antsRegistration
        * Atropos
        * N4/N3*
        * KK
        * ImageMath
        * antsSurf/antsVol
        * antsAI
        * antsJointFusion
    * Core scripts
        * antsRegistrationSyN(Quick).sh
        * antsBrainExtraction.sh
        * antsAtroposN4.sh
        * antsCorticalThickness.sh
        * buildtemplateparallel.sh/antsMultivariateTemplateConstruction.sh
        * antsJointLabelFusion.sh
    * Data
        * Nature paper
        * figshare
        * data modifications for tutorial
    * ANTsR overview
    * template building
    * mapping other modalities
    * template building
    * mapping other modalities through the T1

__Questions to be addressed__

    * What is the history of ANTs/ANTsR?
    * Where can I download ANTs/ANTsR?
    * How do I install ANTs/ANTsR on my machine?
    * Who are the ANTs/ANTsR developers and contributors?
    * Where can I get help for problems with ANTs/ANTsR?
    * Can I contribute to ANTs/ANTsR?
    * How is ITK related to ANTs?
    * Where can I find ANTs documentation?
    * What is ANTSPATH?
    * What does ANTs not do?  (Motivate the use of ANTsR)


__Possible interactive activities__


    * Explore ANTs directory structure
    * Explore ANTs sourceforge/Github forum
    * Look at ITK doxygen
    * Update the ANTs and ANTsR repository
    * Set up ANTSPATH
    * Run r16/r85 registration
    * Create a T1-weighted template
    * Create a multivariate template
    * Create a symmetric template
    * Create priors for the template
    * Create cortical labels for the template
    * Apply priors to new data


### August 12: Multivariate statistics, visualization and prediction

__Topics__

* We will first refresh topics from day one and cover material that we missed.

* We will also refine day 2 material given the feedback from day 1.

* Statistical analyses with ANTs and ANTsR

__Questions to be addressed__

* How do I compute population statistics with ANTs data?

* How do I visualize statistical results?

* How do I perform predictive studies?  E.g. compute brainAge?

__Possible interactive activities__

* See: [ANTsTutorial](https://github.com/stnava/ANTsTutorial) for an overview of material.

    * ANTsR VBM

    * ANTsR brainAge

    * ANTsR dimensionality reduction

* See the examples [here](https://github.com/stnava/ANTsTutorial/blob/master/handout/antsGithubExamples.Rmd).
