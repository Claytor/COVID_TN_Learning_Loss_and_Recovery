# COVID: TN Learning Loss and Recovery

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

## ToDo

- [x] Reload Dataset

- [x] Merge Criteria Columns

- [x] Drop unneccesary columns (n_below, n_approaching, n_met_expectations, n_exceeded_expectations, pct_on_mastered etc.).

- [ ] Create pivot tables to perform impact/loss (pre, intra, post).

- [ ] Save Dataset as RDS

- [ ] See if you can find geospatial data for districts and if there are shapefiles available for poential map.

- [x] Develop Data Dictionary For reference

- [ ] Create Initial Shiny App

## Data Dictionary

| Term                  | Definition                                                                                                                                                                                                             |
| --------------------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| Below                 | Performance at this level demonstrates that the student has a minimal understanding and has a nominal ability to apply the grade/course-level knowledge and skills defined by the Tennessee Academic Standards         |
| Approaching           | Performance at this level demonstrates that the student is approaching understanding and has a partial ability to apply the grade/course-level knowledge and skills defined by the Tennessee Academic Standards.       |
| Met Expectations      | Performance at this level demonstrates that the student has a comprehensive understanding and has a thorough ability to apply the grade/course-level knowledge and skills defined by the Tennessee Academic Standards. |
| Exceeded Expectations | Performance at this level demonstrates that the student has an extensive understanding and has an expert ability to apply the grade/course-level knowledge and skills defined by the Tennessee Academic Standards.     |
| Met Exceeded          | The combination of Met Expectations and Exceeded Expectations.                                                                                                                                                         |

## Clatyor's Log

- **01/03/23**
  
  - I have a copy of all of my datasets.  I am looking at district-wide data from 2018 - 2022 am in in the process of merging them right now.  I had a chance to speak with Neda about my project.  She recommended that it would be a good idea to use my readme as a log of sorts.
  - Looks like I have some homework.  There are different titles for mastery criteria across datasets.   It appears as if some of the criteria for mastery have changed over the years.
  - Ill have to do some research to see if they are equivalent (Hopefully!)

- **01/04/23**
  
  - I need to find out how to merge the correct columns.
  - How do I find the Increases/Decreases year-over-year for each district?

- **01/05/23**
  
  - Michael reccomended that I use the "povit wider funciton"
  - Conference with Rohit.  Pretty chill dude -awesome hat.  I told him that the feature that I want the most (geospatial mapping for school districts) might be beyond the scope of this project -but would be friggin' sweet!  He said that I could ask for help if I got to that point.
  - Removed columns not needed for analysis (participation_rate, student_group, enrolled, tested, valid_tests)
  - Added code to group categorical testing data (grade, subject, test)
  - I made a google sheet to help track variables.  Still hunting down why the criteria categories 
  - **dadgumit!** There is no student subgroup information for the 2022 assessemnt.  I hope that this doesn't mean that I can show improvement for that year.

- **01/06/23**
  
  - Data.nashville.gov would be a good place to look for shapefiles.  gis data would be another great place.
  - Explored more info from categories.

- **01/07/23**
  
  - Figured out the mapping of categories.
    
    | Previous        | Current                   | Description                                                         |
    | --------------- | ------------------------- | ------------------------------------------------------------------- |
    | n_on_track      | n_met_expectations        | Number of Students who's scores met expected criteria               |
    | pct_on_track    | pct_met_expectations      | Percent of Students who's scores met expected criteria              |
    | n_mastered      | n_exceeded_expectations   | Number of Students who's scores exceeded expected criteria          |
    | pct_mastered    | pct_exceeded_expectations | Percent of Students who's scores exceeded expected criteria         |
    | pct_on_mastered | pct_met_exceeded          | Percent of Students who's scores met and exceeded expected criteria |
  
  - Merged all testing data so that previous is mapped to current for category names.
  
  - Also had to rename the student demographic columns.

- 01/10/23
  
  - Neda gave me some good ideas for finding a shape file boundaries.
    
    - [Geographic](https://nces.ed.gov/programs/edge/Geographic/DistrictBoundaries)
    
    - [School District Boundaries](https://www.census.gov/programs-surveys/sdrp/updates/school-district-boundaries.html)
    
    - [TIGER/Line Shapefile, 2019, Series Information for the Current Elementary School Districts State-based Shapefile - Catalog](https://catalog.data.gov/dataset/tiger-line-shapefile-2019-series-information-for-the-current-elementary-school-districts-state-)
  
  - I need to have my primary filters done tonight.  Although I would love to persue infomation about different demographics, The current project pacing dictates that I focus on the "All Students, All Tests" filter.  I still really want to find demographic statistics.  That might have to wait for another time. 
  
  - I removed student demographic information and focused on the aggregate statistics embedded in the dataset. 
  
  - I noticed that there were `*` and `**` in some fields.
    
    - The asterisks are values that are **suppressed**.
      
      - `*` = The number of **valid** test scores is less than 10.
      
      - `**` = Any individual proficiency level is <u>less than</u> **1%** or <u>greater than</u> **99%** at the district level.
  
  - It may be best for me to eliminate tests that have high levels of **suppression**
    
    - MSAA/Alt-Science/Social Studies
    
    - [x] I need to start here next time !!!

- 01/12/2023
  
  - When filtering for suppression, I found that 1010 observations were suppressed.
  
  - 204 Observations were suppressed for low numbers of valid scores.
  
  - Created filters for both kinds of suppression.
  
  - Began identifying categories that can be dropped from the dataset.
  
  - Tests that gotta go 

| Value | Column |
| ----- | ------ |
| MSAA  |        |
|       |        |
|       |        |
|       |        |