# TripAdvisor Restaurants Analysis & Performance: France & United Kingdom

## Presented By:
Charul Mathur

## Date:
30-01-2026

## 🛠️ Tech Stack & Tools
- Python 3  
- Pandas (data manipulation)  
- NumPy (numerical operations)  
- Matplotlib, Seaborn (visualization)
- GitHub (collaboration)
- Miro, DrawDB (Visualization)
- Tableau Dashboard
- MySQL Workbench (sql queries)
- Canva (slides)

## Project Overview
TripAdvisor is the most popular travel website and it stores data for almost all restaurants, showing locations (even latitude and longitude coordinates), restaurant descriptions, user ratings and reviews, and many more aspects.
This project aims to explore Restaurant Performance, Popularity, and Cuisine Diversity in the UK & France.

- **Objective:** Identify the key drivers behind restaurant ratings-such as cuisine type, price range, and vegetarian options-and to compare how these factors differ between France and the UK.  
- **Approach:** Analyze top-rated vs most-reviewed restaurants, cuisine diversity, Correlation between: Rating & review count, Price range & rating, and Cuisine diversity & rating.
- **Dataset:** [Tripadvisor European Restaurants](https://www.kaggle.com/datasets/stefanoleone992/tripadvisor-european-restaurants).

## Final project presentation
The results from the analysis can be found [here](https://www.canva.com/design/DAG_JUJuBIQ/gW0EBv0VvxmcK_l6w3X5Qw/edit?utm_content=DAG_JUJuBIQ&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton).

## Day 1 - Project Planning
### 1. Create project documentation
- Create Google doc to simplify the tasks & planning.

---

## Day 2 - Project Initiation & Data Selection
On Day 2 I focused on dataset selection and cleaning. 

### 1. Introduction of the Project 

As an international tourist from India planning to travel in Europe, finding suitable restaurants can be challenging due to personal constraints. Being vegetarian and primarily English-speaking, with limited knowledge of French, narrows the range of accessible dining options.
- Are there significant differences in restaurant characteristics between France and the UK?
- How does vegetarian adoption influence restaurant ratings?

### 2. Dataset Selection

To look for this, I took the database Tripadvisor European Restaurants as my detailed analysis on restaurants. 

https://www.kaggle.com/datasets/stefanoleone992/tripadvisor-european-restaurants

- Focused on restaurants with:
    - Valid ratings and review counts
    - Clearly defined country and cuisine information
- Restricted analysis to France and the UK for cross-country comparison
       
**Dataset Features:**
- restaurant_name
- country
- region
- province
- city
- latitude
- longitude
- price_range
- meals
- cuisines
- vegetarian_friendly
- vegan_options
- gluten_free
- avg_rating
- total_reviews_count
- default_language
- meals_list
- is_english
- is_vegetarian
- rating_category
- meals_count
- vegetarian_flag  

This dataset is useful for restaurant research, such as identifying the most_reviewed restaurant and vegetarian-friendly options.

### 3. Data Transformation
The original dataset was almost clean, but I cleaned it using several techniques.
- null values 
- filling Null Values 
- column standardization (drop columns, head names, etc.) 
- duplicate data
- datatype handling (verify type, convert to int, float, or string) 

### 4. Created a Github Repository for the Project:
https://github.com/CharulMathur4592/tripadvisor_restaurants_analysis

---

## Day 3 – Data Examination and Hypothesis

On Day 3, we began understanding the dataset and created the questions for the following fields:

### 1 . Number of restaurants by country and city
- Which country has the highest number of restaurants, and which city has taken the lead?

### 2. Identify top-rated and most-reviewed restaurants 
- Restaurants having high rating & top reviews in a city.

### 3. Most common cuisines and cuisine combinations
- Overall, what is the most common cuisine in each country.
- Does Indian restaurants hold any place in the list?

---

## Day 4 – More Exploratory Data Analysis

### 4. Indian Cuisine Distribution
- Indian Cuisine Distribution in city & country.

### 5. Distribution of Vegetarian Restaurants in France & UK

### 6. Language Distribution

### 7. Meal-Type Distribution

---

## Day 5 – Performed Hypothesis Testing 

### 1. English Language Distribution (France vs UK)
- Research Question: Is there a statistically significant difference in the proportion of restaurants using English as the default language between France and the UK?

### 2. Vegetarian Adoption
- Research Question
Is there a statistically significant difference in the adoption of vegetarian-friendly restaurants between France and the UK?

---

## Day 6 - SQL Analysis

### 1. Create ERD Diagram
- MIRO
- DrawDB
- Create Database 
- Import Tables
- Create CSV of the tables
- Import Data

---

## Day 7 - Tableau
- Create graphs in Tableau
- Various Analysis in sheets
- Create Dashboard
- Create storyline 

---

## Day 8 - Work on Presentation 
- Gather data & select theme
- Work on slides in Canva

---

### Day 9 - Conclusions & Assembling Everythin
- Gathering python notebooks
- Confirming sql queries
- Finalizing Tableau Dashboard
- Organize Project Folder
- Commit & Push to GitHub repository


## Figures:

### 1. Relationship charts

Miro:
https://miro.com/app/board/uXjVGM5Srpk=/?share_link_id=322717149994

ERD:
https://www.drawdb.app/editor?shareId=f7079e9360428c84cc1f17fc944fda54

### 2. Final project presentation
The results from the analysis can be found in the presentation slides of the project:
https://www.canva.com/design/DAG_JUJuBIQ/gW0EBv0VvxmcK_l6w3X5Qw/edit?utm_content=DAG_JUJuBIQ&utm_campaign=designshare&utm_medium=link2&utm_source=sharebutton

### 3. Trello Board Link:
https://trello.com/invite/b/69806df9874072a5ebae36d0/ATTI3f965e32816303b12145af335f4e0a61F4001FC5/tripadvisor-restaurant-analysis

### 4. Tableau Dashboard Link:
https://public.tableau.com/app/profile/charul.mathur/viz/tripadvisor_restaurant_analysis/RestaurantInsightsDashboardCountryComparison?publish=yes

This project helped me working individually on data analysis, and Python-based visualization while exploring restaurant industry with a deep analysis of European Restaurants.

