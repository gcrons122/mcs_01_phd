PhD Objective One, Year 1:  Analysis Plan and README file for GitHub


Analysis Plan Overview
1.	Objectives:
- Understand the relationship between ward-level greenspace and child developmental outcomes.
- Examine both the intercept and slope associations.
2.	Outcome Variables:
- 	SDQ (Strengths and Difficulties Questionnaire):
 - 	Use derived and raw forms across sweeps.
 - 	Perform necessary transformations (e.g., reversing scores, calculating Cronbach’s alpha).
o	Cognitive Assessment:
	Standardise scores to T-scores (mean = 50, SD = 10) for PCA and comparison.
	PCA and then standardise (mean = 100, SD =15)
3.	Exposure Variables:
o	Ward-Level Greenspace:
	Continuous scoring from ward-level deciles.
4.	Confounders:
o	Urbanicity/Rurality:
	Binary time-varying variable (urban = 0, rural = 1).
o	Environmental, family, and child-level variables:
	Air pollution (PM10), maternal education, poverty, family structure, homeownership, residential mobility, garden etc.
	Defined with clear coding and handling of missing values.
5.	Child-Level Variables:
o	Ethnicity, sex, and age are derived and used for all sweeps.



Methods: Sample Creation: 

Variables of Use 

Outcome Variables

Strength and Difficulties Questionnaire (SDQ) 

•	Using the SDQ to assess a child's emotional and behavioural difficulties. The SDQ covers a wide range of domains related to child mental health, including emotional symptoms, conduct problems, hyperactivity/inattention, peer relationship problems, and prosocial behaviour. 
•	Its brevity (25 items) makes it practical for use in large-scale studies, clinical settings, and longitudinal research like the Millennium Cohort Study. 
•	There is also a large variety of studies that use this, which makes it well-validated across various populations and settings, making it a reliable and comparable tool for assessing mental health in young children.  

My Use…

•	In the MSC data folders, SDQ is present in various forms, derived and not. I need both the derived for the analysis and the non-derived version, which is used to work out the Cronbach Alpha values (some of these variables are subsequently reversed so transformation is needed). 
•	Derived Forms: Sweep 2 – 5. Scored as 0 – 10, not applicable scored as -1 
o	mcs2_cm_derived.dta
	BEMOTION: DV SDQ Emotional Symptoms
	BCONDUCT: DV SDQ Conduct Problems
	BHYPER: DV SDQ Hyperactivity/Inattention
	BPEER: DV SDQ Peer Problems
o	mcs3_cm_derived.dta 
	CEMOTION: DV SDQ Emotional Symptoms 
	CCONDUCT: DV SDQ Conduct Problems 
	CHYPER: DV SDQ Hyperactivity/Inattention
	CPEER: DV SDQ Peer Problems
o	mcs4_cm_derived.dta
	DDEMOTION: DV SDQ Emotional Symptoms
	DDCONDUCT: DV SDQ Conduct Problems
	DDHYPER: DV SDQ Hyperactivity/Inattention
	DDPEER: DV SDQ Peer Problems
o	mcs5_cm_derived.dta (used . for missing data)
	EEMOTION: DV SDQ Emotional Symptoms
	ECONDUCT: DV SDQ Conduct Problems
	EHYPER: DV SDQ Hyperactivity/Inattention
	EPEER: DV SDQ Peer Problems

•	Non-derived forms Sweep 2 – 5. Not applicable is -1 and can’t say is 4. **NEEDS TO BE REVERESED 0 = Not true, 1 = Somewhat true, 2 = Certainly true
o	mcs2_parent_cm_interview.dta
	Peer Problems
•	BPSDSP00: Tends to play alone
•	BPSDGF00: Has at least one good friend**
•	BPSDLC00: Generally liked by other children**
•	BPSDPB00: CM picked on or bullied by other children
•	BPSDGB00: CM gets on better with adults than children
	Emotional Symptoms
•	BPSDHS00: Complains of headaches/stomach-aches/sickness
•	BPSDMW00: Often seems worried
•	BPSDUD00: Often unhappy
•	BPSDNC00: Nervous or clingy in new situations
•	BPSDFE00: CM has many fears, is easily scared
	Conduct Problems 
•	BPSDTT00: Often has temper tantrums
•	BPSDOR00: Generally obedient**
•	BPSDFB00: Fights with or bullies other children
•	BPSDCS00: Can be spiteful to others (unique to SW2)
•	BPSDOA00: Often argumentative with adults (unique to SW2)
	Hyperactivity/Inattention 
•	BPSDRO00: Restless, overactive, cannot stay still long 
•	BPSDFS00: Constantly fidgeting
•	BPSDDC00: Easily distracted
•	BPSDST00: Can stop and think before acting**
•	BPSDTE00: CM sees tasks through to the end**

o	mcs3_parent_cm_interview.dta
	Peer Problems Subscales 
•	CPSDSP00: CM is rather solitary, plays alone.
•	CPSDGF00: CM has at least one good friend**
•	CPSDLC00: CM generally liked by other children**
•	CPSDPB00: CM picked on or bullied by other children
•	CPSDGB00: CM gets on better with adults than children
	Emotional Symptoms Subscales 
•	CPSDHS00: CM often complains of headaches/sickness
•	CPSDMW00: CM has many worries, often seems worried
•	CPSDUD00: CM often unhappy, downhearted, tearful
•	CPSDNC00: CM nervous/clingy in new situations
•	CPSDFE00: CM has many fears, is easily scared
	Conduct Problems Subscales 
•	CPSDTT00: CM often has temper tantrums
•	CPSDOR00: CM is generally obedient**
•	CPSDFB00: CM fights with or bullies other children
•	CPSDOA00: CM often lies or cheats
•	CPSDCS00: CM steals from home, school, elsewhere
	Hyperactivity/Inattention 
•	CPSDRO00: CM is restless, overactive, cannot stay still
•	CPSDFS00: CM constantly fidgeting or squirming
•	CPSDDC00: CM is easily distracted, concentration wanders
•	CPSDST00: CM thinks things out before acting**
•	CPSDTE00: CM sees tasks through to the end**

o	mcs4_parent_cm_interview.dta
	Peer Problems Subscales 
•	DPSDSP00: CM is rather solitary, plays alone
•	DPSDGF00: CM has at least one good friend**
•	DPSDLC00: CM generally liked by other children**
•	DPSDPB00: CM picked on or bullied by other children
•	DPSDGB00: CM gets on better with adults than children
	Emotional Symptoms Subscales 
•	DPSDHS00: CM often complains of headaches/sickness
•	DPSDMW00: CM has many worries, often seems worried
•	DPSDUD00: CM often unhappy,downhearted, tearful
•	DPSDNC00: CM nervous/clingy in new situations
•	DPSDFE00: CM has many fears, is easily scared
	Conduct Problems Subscales 
•	DPSDTT00: CM often has temper tantrums
•	DPSDOR00: CM is generally obedient**
•	DPSDFB00: CM fights with or bullies other children
•	DPSDOA00: CM often lies or cheats
•	DPSDCS00: CM steals from home, school, elsewhere
	Hyperactivity/Inattention 
•	DPSDRO00: CM is restless, overactive, cannot stay still
•	DPSDFS00: CM constantly fidgeting or squirming
•	DPSDDC00: CM is easily distracted, concentration wanders
•	DPSDST00: CM thinks things out before acting**
•	DPSDTE00: CM sees tasks through to the end**

o	mcs5_parent_cm_interview.dta
	Peer Problems Subscales 
•	EPSDSP00: CM is rather solitary, plays alone
•	EPSDGF00: CM has at least one good friend**
•	EPSDLC00: CM generally liked by other children**
•	EPSDPB00: CM picked on or bullied by other children
•	EPSDGB00: CM gets on better with adults than children
	Emotional Symptoms Subscales 
•	EPSDHS00: CM often complains of headaches/sickness
•	EPSDMW00: CM has many worries, often seems worried
•	EPSDUD00: CM often unhappy, downhearted, tearful
•	EPSDNC00: CM nervous/clingy in new situations
•	EPSDFE00: CM has many fears, is easily scared
	Conduct Problems Subscales 
•	EPSDTT00: CM often has temper tantrums
•	EPSDOR00: CM is generally obedient**
•	EPSDFB00: CM fights with or bullies other children
•	EPSDOA00: CM often lies or cheats
•	EPSDCS00: CM steals from home, school, elsewhere
	Hyperactivity/Inattention 
•	EPSDRO00: CM is restless, overactive, cannot stay still
•	EPSDFS00: CM constantly fidgeting or squirming
•	EPSDDC00: CM is easily distracted, concentration wanders
•	EPSDST00: CM thinks things out before acting**
•	EPSDTE00: CM sees tasks through to the end**

Cognitive Assessment 

Sweep 2 --> mcs2_cm_cognitive_assessment.dta 

•	BDBAST00: DV BAS Naming Vocabulary - T-scores (-8,-7,-6,-1 = .)
•	BDSRCS00: DV Bracken: School Readiness Composite Standard Score (Mean = 100, SD = 15) (-7,-4,-3,-1 = .)

Sweep 3 --> mcs3_cm_cognitive_assessment.dta (missing defined as . )
•	CCNVTSCORE: COG: Naming Vocabulary T-score  
•	CCPCTSCORE: COG: Pattern Construction T-score   
•	CCPSTSCORE: COG: Pattern Construction T-score (Picture Similarity)

Sweep 4 --> mcs4_cm_cognitive_assessment.dta
•	DCPCTS00: S4 CM Pattern Construction age-based T-Scores (-1 =.)
•	DCWRSD00: S4 CM Word Reading Standard Score (Mean = 100, SD = 15) (-1 =.)
•	DCMATHS7SA: S4 CM Maths 7 Standard Score based on standardisation in 2004  (Mean = 100, SD = 15) (-1 =.)

Sweep 5 --> mcs5_cm_derived.dta 
•	EVSTSCO: S5 DV Verbal Sims standard score (Mean = 100, SD = 15) (-1 =.)
•	SWMTOTER: SWM Total errors (higher score = more errors, requires standardisation to Z score) (-9 =.) // issues may be found with this, so reverse it, previous studies have done cognitive ability at sweep 5 with only the verbal similarity. 


Variable Changes… 

We can convert all the variables to T-scores (mean = 50, SD = 10), this ensures all variables are on the same scale, allowing for fair comparison in PCA. 

SWMTOTER --> Z score --> T score 
EVSTSCO (already standardised mean 100 SD 15)  --> T score
DCMATHS7SA (already standardised mean 100 SD 15)  --> T score 
DCWRSD00 (already standardised mean 100 SD 15)  --> T score 
BDSRCS00(already standardised mean 100 SD 15)  --> T score


To conduct the PCA and transform the scores into an interpretable IQ-like scale, the process involves first running the PCA to extract the principal components (PCx) with an eigenvalue of 1 or more, which captures the most variance from the input variables. One should check both the scree plot and variance captured by the components. Once the PC scores are generated, standardise by converting them into z-scores, ensuring they have a mean of 0 and a standard deviation of 1. This step corrects any small deviations in the raw PCA scores and ensures consistency across sweeps. Finally, the z-scores are transformed into an IQ-like scale by multiplying by 15 (to set the standard deviation to 15) and adding 100 (to set the mean to 100). This process results in a transformed score that is easy to interpret, consistent with conventional scales, and comparable across sweeps or datasets.

///// CODE \\\\\

use mcs2_cm_cognitive_assessment.dta, clear

// BDBAST00 (already T-scores; no conversion needed)

// Convert BDSRCS00 (Mean = 100, SD = 15) 
egen mean_BDSRCS00 = mean(BDSRCS00) // need to generate a mean variable for whole variable 
egen sd_BDSRCS00 = sd(BDSRCS00) // need to generate a sd variable for whole variable
gen T_BDSRCS00 = 50 + ((BDSRCS00 - mean_BDSRCS00) / sd_BDSRCS00) * 10

save mcs2_cm_cognitive_assessment_scores.dta, replace

use mcs3_cm_cognitive_assessment.dta, clear // CCNVTSCORE, CCPCTSCORE, CCPSTSCORE (already T-scores; no conversion needed)

use mcs4_cm_cognitive_assessment.dta, clear

// DCPCTS00 (already T-scores; no conversion needed)

// Convert DCWRSD00 (Mean = 100, SD = 15)
egen mean_DCWRSD00 = mean(DCWRSD00) // need to generate a mean variable for whole variable 
egen sd_DCWRSD00 = sd(DCWRSD00) // need to generate a sd variable for whole variable 
gen T_DCWRSD00 = 50 + ((DCWRSD00 - mean_DCWRSD00) / sd_DCWRSD00) * 10

// Convert DCMATHS7SA (Mean = 100, SD = 15)
egen mean_DCMATHS7SA = mean(DCMATHS7SA) // need to generate a mean variable for whole variable 
egen sd_DCMATHS7SA = sd(DCMATHS7SA) // need to generate a sd variable for whole variable 
gen T_DCMATHS7SA = 50 + ((DCMATHS7SA - mean_DCMATHS7SA) / sd_DCMATHS7SA) * 10

save mcs4_cm_cognitive_assessment_tscores.dta, replace

use mcs5_cm_derived.dta, clear

// Convert EVSTSCO (Mean = 100, SD = 15)
egen mean_EVSTSCO = mean(EVSTSCO) // need to generate a mean variable for whole variable 
egen sd_EVSTSCO = sd(EVSTSCO) // need to generate a sd variable for whole variable 
gen T_EVSTSCO = 50 + ((EVSTSCO - mean_EVSTSCO) / sd_EVSTSCO) * 10

// Convert SWMTOTER (requires Z-score first)
egen mean_SWMTOTER = mean(SWMTOTER) // need to generate a mean variable for whole variable 
egen sd_SWMTOTER = sd(SWMTOTER) // need to generate a sd variable for whole variable 
gen Z_SWMTOTER = (SWMTOTER - mean_SWMTOTER) / sd_SWMTOTER // need to find z score first
gen T_SWMTOTER = 50 + (Z_SWMTOTER * 10) // z score to t score

save mcs5_cm_derived_tscores.dta, replace

// merge these individual sweeps

///// END CODE \\\\\

Exposure Variable 

Ward-Level Neighbourhood Greenspace 

Neighbourhood (ward) greenspace data were obtained from the Multiple Environmental Deprivation Index (MEDIx), which combines data from the Generalised Land Use Database (GLUD) and CORINE land cover data. Wards, typically with 5,500 residents, represent electoral divisions in the UK. GLUD categorises land use into nine categories, including greenspace, while CORINE focuses on larger green spaces, sensitive to areas over 1 hectare. MEDIx provides ward-level greenspace data in deciles, where 10 represents the most greenspace and 1 the least. This data has been linked to the Millennium Cohort Study (MCS), enabling integration of neighbourhood-level environmental data with individual-level MCS data, and has been used in several previous studies (Francesconi et al., 2022; Flouri et al., 2014; Mueller` & Flouri, 2021; https://cresh.org.uk/cresh-themes/green-spaces-and-
health/ward-level-green-space-estimates/).

•	green_space_ward_deciles_mcs2.dta
o	BGRND: Green space ward level deciles (1 missing = .)
o	Most deprived decile of greenspace = 1; least deprived decile of greenspace = 10 (1-10 scoring; 1 = low and 10 = high greenspace)
o	We will score on a continuous scale
•	green_space_ward_deciles_mcs3.dta
o	CGRND: Green space ward level deciles (1 missing = .)
o	Most deprived decile of greenspace = 1; least deprived decile of greenspace = 10 (1-10 scoring; 1 = low and 10 = high greenspace)
o	We will score on a continuous scale
•	green_space_ward_deciles_mcs4.dta
o	DGRND: Green space ward level deciles (2 missing = .)
o	Most deprived decile of greenspace = 1; least deprived decile of greenspace = 10 (1-10 scoring; 1 = low and 10 = high greenspace)
o	We will score on a continuous scale
•	green_space_ward_deciles_mcs5.dta
o	EGRND: Green space ward level deciles (7 missing = .)
o	Most deprived decile of greenspace = 1; least deprived decile of greenspace = 10 (1-10 scoring; 1 = low and 10 = high greenspace)
o	We will score on a continuous scale
 
Confounders 

Environmental Level 

Urbanicity/Rurality: Time-Varying 

The 2005 ONS Rural Urban Classification is a well-recognised and widely accepted framework for categorising areas in England and Wales. Using it ensures consistency with other research and policy analyses. Defining rural areas strictly as villages, hamlets, and isolated dwellings (codes 3 and 6) captures the essence of rurality: sparse populations, limited infrastructure, and greater remoteness. Grouping urban > 10k (codes 1 and 4) and towns and fringe areas (codes 2 and 5) as urban reflects their stronger connectivity, density, and access to services. By not classifying towns and fringe areas as rural, the definition avoids mislabelling regions with significant urban characteristics as rural, which can skew analyses or lead to less precise findings.

•	medix_deciles_mcs2.dta
o	BEWRURUR: 2005 ONS Rural Urban Classification 
	England and Wales Only – S and NI have their classifications
	(1) Urban > 10k – sparse; (4) Urban > 10k - less sparse; (2) Town and fringe – sparse; (5) Town and fringe - less sparse; (3) Village, hamlet and isolated dwellings – sparse and (6) Village, hamlet and isolated dwellings – less sparse
•	medix_deciles_mcs3.dta
o	CEWRURUR: 2005 ONS Rural Urban Classification
	England and Wales Only – S and NI have their classifications
	(1) Urban > 10k – sparse; (4) Urban > 10k - less sparse; (2) Town and fringe – sparse; (5) Town and fringe - less sparse; (3) Village, hamlet and isolated dwellings – sparse and (6) Village, hamlet and isolated dwellings – less sparse
•	medix_deciles_mcs4.dta
o	DEWRURUR: 2005 ONS Rural Urban Classification
	England and Wales Only – S and NI have their classifications
	(1) Urban > 10k – sparse; (4) Urban > 10k - less sparse; (2) Town and fringe – sparse; (5) Town and fringe - less sparse; (3) Village, hamlet and isolated dwellings – sparse and (6) Village, hamlet and isolated dwellings – less sparse
•	medix_deciles_mcs5.dta
o	EEWRURUR: 2005 ONS Rural Urban Classification
	England and Wales Only – S and NI have their classifications
	(1) Urban > 10k – sparse; (4) Urban > 10k - less sparse; (2) Town and fringe – sparse; (5) Town and fringe - less sparse; (3) Village, hamlet and isolated dwellings – sparse and (6) Village, hamlet and isolated dwellings – less sparse

How to create the time-varying urbanicity/rurality variable: 
•	A time-varying urbanicity/rurality variable where urban = 1 and rural = 0 
•	Urban defined as all but Village, hamlet and isolated dwellings – sparse and Village, hamlet and isolated dwellings – less sparse
•	This can be done in its own do file or within the working file


///// CODE \\\\\

use medix_deciles_mcs2.dta, clear
sort MCSID
merge 1:1 MCSID using medix_deciles_mcs3.dta
tab _merge // shows how observations matched between the datasets. 

merge 1:1 MCSID using medix_deciles_mcs4.dta
tab _merge // shows how observations matched between the datasets

merge 1:1 MCSID using medix_deciles_mcs5.dta
tab _merge // shows how observations matched between the datasets. 


// Create a binary variable for urban (0) and rural (1) SWEEP 2
gen urban_rural1 = .
replace urban_rural1 = 1 if BEWRURUR == 3 | BEWRURUR == 6  // Rural: Villages, hamlets, isolated dwellings 
replace urban_rural1 = 0 if BEWRURUR == 1 | BEWRURUR == 4 | BEWRURUR == 2 | BEWRURUR == 5  // Urban

// Define value labels
label define urban_lbl 1 "Urban" 0 "Rural"

// Assign value labels to the variable
label values urban_rural1 urban_lbl

// Check the distribution of the new variable
tabulate urban_rural1

// Create a binary variable for urban (0) and rural (1) SWEEP 3
gen urban_rural2 = .
replace urban_rural2 = 1 if CEWRURUR == 3 | CEWRURUR == 6  // Rural: Villages, hamlets, isolated dwellings
replace urban_rural2 = 0 if CEWRURUR == 1 | CEWRURUR == 4 | CEWRURUR == 2 | CEWRURUR == 5  // Urban

// Assign value labels to the variable
label values urban_rural2 urban_lbl


// Check the distribution of the new variable
tabulate urban_rural2

// Create a binary variable for urban (0) and rural (1) SWEEP 4
gen urban_rural3 = .
replace urban_rural3 = 1 if DEWRURUR == 3 | DEWRURUR == 6  // Rural: Villages, hamlets, isolated dwellings
replace urban_rural3 = 0 if DEWRURUR == 1 | DEWRURUR == 4 | DEWRURUR == 2 | DEWRURUR == 5 // Urban

// Assign value labels to the variable
label values urban_rural3 urban_lbl

// Check the distribution of the new variable
tabulate urban_rural3

// Create a binary variable for urban (0) and rural (1) SWEEP 5
gen urban_rural4 = .
replace urban_rural4 = 1 if EEWRURUR == 3 | EEWRURUR == 6  // Rural: Villages, hamlets, isolated dwellings
replace urban_rural4 = 0 if EEWRURUR == 1 | EEWRURUR == 4 | EEWRURUR == 2 | EEWRURUR == 5 // Urban

// Assign value labels to the variable
label values urban_rural4 urban_lbl

// Check the distribution of the new variable
tabulate urban_rural4

save mcs2_5_urban_rural_tv.dta, replace 

///// END CODE \\\\\



Air Pollution (PM10): Time-Varying 

In MEDIx, air pollution is measured with annual mean concentrations within each
2001 UK CAS ward of particulate matter (PM10), nitrogen dioxide (NO2), sulphur
dioxide (SO2), and carbon monoxide (CO). Means are population-weighted using
output area (OA) units and cover the years 1999-2003 except for CO, which covers
2001-2006. These data are taken from 1 km grids, modelled from National
Atmospheric Emissions Inventory data. The annual mean values have been
converted to deciles across all wards in the UK prior to linking them with MCS
sweeps 1 (age 9 months) and 2 (age 3 years). https://cresh.org.uk/cresh-themes/environmental-deprivation/medix-and-medclass/ ** note spelling of label is incorrect in dataset not my error. 

•	medix_deciles_mcs2.dta
o	CPWPM10D: Particularate matter (diameter < 10 microns) decile
o	Least Polluted Decile = 1 and Most Polluted Deciles = 10  
o	 We will score on a continuous scale 
•	medix_deciles_mcs3.dta
o	DPWPM10D: Particularate matter (diameter < 10 microns) decile
o	Least Polluted Decile = 1 and Most Polluted Deciles = 10  
o	 We will score on a continuous scale 
•	medix_deciles_mcs4.dta
o	EPWPM10D: Particularate matter (diameter < 10 microns) decile
o	Least Polluted Decile = 1 and Most Polluted Deciles = 10  
o	 We will score on a continuous scale 
•	medix_deciles_mcs5.dta
o	EPWPM10D: Particularate matter (diameter < 10 microns) decile 
o	Least Polluted Decile = 1 and Most Polluted Deciles = 10  
o	 We will score on a continuous scale 


Country CM living in

Country Living in (Sample derived solely from England Only, therefore we need to know which country CM1 lives in). We state that they have to be living in England across all the sweeps (SW2-5). Therefore, we need England only. 

•	green_space_ward_deciles_mcs2.dta
o	BACTRY00: ADMIN Country at interview (E,W,S,NI)   
o	England = 1; Wales =2; Scotland =3; and Northern Ireland = 4 
•	green_space_ward_deciles_mcs3.dta
o	CACTRY00: ADMIN Country at interview (E,W,S,NI)   
o	England = 1; Wales =2; Scotland =3; and Northern Ireland = 4 
•	green_space_ward_deciles_mcs4.dta
o	DACTRY00: ADMIN Country at interview (E,W,S,NI)   
o	England = 1; Wales =2; Scotland =3; and Northern Ireland = 4 
•	green_space_ward_deciles_mcs5.dta
o	EACTRY00: ADMIN Country at interview (E,W,S,NI)   
o	England = 1; Wales =2; Scotland =3; and Northern Ireland = 4


///// CODE \\\\\

use "mcs2_geographically_linked_data.dta", clear
sort MCSID
merge 1:1 MCSID using "mcs3_geographically_linked_data.dta"
tab _merge // shows how observations matched between the datasets
merge 1:1 MCSID using "mcs4_geographically_linked_data.dta"
tab _merge // shows how observations matched between the datasets

merge 1:1 MCSID using "mcs5_geographically_linked_data.dta”
tab _merge // shows how observations matched between the datasets


rename BACTRY00 Country1 //SWEEP2 
rename CACTRY00 Country2 //SWEEP3
rename DACTRY00 Country3 //SWEEP4
rename EACTRY00 Country4 //SWEEP5

** England = 1 | Wales = 2 | Scotland = 3 | NI =4 **

gen England =. 
replace England = 1 if Country1 ==1 & Country2 ==1 & Country3 ==1 & Country4 ==1 
tabulate England // check number of individuals living in England across sweeps 2 through to 5 continuously


///// END CODE \\\\\



Garden: Time-Varying 

The process of constructing the time-varying variable follows a series of logical sweeps designed to propagate the most recent valid response from a sequence of garden variables, which only asks if some has a garden under certain conditions (1) Just entered the sweep or (2) moved house. Therefore, the goal is to ensure that missing values (those who were not asked the question) are replaced with the last available valid data from previous time points. 

Missingness elaboration: it is crucial to understand that the missing data is not due to attrition (i.e., participants leaving the study) but rather due to non-response or refusal to answer at specific time points. The analytic sample used for this analysis is restricted to individuals who participated at each of the time points (S2-S5). Since participants needed to be present to have data on living in England at every time point to be included in the analytic sample, we can rule out the possibility of attrition (i.e., dropping out) as the cause of missing data.

mcs1_parent_interview.dta
•	APGDAC00: Has access to a garden (1 = Yes, sole use; 2 = Yes, shared and No = 3) (refusal to answer = -9, Don't Know = 4 and Not applicable = -1)

mcs2_parent_interview.dta
•	BPGDAC00: Has access to a garden (1 = Yes, sole use; 2 = Yes, shared and No = 3 and -1 = not applicable)

mcs3_parent_interview.dta
•	CPGDAC00: Has access to a garden (1 = Yes, sole use; 2 = Yes, shared and No = 3) (Refusal to answer = -9, Don't Know = -8 and Not applicable = -1)

mcs4_parent_interview.dta
•	DPGDAC00: Has access to a garden (1 = Yes, sole use; 2 = Yes, shared and No = 3) (Refusal to answer = -9, Don't Know = -8 and Not applicable = -1)

mcs5_parent_interview.dta
•	EPGDAC00: Has access to a garden (1 = Yes, sole use; 2 = Yes, shared and No = 3) (Refusal to answer = -9, Don't Know = -8 and Not applicable = -1)



///// CODE \\\\\

// The analysis relies on parent-level data, where MCSID serves as the unique identifier for each family and ELIG serves as identifier of main respondent (Main respondent =1) In this context, MCSID and ELIG acts as the primary identifiers. 

// Load in garden files:

// Sweep 1 
use mcs1_parent_interview.dta, clear

keep if AELIG00 ==1 

keep MCSID APGDAC00
rename APGDAC00 garden_s1

save sw1_garden.dta, replace 

// Sweep 2 
use mcs2_parent_interview.dta, clear

keep if BELIG00 ==1 

keep MCSID BPGDAC00
rename BPGDAC00 garden_s2
save sw2_garden.dta, replace 

// Sweep 3
use mcs3_parent_interview.dta, clear

keep if CELIG00 ==1 

keep MCSID CPGDAC00
rename CPGDAC00 garden_s3
save sw3_garden.dta, replace 

// Sweep 4
use mcs4_parent_interview.dta, clear

keep if DELIG00 ==1 

keep MCSID DPGDAC00
rename DPGDAC00 garden_s4
save sw4_garden.dta, replace 

// Sweep 5
use mcs5_parent_interview.dta, clear

keep if EELIG00 ==1 

keep MCSID EPGDAC00
rename EPGDAC00 garden_s5
save sw5_garden.dta, replace 

/// MERGE GARDENS 
use sw1_garden.dta, clear 

merge 1:1 MCSID using "sw2_garden.dta"
tab _merge // shows how observations matched between the datasets

merge 1:1 MCSID using "sw3_garden.dta" 
tab _merge // shows how observations matched between the datasets

merge 1:1 MCSID using "sw4_garden.dta"
tab _merge // shows how observations matched between the datasets

merge 1:1 MCSID using "sw5_garden.dta"
tab _merge // shows how observations matched between the datasets

/// Now merge the residential mobility
merge 1:1 MCSID using "sweep1_5move_variables.dta"

// Recode to make the missing values . for both garden and move
// Garden

recode garden_s1 (-1 -9 -8 =.)
recode garden_s2 (-1 -9 -8 =.)
recode garden_s3 (-1 -9 -8 =.)
recode garden_s4 (-1 -9 -8 =.)
recode garden_s5 (-1 -9 -8 =.)

// Begin to make a garden tv variable 
// Logical Steps to Construct the Garden Time-Varying Variable:
// Sweep 2: Carry forward from garden_s1 if garden_s2 is missing
gen garden_t2 = garden_s2
replace garden_t2 = garden_s1 if missing(garden_t2)

// Sweep 3: Carry forward from the last valid response (garden_s4, garden_t3, garden_t2, garden_s1)
gen garden_t3 = garden_s3
replace garden_t3 = garden_t2 if missing(garden_t3)
replace garden_t3 = garden_s1 if missing(garden_t3) & missing(garden_t2) 


// Sweep 4: Carry forward from the last valid response (garden_s4, garden_t3, garden_t2, garden_s1)
gen garden_t4 = garden_s4 
replace garden_t4 = garden_t3 if missing(garden_t4)
replace garden_t4 = garden_t2 if missing(garden_t4) & missing(garden_t3) 
replace garden_t4 = garden_s1 if missing(garden_t4) & missing(garden_t3) & missing(garden_t2)

// Sweep 5: Carry forward from the last valid response (garden_s5, garden_t4, garden_t3, garden_t2, garden_s1)
gen garden_t5 = garden_s5
replace garden_t5 = garden_t4 if missing(garden_t5)
replace garden_t5 = garden_t3 if missing(garden_t5) & missing(garden_t4)
replace garden_t5 = garden_t2 if missing(garden_t5) & missing(garden_t4) & missing(garden_t3)
replace garden_t5 = garden_s1 if missing(garden_t5) & missing(garden_t4) & missing(garden_t3) & missing(garden_t2)


// Check final distributions
tab garden_t2
tab garden_t3
tab garden_t4
tab garden_t5

label define garden_lbl 1 "Sole Access to a Garden" 2 "Shared Access to a Garden" 3 "No Access to a Garden"
label values garden_t2 garden_lbl
label values garden_t3 garden_lbl
label values garden_t4 garden_lbl
label values garden_t5 garden_lbl

keep MCSID garden_s1 garden_t2 garden_t3 garden_t4 garden_t5

save garden_time_varying.dta, replace

///// END CODE \\\\

 
Family Level Variables

Residential Mobility 

This variable focuses on understanding residential mobility by tracking movement across different sweeps of data. MCS has two distinct measures of mobility:

1.	"Did you move between Sweep X and Y?" This measure captures movement between adjacent sweeps.
2.	"Since the last interview" This captures movement since the previous interview, irrespective of whether it occurred in adjacent sweeps.

Given that there are multiple sweeps (S2, S3, S4, S5), it was important to carefully parametrise what we mean by "move" and determine how we could handle and control for different types of movement. The key to this process was ensuring that the data accurately reflects whether a participant moved between each sweep or since their last interview. 

For Sweep 2 (S2), we assumed no movement since this was baseline, marking everyone as "no movement." For Sweep 3 (S3), we used the already available data on movement between S2 and S3. However, sweeps 4 (S4) and 5 (S5) posed a challenge since the questions asked about moving "since the last interview," which didn’t specify exact time points. To handle this, we re-parameterised "last interview" by considering different scenarios movement between S3 and S4, S2 and S4 and S1 and S4. If we had a valid response for S3, we identified movement between S3 and S4; if not, we used S2 to estimate movement between S2 and S4 and so on. We applied the same logic to S5, ensuring that movement was captured as accurately as possible given the available information. We then used only those who had data between sweeps so we could accurately record between sweep movements, not a general movement. This approach allowed us to navigate the uncertainty in exact movement timing by making logical assumptions based on the structure of the data, providing the best estimate of mobility across the sweeps.

mcs2_family_derived.dta
•	BDRSMB12: Residential Mobility: Moved btw MCS1 and MCS2?  (-1 = not applicable; did not move = 0 and moved = 1) 

mcs3_family_derived.dta
•	CDRSMB23: Residential Mobility: Moved btw MCS2 and MCS3?  (-1 = not applicable; did not move = 0 and moved = 1) 
•	CDRSMB13: Residential Mobility: Moved btw MCS1 and MCS3?  (-1 = not applicable; did not move = 0 and moved = 1) 

mcs4_family_interview.dta
•	DHADSA00: Whether same address as at last interview (-8 = don’t know, yes (not moved = 1 and no (moved) = 2) 

mcs5_family_interview.dta
•	EHADSA00: Whether same address as at last interview (-8 = don’t know, yes (not moved = 1 and no (moved) = 2) 


///// CODE \\\\\

use mcs_longitudinal_family_file.dta, clear 

// Load Sweep 2 data as the base

merge 1:1 MCSID using mcs2_family_derived.dta

// Create an empty variable for SW2 mobility
gen moved_s2 = 0 // No movement by default (all values set to 0)

keep MCSID moved_s2 BDRSMB12

// Optionally, label the variable for clarity

// Merge Sweep 3 data
merge 1:1 MCSID using mcs3_family_derived.dta
rename _merge merge_s3

keep MCSID moved_s2 BDRSMB12 CDRSMB23 CDRSMB13

// Merge Sweep 4 data
merge 1:1 MCSID using mcs4_family_interview.dta
rename _merge merge_s4


keep MCSID moved_s2 BDRSMB12 CDRSMB23 CDRSMB13 DHADSA00

tabulate DHADSA00
rename DHADSA00 moved_s4_raw
recode moved_s4_raw (1 = 0) (2 = 1) (-1 -8 = .) // Harmonize codes for SW4 mobility

label variable moved_s4_raw  "Residential Mobility: Moved since last interview?"
label values moved_s4_raw moved_lbl // 1 = moved & 0 = didn't move 

tabulate moved_s4_raw


// Merge Sweep 5 data
merge 1:1 MCSID using mcs5_family_interview.dta
rename _merge merge_s5

keep MCSID moved_s2 BDRSMB12 CDRSMB23 CDRSMB13 moved_s4_raw EHADSA00
tabulate EHADSA00
rename EHADSA00 moved_s5_raw
recode moved_s5_raw (1 = 0) (2 = 1) (-1 -8 = .) // Harmonize codes for SW5 mobility

label variable moved_s5_raw  "Residential Mobility: Moved since last interview SW5?"
label values moved_s5_raw moved_lbl // 1 = moved & 0 = didn't move 

tabulate moved_s5_raw 

keep MCSID BDRSMB12 CDRSMB23 CDRSMB13 moved_s4_raw moved_s5_raw

order MCSID BDRSMB12 CDRSMB23 


// Step 1: Create the last_interview variable to track the most recent valid interview. The logic was that you can only accurately track moved since the last interview. Otherwise, there is variation between sweep 3, 4 and 5.

// Question: "Residential Mobility: Moved since last interview?" SWEEP 5.
// Creating a question "Residential Mobility: Moved since last interview, but interview is sweep 4.
// moved between sweep 4 and 5
gen sweep45 =. 
replace sweep45 = moved_s5_raw if !missing (moved_s4_raw) 

// moved between sweep 3 and 5, last interview was sweep 3. 
gen sweep35 =. 
replace sweep35 = moved_s5_raw if missing(moved_s4_raw) & !missing(CDRSMB23)

// moved between sweep 2 and 5, last interview was sweep 2.
gen sweep25 =. 
replace sweep25 = moved_s5_raw if missing(moved_s4_raw) & missing(CDRSMB23) & !missing(BDRSMB12)

// moved between sweep 3 and 4, last interview was sweep 3.
gen sweep34 =. 
replace sweep34 = moved_s4_raw if !missing(CDRSMB23) 

// moved between sweep 2 and 4, last interview was sweep 2.
gen sweep24 =. 
replace sweep24 = moved_s4_raw if missing(CDRSMB23) & !missing(BDRSMB12)


keep MCSID BDRSMB12 CDRSMB23 sweep34 sweep45 // these all represent those who moved between each sweep. So 1-2, 2-3, 3-4 and 4-5. 

// Save the dataset with mobility variables

save combined_mobility_sweeps_2to5.dta, replace

///// END CODE \\\\


Kessler 6

The maternal K6 score refers to the mother's score on the Kessler 6 (K6) scale, a widely used tool for measuring psychological distress. The K6 score is particularly valuable in the context of child development research, as maternal mental health is a key factor influencing parenting behaviours, the home environment, and ultimately, child outcomes.

mcs2_parent_derived.dta  BDKESS00: Kessler K6 Scale  Scores (0 – 24) (-1 = not applicable)

**** Main respondent is K6, this is the mother for the majority of cases, we made this assumption as previously done ****

Housing Tenure 

mcs2_family_derived.dta BDROOW00: DV Housing Tenure   (scored 0 – 10 for various outcomes including own outright to squatting.) (-1 = not applicable)


///// CODE \\\\\

// Create a binary variable for owns home (1) and does not own home (0) SWEEP 2
gen owns_home = . // . will now basically replace the -1
replace owns_home = 1 if BDROOW00== 1 | BDROOW00== 2 // owns outright and own- mortgage/loan
replace owns_home = 0 if BDROOW00== 3 | BDROOW00== 4 | BDROOW00== 5 | BDROOW00== 6 | BDROOW00== 7 | BDROOW00== 8 | BDROOW00== 9 | BDROOW00== 10 // does not own either outright or via mortgage/loan

///// END CODE \\\\\



Poverty Indicator 

mcs2_family_derived.dta  BDOEDP00: DV OECD below 60% median poverty indicator  

•	No changes needed for this variable bar the removal of -1 to . 
o	recode BDOEDP00 (-1 = .)
o	tabulate BDOEDP00, missing // check the data with the new . 
•	0 = Above 60% median and 1 = Below 60% median

Family Structure 

mcs2_family_derived.dta BDHTYP00: DV Parents/Carers in Household  
•	Not applicable = -1


///// CODE \\\\\

// Create a binary variable for owns home (1) and does not own home (0) SWEEP 2
gen two_natural_parents = . // . will now basically replace the -1
replace two_natural_parents = 1 if BDHTYP00== 1 // Both natural parents
replace two_natural_parents = 0 if BDHTYP00== 2 | BDHTYP00== 3 | BDHTYP00== 4 | BDHTYP00== 5 | BDHTYP00== 6 | BDHTYP00== 7 | BDHTYP00== 8 | BDHTYP00== 9 | BDHTYP00== 10 | BDHTYP00== 11 | BDHTYP00== 12 | BDHTYP00== 13 | BDHTYP00== 14 | BDHTYP00== 15 | BDHTYP00== 16 | BDHTYP00== 17 | BDHTYP00== 18 | BDHTYP00== 19  | BDHTYP00== 20 | BDHTYP00== 21  // doesn’t have two natural parents 

tabulate two_natural_parents

///// END CODE \\\\\


Maternal Education 

Including maternal education as a variable in your analysis is critical because it serves as a key proxy for socioeconomic status and influences multiple aspects of child development. Mothers often play a primary caregiving role, particularly in the early years, shaping the home environment, access to resources, and educational opportunities available to the child. Maternal education is strongly associated with parenting practices, including cognitive stimulation and emotional support, which are critical for child outcomes. Higher maternal education is linked to better mental and physical health outcomes for children, higher academic achievement, and better socio-emotional development. Moreover, understanding the role of maternal education in your analysis allows for the examination of how it interacts with greenspace exposure to influence child developmental trajectories. This ensures that potential confounding by maternal education is accounted for, leading to a more accurate estimation of the relationship between greenspace and child outcomes.

mcs1_parent_interview.dta
•	APACQU00: Highest academic qualification
o	Higher degree, first degree, Diplomas in higher education, A level, GCSEs, Other academic qualifications and None of these qualifications
o	Missing -9 = Refusal, -8 = Don't Know and -1 = Not applicable 


mcs2_parent_interview.dta

•	BPACQU00: Highest academic qualification
o	Higher degree, first degree, Diplomas in higher education, A level, GCSEs, Other academic qualifications and None of these qualifications
o	Missing -9 = Refusal, -8 = Don't Know and -1 = Not applicable 

Each individual in the dataset is uniquely identified by MCSID (family/household identifier) and PNUM (person identifier). To ensure continuity across sweeps, carry forward the value of education from Sweep 1 to Sweep 2 if the Sweep 2 value is missing. This derived variable will be named education_sweep2. 

**** Main respondent is K6, this is the mother for the majority of cases, we made this assumption as previously done ****



///// CODE \\\\\

use mcs1_parent_interview.dta, clear
merge 1:1 MCSID PNUM using mcs2_parent_interview.dta

// Use Sweep 2 value if available, otherwise carry forward Sweep 1 value
gen education_sweep2 = BPACQU00
replace education_sweep2 = APACQU00 if missing(BPACQU00)

// Verify the new variable
tabulate education_sweep2
///// END CODE \\\\\


 
Child Level Variables

Ethnicity 

Scored via the six-category census class. The first two sweeps were there to recruit as many participants as possible. Therefore, some individuals were only recruited at sweep 2; therefore, for ethnicity, both sweeps were used to develop a single Ethnicity variable. Totals should add up to 19244 (total number of families in the MCS, and we are using cm1). 
•	mcs1_cm_derived.dta
o	ADC06E00: DV Cohort Member Ethnic Group - 6 category Census class
•	mcs2_cm_derived.dta
o	BDC06E00: DV Cohort Member Ethnic Group - 6 category Census class

Sex

Therefore, some individuals were only recruited at sweep 2; therefore, for sex, both sweeps were used to develop a single-sex variable. Totals should add up to 19244 (total number of families in the MCS, and we are using cm1). 

•	mcs1_hhgrid.dta
o	AHCSEX00: Cohort Member Sex 
•	mcs2_hhgrid.dta
o	BHCSEX00: Cohort Member Sex

Age 

•	mcs2_hhgrid.dta

BHCAGE00: CM Age at interview (days) 

•	mcs3_hhgrid.dta

CHCAGE00: CM Age at interview (days)

•	mcs4_hhgrid.dta

DHCAGE00: CM Age at interview (days)

•	mcs5_hhgrid.dta

ECDBM0000: CM DOB (month)
ECDBY000:  CM DOB (year)

