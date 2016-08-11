# ANTs tutorial / workshop at MD Anderson: Aug 11-12, 2016

## Overview
  * Discussion and demonstration format:
      * We would like to promote as much interaction as possible.
      * The content can easily be adapted "on the fly" depending on audience
      interest and participation.
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
  * Elderly subject data [here](https://github.com/stnava/petSUVR/elderly)

-----------------------------------------------------------------

## Agenda

### August 11

Day 1: The ANTs framework for adaptable registration and segmentation

| Time             |     Activity                              | Presenter| Notes |
|:----------------:|-------------------------------------------|----------|-------|
|  9:00 - 9:15     | Setup      | NT | --|
|  9:15 - 10:00    | Overview of 2014 Nimg paper     | NT | see [associated paper](http://www.ncbi.nlm.nih.gov/pubmed/24879923) |
| 10:00 - 10:30    | Coffee and questions/discussion           | -- | -- |
| 10:30 - 12:00    | ANTs Registration                     | BA | define transforms, metrics, connect to cars, [C](https://github.com/stnava/C), [chicken](https://github.com/stnava/chicken) |
| 12:00 -  1:00    | Lunch and questions/discussion            | -- | -- |
|  1:00 -  2:00    | Template building and **mapping multiple modalities** (MMM) | NT | github examples, antsmultimodality, and applying transforms to other modalities (maybe use PTBP full MM subject as example or the petSUVR example below)|
|  2:00 -  2:30    | Coffee and questions/discussion           | -- | -- |
|  2:30 -  3:00    | PTBP and Joint Label Fusion / building priors              | BA | [Joint Label Fusion (JLF)](https://github.com/stnava/ANTsTutorial/blob/master/src/PTBP_Intro.Rmd) |
|  3:00 -  3:30    | ANTs Segmentation: [Atropos](https://github.com/ntustison/antsAtroposN4Example), [2nd JLF example](https://github.com/ntustison/MalfLabelingExample), [Multi-Resolution Voxelwise Neighborhood Random Forest (MRVNRF)/rfLesionSeg](https://github.com/stnava/ANTsR/blob/master/vignettes/rfLesionSeg.Rmd) | BA + NT | setup research talk (if needed), perhaps use PTBP_Intro  |
|  3:30 -  4:00    | Research topics and/or discussion         | NT | continue segmentation discussion here: stroke, [tumor](https://github.com/ntustison/BRATS2013/tree/master/SimpleExample), [WMH](https://github.com/ntustison/WatchMeHyperventilate)? |

### August 12

Day 2: The ANTsR framework for multivariate statistics and prediction

| Time             |     Activity                         |Presenter| Notes |
|:----------------:|--------------------------------------|----|-------|
|  9:00 - 10:00    | Review of previous day, address questions, intro ANTsR | NT + BA | modify as needed |
| 10:00 - 10:30    | Coffee and questions/discussion      | -- | -- |
| 10:30 - 11:00    | Visualization of surfaces or volumes | NT | antsSurf, antsVol, CreateTiledMosaic, [plot.antsImage](https://github.com/stnava/ANTsR/blob/master/man/plot.antsImage.Rd)  |
| 11:00 - 12:00    | Let's perform a ["real study"](https://github.com/stnava/ANTsTutorial/blob/master/src/phantomMorphometryStudy.Rmd)         | BA | PTBP and [VBM](https://github.com/stnava/ANTsTutorial/blob/master/src/PTBP_VBM2.Rmd) results |
| 12:00 -  1:00    | Lunch and questions/discussion       | -- | -- |
|  1:00 -  2:00    | Dimensionality reduction in ANTsR | BA | [Eigenanatomy](https://github.com/stnava/ANTsTutorial/blob/master/src/PTBP_Eanat.Rmd) - could do ICA/[blindsource](https://github.com/stnava/blindSourceSeparationInANTsR) |
|  2:00 -  2:30    | Coffee and questions/discussion      | -- | -- |
|  2:30 -  3:00    | **Prediction & visualization**       | NT | *BrainAge* ... Multiple modality age/cog prediction in PTBP |
|  3:00 -  4:00    | Individual/group discussion          | NT + BA | review, prepare for after party? |


**Backup topics**

* [The ANTsR manual](https://github.com/stnava/ANTsR/releases)
* [ANTsR vignettes](https://github.com/stnava/ANTsR/tree/master/vignettes)
* [Anything from the FAQ pages](https://github.com/stnava/ANTsTutorial/blob/master/handout/antsGithubExamples.Rmd)
* [Amyloid PET with ANTsR](https://github.com/stnava/petSUVR)
* [Resting State fMRI processing with ANTsR](https://github.com/stnava/ANTsR/vignettes/RestingBOLD.Rmd) and/or PTBP_RSF
* [ASL to CBF](https://github.com/stnava/antsASLProcessing)
* Explore the MMM subject: process each modality ....
* Longitudinal prediction/visualization (more complex .... probably not in this tutorial!) but we
could discuss recent work on predicting cognitive change from baseline data.
* Revisit relevant components of RMI.

**TODO**

* BA: antsRegistration (should be fun): generality (species, organs), priors, framework, command line

* BA: rsf examples (briefly: alff, correlations, motion, nuisance) + get data!

* BA: test ASL example and add data

* BA: dimRed examples (use basic presentation, then follow with ANTsR examples, take some content from RMI)

* BA: brainAge implementation across modalities with and without sparseness

* BA: process the MMM subject in ANTsR


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
