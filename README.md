# COVID_TN_Learning_Loss_and_Recovery

## Executive Summary

Tennessee, student learning was significantly disrupted for the three academic semesters between the spring of 2020 and the spring of 2021.  An indicator of this disruption was evident by falling academic achievement assessment scores for the 2020-2021 school year.  When school reopened for the 2021- 2022 school year, districts were provided with increased guidance and funding for learning loss mitigation and learning acceleration interventions. When student achievement was assessed for that school year, TDOE reported that, statewide, students showed accelerated achievement assessment growth during the 2021-22 school year.  


However, in a state as geographically expansive as Tennessee, there may be some school districts whose rate of improvement, when compared to their previous performance, differed from that of the state as a whole.  I would like to highlight the hard work of each school district by measuring its rate of improvement relative to its own previous valid assessment results.  


I assume that a school district’s ROI has a positive relationship with the effectiveness of that district’s learning loss intervention strategies.  Indicating which school districts had the highest ROI may open dialogues between similar school districts to discuss best practices in intervention strategies for the benefit of continuing to accelerate student achievement metrics.

 
This project will use annual school district TnReady results datasets.  These datasets are provided  to the public by TDOE on their website.  I anticipate that merging several yearly district-wide reports would be challenging, especially if significant alignment/cleaning issues emerge.  I would like to highlight any interesting changes in outcomes for student  subpopulations included in the dataset where possible or appropriate.  However, student demographic information is not uniformly applied across all metrics by all districts.

  
Finally,  TnReady achievement data does not exist for the 2019 – 2020 school year.  The testing window was scheduled to occur between April 13th and May 8th of 2020.  However, due to rising infection rates, Governor Bill Lee publicly urged school districts to close on April 2nd 2020.  Following that announcement, on April 6th 2020,  executive order allowed for cancellation of TnReady assessments.  Student TnReady achievement data does not account for potential changes in achievement data that could have occurred that year.  Without that reference point, impact is measured by the differences between 2018 – 2019 and the 2020-2021 school year. It may remove some certainty when determining a more precise statement of impact. 

## Motivation

In Tennessee, student learning was significantly disrupted from the spring of 2019 through the spring of 2021 due to Coronavirus mitigation strategies and school closures. However, students returned to a relatively normalized education setting for the 2021 – 2022 school year.  The Tennessee Department of Education (TDOE) confirmed that students in Tennessee demonstrated declines in achievement indicators measured by both national-level norm-referenced (NAEP) and state-level criterion-referenced assessments (TCAP/TNReady).  


In its 2021 TCAP release,TDOE acknowledged state-level declines in achievement results and issued guidance for strategies to mitigate learning loss and accelerate academic achievement.  The following year, in its 2022 TCAP Release, TDOE reported that state-wide learning acceleration efforts had led to significant achievement growth and, on some metrics, reduced learning loss to pre-pandemic levels (e.g. english language arts).

However, these data reports describe the state as a whole and do not specifically account for efforts of its constituent education districts.  I am interested in exploring the learning loss impact and recovery ROI for individual education districts.
Data Question

Given a district’s loss of learning impact compared to its previous pre-pandemic TNReady assessments, what was the rate of improvement given learning loss interventions? 

TDOE state-wide TCAP relases have thoroughly explored the impact of the Coronavirus pandemic on TnReady performance metrics across a broad range of grades, content areas, and demographics.  However, they do not address those same metrics at the district level.  Though the data to explore district-level learning loss and recovery rates exist, and is publicly available, analysis of education district level data has not been published by TDOE.

## Minimum Viable Product (MVP)

I would like the minimum viable product to be a reactive dashboard visualization tool that would allow parents, educators, administrators, and policy makers to:
    • Explore changes in achievement metrics before, during, and after the onset of the Coronavirus pandemic to help conceptualize an individual district’s learning loss impact and recovery.
    • Functionality for users to compare improvement metrics across districts.
    • Functionality to explore how certain student demographics were impacted by learning loss and recovery efforts.
The project will include reactive visualizations such bar charts and line plots. I’d also like to include widgets for descriptive statistics tables and comparisons across districts.

## Schedule (through 1/21/2023)

    1. Get the Data (12/16/2022)
    2. Clean & Explore the Data (12/23/2022)
    3. Create Presentation and Shiny App (1/13/23)
    4. Internal Demos (1/17/2023)
    5. Midcourse Project Presentations (1/23/2023)

## Data Sources

The data are publicly available and obtained from the Tennessee Department of Education.  They represent and represent both state and district-wide TnReady assessment data for the years being considered.

## Known Issues and Challenges

At the current time, my known issues are aligning disparate datasets, Determining which demographic data it would be possible to use for analysis.  The first issue can be managed by carefully applying data cleaning skills learned in class and reaching out for consultation and verification.  The second issue could be addressed during exploratory data analysis to determine in which context their use would be appropriate.

## Clatyor's Log
- 01/03/23
  - I have a copy of all of my datasets.  I am looking at district-wide data from 2018 - 2022 am in in the process of merging them right now.  I had a chance to speak with Neda about my project.  She recommended that it would be a good idea to use my readme as a log of sorts.
  - Looks like I have some homework.  There are different titles for mastery criteria across datasets.   It appears as if some of the criteria for mastery have changed over the years.
  - Ill have to do some research to see if they are equivalent (Hopefully!)
