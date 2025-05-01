# 🎬 Studio Ghibli Data Analysis

This repository contains a complete data analysis project centered on the legendary animation house, **Studio Ghibli**. It includes the SQL schema and queries to structure and extract data, along with a detailed Jupyter Notebook performing Exploratory Data Analysis (EDA) using Python.

---

## 📁 Repository Structure

```
📦 studio-ghibli-analysis/
├── 📄 studio_ghibli.sql        # SQL file to create and populate the Studio Ghibli database
├── 📓 Ghibli Studio.ipynb      # Jupyter Notebook with full EDA and visualization
└── 📄 README.md                # Project overview and documentation
```

---

## 📌 Project Objectives

- Design a relational database for Studio Ghibli film data
- Perform data cleaning, inspection, and transformation
- Analyze patterns in:
  - Movie duration
  - Box office revenue
  - Rotten Tomatoes (RT) scores
  - Directors’ influence
  - Trends over time
- Visualize insights using Python libraries

---

## 🧱 Database (SQL)

The `studio_ghibli.sql` file includes:
- **Schema creation**: Tables for movies, characters, roles, directors
- **Data insertion**: Populates realistic records for Studio Ghibli films
- **Queries**: Sample SELECT, JOIN, GROUP BY queries to explore trends in ratings, revenue, genres, and more

---

## 📊 Jupyter Notebook (Python EDA)

Key components of the notebook:

- **Data Import & Overview**:
  - Reads Excel dataset into a DataFrame
  - Inspects null values, duplicates, and data types

- **Visualizations (using Seaborn & Matplotlib)**:
  - Distribution of movie durations
  - RT Score vs. Box Office
  - Movie counts by director
  - Trends in ratings over time
  - Violin plots by director and correlation heatmaps

- **Summary of Insights**:
  - Hayao Miyazaki directed 75%+ of the movies
  - Most movies last ~120 minutes
  - RT score and box office show a positive relationship
  - Studio Ghibli maintains consistent quality over 30+ years

---

## 📦 Technologies Used

- SQL (for data modeling and query logic)
- Python (Pandas, Seaborn, Matplotlib)
- Jupyter Notebook
- Excel (as data source)

---

## 📈 Key Takeaways

- Studio Ghibli films are critically acclaimed with consistent quality.
- Hayao Miyazaki is the most influential figure in the studio’s success.
- Fantasy genre dominates their storytelling landscape.
- Higher RT scores tend to correlate with greater revenue.

---

## ✅ How to Use

1. Run `studio_ghibli.sql` in your SQL environment to recreate the database.
2. Open `Ghibli Studio.ipynb` in Jupyter Notebook or VS Code.
3. Make sure to have the Excel file `Studio_ghibli.xlsx` in your local path or adjust the read path.
4. Run cells to explore the data, visualizations, and insights.

---

## 📝 Author

**[Your Name Here]**  
Project for educational and data storytelling purposes.

---

## 📚 Acknowledgements

- Inspired by the films of **Studio Ghibli**
- RT and IMDb data (simulated or adapted for academic use)
```
