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


<For each data file in the repository, describe the data contained in each column. Include the column name, a description of the information, the class of data, and any units associated with the data. Create a list or table for each data file.> 

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