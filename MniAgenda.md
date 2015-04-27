# ANTs tutorial / workshop at the Montreal Neurological Institute

## Overview
  * Cooking show format
  * Using data described [here](http://www.nature.com/articles/sdata20153)

## Other questions
  * What image viewer will be used?  Should we also install SNAP?
  *

-----------------------------------------------------------------

## Agenda

### May 19

| Time             |     Activity                              |
|:----------------:|-------------------------------------------|
|  9:00 - 10:00    | Introduction, set-up, and ANTs overview (Nick)  |
| 10:00 - 10:30    | Coffee and questions/discussion           |
| 10:30 - 11:30    | More ANTs overview (Nick)                 |
| 11:30 - 12:00    | Current research (Brian or Nick)          |
| 12:00 -  1:00    | Lunch and questions/discussion            |
|  1:00 -  2:00    | Template preparation for study (Nick)     |
|  2:00 -  2:30    | Coffee and questions/discussion           |
|  2:30 -  3:30    | Single subject data prep (Brian)          |
|  3:30 -  4:30    | Individual/group discussion               |

### May 20

| Time             |     Activity                         |
|:----------------:|--------------------------------------|
|  9:00 - 10:00    | Review of previous day (Nick)        |
| 10:00 - 10:30    | Coffee and questions/discussion      |
| 10:30 - 11:30    | Study setup and execution (Brian)    |
| 11:30 - 12:00    | Current research (Brian or Nick)     |
| 12:00 -  1:00    | Lunch and questions/discussion       |
|  1:00 -  2:00    | Study statistics & visualization I   |
|  2:00 -  2:30    | Coffee and questions/discussion      |
|  2:30 -  3:30    | Study statistics & visualization II  |
|  3:30 -  4:30    | Individual/group discussion          |

## Agenda details
  * Topics
  * questions to be addresed
  * time-specific notes

### May 19,  9:00 - 10:00 Introduction and set-up

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
        * antsSurf
        * antsAI
    * Core scripts
        * antsRegistrationSyN(Quick).sh
        * antsBrainExtraction.sh
        * antsAtroposN4.sh
        * antsCorticalThickness.sh
        * antsLongitudinalCorticalThickness.sh
        * buildtemplateparallel.sh/antsMultivariateTemplateConstruction.sh
        * antsMalfLabeling.sh

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

### May 19, 10:00 - 10:30 Coffee and questions/discussion

### May 19, 10:30 - 11:30 Study data and ANTsR overview

__Topics__

    * Data
        * Nature paper
        * figshare
        * data modifications for tutorial
    * ANTsR overview

__Questions to be addressed__


__Possible interactive activities__


### May 19, 1:00 - 2:00 Template data preparation for study

__Topics__

    * template building
    * mapping other modalities

__Questions to be addressed__

__Possible interactive activities__

    * Create a T1-weighted template
    * Create a multivariate template
    * Create a symmetric template
    * Create priors for the template
    * Create cortical labels for the template

### May 19, 2:30 - 3:30 Single subject data preparation for study

__Topics__

    * template building
    * mapping other modalities through the T1

__Questions to be addressed__

__Possible interactive activities__

    * Create a T1-weighted template
    * Create a multivariate template
    * Create a symmetric template
    * Create priors for the template
    * Create cortical labels for the template


### May 20,  9:00 - 10:00 Review of previous day

__Topics__

* XX

__Questions to be addressed__

__Possible interactive activities__
