Trying things for the codebook_exam dataset


1. Trying the delimeter separating data fields, but found out that it wasnt necessary for this dataset as the delimimiter is already set as tab
Exam_data <- read_delim(here("Data", "exam_data.txt"), delim = "\t")
Exam_data

2. tried to separate the first column with following code:
  
  Here I try to separate the first column into two subcaterogies:
  ```{r}
covid_data <-
  covid_data %>% 
  separate(col= subject,
           into = c ("PatientID", "Patient_Name"), separate = "-")

got an error. Needed to add the merge function to add values together

3. tried to cahnge the columns age_gender but suddely got 31048 observations wiht this function:
  clean_covid<-
  clean_covid %>% 
  pivot_longer(names_to = "gender", values_to = "age", cols=15:16)
clean_covid

we created a duplicate number because of the "NA"
then added another filter funciton to remove the NA´s in the age column

4. we tried different geom_plots to vizualize and analyse the waiting time over the 100 days. 

5. tried many different codes to determine the correlation between number of positive tests against the number of tests taken
example: 
  
  ```{r}
covid_tests %>% 
  group_by(PatientID,result) %>% 
  tally() %>% 
  ggplot(aes(n))+
  geom_col(aes(y=result))
```

vizually this was difficult. we tried thinking of different statistical analyses that could be used.
correlation tests, two-way tests...

6. checking if the number of tests corresponds to the bumber of counts on each sex
```{r}
covid_tests %>% 
  count(gender)
```