# arthurbarbaroexarlavelle_env872_eda_finalproject

Spring 2023 EDA Final Project: Coastal Flooding, Hurricanes, and Demographics in Carteret County, North Carolina

## Summary

This repository exists for the purpose of a final group project for an environmental data analytics graduate course (ENV 872) at the Nicholas School at Duke University. It contains US Census Data from the American Community Suvey 2021 and FEMA National Risk Index Natural Hazard Data for Carteret County, North Carolina at the census tract level.

The goal of this project and this repository is to analyze the correlation between different demographic characteristics and annualized frequency of coastal flooding and hurricanes in Carteret County, North Carolina. 

## Investigators

Maeve Arthur, Duke Univeristy NSOE MEM Student
Allison Barbaro, Duke University NSOE MEM Student
Laura Exar, Duke University NSOE MEM Student 
Aileen Lavelle, Duke University NSOE MEM Student 

## Keywords

North Carolina, Hurricanes, Coastal Flooding, Environmental Justice, Carteret County

## Database Information

Data was retrieved on 4/14/23 from the US Census (ACS 2021 5yr Estimates), and the FEMA NRI database for Carteret County, NC. Data was wrangled by all listed investigators and placed into the "Processed" folder.


## Folder structure, file formats, and naming conventions 

This repository contains the folders Code, Data, and Output. The Data folder contains Raw, Processed, and Metadata folders. All data is in .csv or shapefile formats. All code is in .Rmd format. 


## Metadata

Raw Data:

Carteret_tracts:
ACS_education:
ACSDP5Y2021.DP05-race-age-sex:
ACSST5Y2021.poverty:
ACSST5Y2021.S1501-2023-04-20T120427: 
NRI_Table_CensusTracts_NorthCarolina:

Processed Data:
Census Data:
- "Carteret.age.sex.percent.csv"
- "Carteret.education.percent.belowpoverty.csv"
- "Carteret.race.percent.csv"
- "Carteret.age.sex.csv"
- "Carteret.belowpoverty.csv"
- "Carteret.education.csv"
- "Carteret.employment.csv"
- "Carteret.employment.percent.belowpoverty.csv"
- "Carteret.poverty.csv"
- "Carteret.poverty.percent.csv"
- "Carteret.race.csv"
- "Carteret.race.percent.csv"

All of the files listed above contain American Community Survey 5 Year Estimates data from 2021 from the US Census. Each file is for Carteret county, NC and is organized by census tract. The title of each spreadsheet alludes to the data contained in further columns. These files contain data on age, sex, race, poverty status, education attainment status, and employment status. The files with "percent" in the name are only percentages of each demographic characteristic by tract. The files without "percent" in the name contain rows of total estimate (# of people) and percentage by census tract. 

FEMA Data:
-"Carteret_Flooding_Processed.csv"
-"Carteret_Hurricanes_Processed.csv"

These files contain hazard data from FEMA for Carteret County, NC. These files contain census tracts and their corresponding annualized frequency of flooding and hurricanes, respectively. 

Spatial Data:
- "Carteret_county_bytract.csv"
- "Carteret_tracts.dbf, .prj, .shp, .shx "
- "Carteretshape.csv"

The files listed above are exclusively spatial data. They contain census tract names, GEOIDs, and geometries. 

- "Carteret.race.percent.pivot.dbf, .prj, .shp, .shx"
- "Carteret.combined.hurricane.shape.corrected.actually.dbf, .prj, .shp, .shx"
- "Carteret.combined.maxflood.shape.dbf, .prj, .shp, .shx"
- "Carteret.combined.maxhurricane.shape.dbf, .prj, .shp, .shx"
- "Carteret.combined.min3flood.shape.dbf, .prj, .shp, .shx"
- "Carteret.combined.shape.dbf, .prj, .shp, .shx"
- "Flooding.race.correct.dbf, .prj, .shp, .shx"
- "Maxfloodingcorrect.dbf, .prj, .shp, .shx"
- "Minfloodingcorrect.dbf, .prj, .shp, .shx"
- "Shape.flooding.race.dbf, .prj, .shp, .shx"

The files listed above contain census tract names, GEOIDs, geometries and FEMA and Census data. These files allowed us to spatially visualize and map our data. "Carteret.race.percent.pivot" contains spatial data and percentages of each race/ethnicity by tract. All files with the word "combined" in the name contain both spatial data for each tract as well as the different demographic or FEMA hazard data indicated in the file name. The files with "maxflood" and "maxhurricane", as well as "min3flood" contain hazard, demographic and spatial data for the 3 census tracts with the maximum or minimum annualized frequency of the hazard contained in the file name.


## Scripts and code
Wrangling Code:
- initial_census_wrangling_code: code for initial census data wrangling 
- census_FEMA_wrangling: code for further census wrangling, FEMA wrangling, and combination of two. Creation of spatial dataframes. 

Analysis Code: 
- additional_maps_code: code for additoinal maps final report could use.
- graph_creation_code: code for creation of all charts and graphs in analysis. 
- correlation_tests_code: code for statistical analysis and data visualizations.
- final_product_visualization_test: code for testing the knitting process and layout of final report.

## Quality assurance/quality control

None.