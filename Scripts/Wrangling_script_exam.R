Trying things for the codebook_exam dataset


Trying the delimeter separating data fields, but found out that it wasnt necessary for this dataset as the delimimiter is already set as tab
Exam_data <- read_delim(here("Data", "exam_data.txt"), delim = "\t")
Exam_data

tried to separate the first column with following code:
  
  Here I try to separate the first column into two subcaterogies:
  ```{r}
covid_data <-
  covid_data %>% 
  separate(col= subject,
           into = c ("PatientID", "Patient_Name"), separate = "-")

got an error. Needed to add the merge function to add values together