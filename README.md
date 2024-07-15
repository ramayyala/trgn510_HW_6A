# HW_6A.R Analysis

This R script performs data analysis on cancer and Medicare data by county. Below is a summary of the key steps and analyses performed:

### Library Imports and Setup
- Set the working directory using `setwd()`.
- Imported essential libraries such as `googledrive`, `tidyr`, and `dplyr`.
- Deauthorized Google Drive using `drive_deauth()`.

### Data Loading
- Downloaded two CSV files from Google Drive:
  - Cancer data by county.
  - Medicare data by county.
- Loaded the data into R using `read.csv()`.

### Data Preparation
- Separated the `StateCode_County` column in the Medicare data into two columns: `StateCode` and `County` using the `separate()` function.
- Performed an inner join between the cancer data and Medicare data by county.

### Data Summary
- Generated a summary of the merged dataset using `summary()`.

### Data Analysis
- Calculated the mean physician reimbursements per enrollee by state and filtered the results for Arizona.
- Created a subset of data for Arizona and calculated the mean physician reimbursements per enrollee for Arizona.

## Key Findings
- Successfully joined and summarized the cancer and Medicare data by county.
- Computed and filtered physician reimbursements per enrollee, focusing on Arizona.

This summary encapsulates the major components and findings of the analysis. For detailed code and results, please refer to the specific sections in the script.
``` &#8203;:citation[oaicite:0]{index=0}&#8203;

