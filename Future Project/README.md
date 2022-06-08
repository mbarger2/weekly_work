# MB_House_Pricing_Regression Additional Work
Expanding on my Ironhack midterm project


## New work

This project will expand off a project I did last year on modeling housing prices in the Seattle, Washington, USA market, 
the details of which can be found below.

My original work focused on finding new, more accurate ways to configure the information provided from the raw data 
in the form of new columns and combinations of input into my linear regression model. Due to limited time and 
wanting to commit to one technique thoroughly instead of shallowly address severaly techniques, I retained all of 
my data and did not trim any outliers using methods such as boxplots to discern the unimportant data points. 
My accuracy (~71%) with an untrimmed approach is strong but I am curious how much more accurate the model would be
with the aforementioned technique.



## Original Overview

My project looks over house sale data in the Seattle, WA area in 2014-15 and 
attempts to understand the data by looking at trends and creating a model to 
predict the prices of houses if they sold in the area.

### Method

In working through this project, I combed through the raw fifa data to extract the columns 
I thought may affect my prediction model and cleaned the data from any null values and outliers.
I used Jupyter Notebook with tools such as heatmap, OneHotEncoder, Normalizer, and other 
\resources from the sklearn library. I also used MySQL, Tableau, and Slides.com to manipulate 
the data, create visualizations, and present my findings to my peers. 

### Conclusion

Ultimately, my Linear Regression model yielded the most successful outcome with an r squared value of 70.66%.


Tableau Link: https://public.tableau.com/app/profile/matthew.w.barger/viz/HousingPriceData_16387607172130/7-9?publish=yes

Slides Presentation: https://slides.com/mbarger2/house-pricing-presentation


