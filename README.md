Project Background

This project analyzes the Brazilian E-Commerce Public Dataset published by Olist, a Brazilian technology company that provides e-commerce and marketplace solutions for small and medium-sized businesses.

The dataset contains real-world transactional data from orders placed between 2016 and 2018 across multiple Brazilian marketplaces. It includes information related to customers, orders, products, payments, delivery performance, and geographic locations.

The objective of this project is to transform raw transactional data into business insights using SQL and Power BI. The analysis focuses on identifying sales performance trends, product category behavior, customer purchasing patterns, and customer retention opportunities through interactive dashboards and analytical modeling.

The project simulates a real-world business intelligence workflow including:

* Data cleaning and validation using SQL
* Relational data modeling
* KPI development
* Time-series analysis
* Customer segmentation using RFM analysis
* Interactive dashboard development in Power BI

The analysis is divided into four main business areas:

* Executive Overview
* Sales Trend Analysis
* Product Category Insight
* Customer Insight

Through this project, business questions related to revenue growth, customer behavior, repeat purchasing patterns, and product performance are explored to generate actionable business insights.

# Data Structure & Initial Checks

The project uses a relational e-commerce dataset consisting of multiple interconnected tables related to customers, orders, products, and transactional activities.

The data model was structured in Power BI using a star-schema-like approach to support analytical reporting and dashboard performance.

## Entity Relationship Diagram (ERD)

> ![ERD](image/erd.png)

---

## Initial Data Exploration

Before beginning the dashboard development process, several exploratory queries were performed using SQL to better understand the dataset structure and business context.

The exploration process focused on:

* Understanding table relationships
* Reviewing transaction structure
* Exploring revenue and order distributions
* Aggregating KPI metrics
* Comparing SQL calculations with Power BI results
* Identifying incomplete yearly data patterns

During the analysis process, several real-world analytical challenges were encountered, including:

* Incomplete transaction data for parts of 2016 and 2018
* Revenue discrepancies caused by filtering context
* Time-series sorting issues in Power BI
* Customer frequency imbalance in RFM analysis

These challenges helped strengthen the overall analytical process through repeated validation and sanity checking between SQL queries and Power BI calculations.

# Executive Summary

## Overview of Findings

The analysis of Olist’s e-commerce transactions between 2016 and 2018 reveals strong overall sales growth driven primarily by increasing order volume rather than higher transaction values. Total revenue reached approximately **$13.59M** across nearly **99K orders**, while Average Order Value (AOV) remained relatively stable at **$136.68**.

> ![ERD](image/executive_overview.png)


Key performance indicators showed substantial year-over-year growth, with revenue increasing by **205%** and total orders rising by **209%**. However, AOV slightly declined by approximately **1%**, indicating that business expansion was largely fueled by customer purchasing frequency and transaction volume instead of increased basket size.

The following sections further explore sales performance trends, product category behavior, and customer purchasing patterns to identify potential business opportunities and operational insights.

Below is the overview page from the Power BI dashboard, while additional dashboard examples and analytical breakdowns are included throughout the report.

---

# Sales Trends

Sales activity showed a generally upward trend throughout 2017 and most of 2018, with both revenue and order volume increasing steadily over time. Several periods experienced significant spikes in revenue and order count, particularly toward late 2017 and early 2018, suggesting strong seasonal demand and increased marketplace activity.

Revenue growth appeared to be closely correlated with order volume growth, while Average Order Value (AOV) remained comparatively stable throughout the analysis period. This indicates that the company’s revenue expansion was primarily driven by increasing transaction frequency rather than customers spending significantly more per order.

Some fluctuations and sharp declines were observed in several months, particularly in portions of late 2018. These irregularities are likely influenced by incomplete transaction records within the publicly available dataset rather than actual business contraction.

Despite short-term volatility, the overall trend suggests strong marketplace growth and increasing customer adoption across the observed period.

---

# Product Performance

Product category analysis shows that revenue contribution is relatively diversified across multiple categories rather than being dominated by a single product group. Categories such as:

* `beleza_saude`
* `relogios_presentes`
* `cama_mesa_banho`
* `esporte_lazer`
* `informatica_acessorios`

consistently contributed significant portions of both revenue and order volume across 2017 and 2018.

Several categories demonstrated strong balance between order share and revenue share, indicating healthy monetization performance alongside strong purchasing demand. Meanwhile, certain categories generated high operational activity but contributed comparatively lower revenue, suggesting lower average product pricing.

The analysis also indicates that category leadership shifted slightly between years, reflecting changing consumer demand patterns and marketplace purchasing behavior.

Overall, the company’s product portfolio appears relatively balanced, reducing overreliance on a single category while maintaining consistent revenue contribution from multiple product segments.

---

# Customer Insight

Customer behavior analysis reveals that the platform is heavily dominated by **one-time purchasers**, while repeat customers represent a significantly smaller portion of the customer base. This suggests that customer acquisition is strong, but long-term retention remains a major business challenge.

RFM segmentation further highlights this pattern. The largest customer segment was classified as **“At Risk”**, indicating a substantial number of customers who previously purchased but have not returned recently. This may signal declining customer engagement or insufficient retention strategies.

Although smaller in customer count, the **“Big Spenders”** segment generated disproportionately high revenue contribution, demonstrating that a relatively small group of high-value customers contributes a significant share of total sales.

Geographic analysis also showed that revenue is concentrated in several major Brazilian states and cities, with São Paulo and surrounding regions contributing heavily to overall marketplace performance.

These findings suggest that future business growth opportunities may lie in:

* improving repeat purchase behavior,
* increasing customer retention,
* strengthening loyalty initiatives,
* and developing personalized marketing strategies targeting high-value customer segments.

# Recommendations

Based on the analysis conducted across sales performance, product categories, and customer behavior, several strategic recommendations can be identified to support sustainable business growth and improve customer retention.

---

# Short-Term Plan

## Improve Customer Retention

The analysis revealed that the marketplace is heavily dominated by one-time purchasers, while the “At Risk” segment represents the largest customer group. This indicates that customer acquisition is relatively strong, but repeat purchasing behavior remains limited.

In the short term, the company should focus on improving customer retention through targeted promotional strategies and personalized marketing campaigns aimed at re-engaging inactive customers.

Improving repeat purchase behavior could significantly increase long-term customer value while reducing dependency on continuous customer acquisition.

---

## Focus on High-Performing Product Categories

Several product categories consistently contributed strong revenue and order volume performance, particularly:

* beleza_saude
* cama_mesa_banho
* relogios_presentes
* esporte_lazer
* informatica_acessorios

The company should prioritize these categories through increased marketplace visibility, promotional campaigns, and product expansion strategies.

Strengthening already successful categories may generate faster short-term revenue growth while minimizing operational risk.

---

## Increase Average Order Value (AOV)

Although revenue and orders experienced strong growth, Average Order Value (AOV) remained relatively stable and slightly declined over time. This suggests that revenue growth is currently driven more by transaction volume than by increased customer spending per order.

Short-term strategies to improve AOV may include:

* product bundling,
* upselling recommendations,
* free shipping thresholds,
* and premium product positioning.

Increasing basket size could improve profitability without relying entirely on new customer growth.

---

# Long-Term Plan

## Develop Customer Loyalty & Segmentation Strategy

The RFM analysis demonstrates that customer purchasing behavior varies significantly across segments. While high-value customer groups such as “Big Spenders” contribute disproportionately high revenue, their population size remains relatively small.

In the long term, the company should develop more advanced customer retention and loyalty strategies focused on:

* personalized customer experiences,
* customer lifetime value optimization,
* targeted retention campaigns,
* and loyalty-based incentives.

A stronger loyalty ecosystem could improve long-term customer engagement and stabilize recurring revenue growth.

---

## Expand Geographic & Product Growth Opportunities

Revenue concentration is heavily centered around several major Brazilian states and cities, indicating opportunities for both geographic and product diversification.

Long-term growth opportunities may include:

* expanding marketplace penetration into underperforming regions,
* introducing higher-value products within strong-performing categories,
* and improving regional marketing optimization based on customer purchasing behavior.

Diversifying both geographic reach and product monetization may help reduce overreliance on specific customer groups or purchasing regions while supporting sustainable marketplace expansion.



