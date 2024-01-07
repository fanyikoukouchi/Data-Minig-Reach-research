# Project background and objectives
In the digital age, e-commerce has become a key component of global business. With the rise of online shopping platforms, consumer shopping habits and preferences have undergone significant changes. This shift has provided businesses with unprecedented opportunities, especially in understanding customer behavior and optimizing market strategies. However, to fully leverage these opportunities, businesses must be able to effectively analyze vast and complex customer data.

This article will explore how data analysis techniques can be used to gain a deep understanding of online shopping customer behavior patterns. By analyzing the customer transaction data set of e-commerce websites, including customer attributes, purchase history, etc., we can reveal consumers' shopping preferences, purchasing motivations, and behavioral trends. These insights are crucial for developing targeted marketing strategies, enhancing customer experience, increasing sales, and building lasting customer relationships.
# Project Overview

1. Talend: Talend is an open-source data integration and ETL (Extract, Transform, Load) tool. While its primary function is data integration and processing, it can also be used for data mining, particularly in data preparation and cleansing. Here's how Talend contributes to data mining:
   - Data Preparation: Talend offers robust data processing and transformation capabilities to help users prepare data in formats suitable for data mining.
   - Data Cleansing: Talend assists users in identifying and correcting errors, missing values, and outliers in data, which is crucial in data mining.
   - Data Integration: Talend can extract data from multiple sources and integrate it into a unified data warehouse for better analysis and mining.
2. Talend Data Integration: Talend Data Integration is a component of Talend, focusing on data integration and ETL tasks. It works in conjunction with other Talend components to facilitate data mining workflows. In addition to the functionalities mentioned for Talend, Talend Data Integration provides more comprehensive ETL capabilities like data transformation, loading, and migration to better support data mining tasks.
3. SAS e-Miner: SAS e-Miner is a professional data mining tool offered by SAS Institute. It boasts powerful data mining and analysis features suitable for complex data mining projects. Here's how SAS e-Miner contributes to data mining:
   - Advanced Modeling: SAS e-Miner supports various advanced data mining techniques, including clustering analysis, decision trees, neural networks, regression analysis, etc., enabling users to create complex models.
   - Automated Modeling: It also offers automated modeling capabilities that can automatically select and evaluate different models to find the best data mining solution.
   - Data Exploration: SAS e-Miner includes data exploration tools to help users visualize and understand data, identifying potential patterns and trends.
   - Model Deployment: It allows users to deploy the models created into production environments for real-time data mining.

**This project technology stack**
**Data cleaning：**Talend
**Data exploration:** Talend Data Integration
**Data analysis：**SAS e-Miner
# Data set source and description
Data set structure
| **Field** | **Data Type** |
| --- | --- |
| Customer ID | Integer |
| Gender | String |
| Age | Integer |
| City | String |
| Membership Type | String |
| Total Spend | Numeric |
| Items Purchased | Integer |
| Average Rating | Numeric |
| Discount Applied | Boolean |
| Days Since Last Purchase | Integer |
| Satisfaction Level | String |

Data source: [https://www.kaggle.com/datasets/uom190346a/e-commerce-customer-behavior-dataset/data](https://www.kaggle.com/datasets/uom190346a/e-commerce-customer-behavior-dataset/data)
## Data describe
This dataset provides a way to delve into the customer data of an e-commerce platform, allowing for a more detailed segmentation of customers. With this data, we can analyze people's consumption habits and investigate which factors affect customer satisfaction, thereby identifying areas that need improvement. Additionally, this dataset can be used to assess how discounts impact customer spending and to formulate effective promotional strategies accordingly. By understanding the time elapsed since a customer's last purchase, we can develop more targeted strategies. Moreover, this aids in exploring regional differences in customer behavior, enabling us to optimize our marketing efforts according to the trends in specific locations.
