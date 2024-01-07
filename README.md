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
# Code and Scripts
- Talend用来清理数据中的空值
- Talend Data Integration 用来进行简单的数据探索和数据转化
- SaS e-Miner:进行数据分析
# Talend
![image.png](https://cdn.nlark.com/yuque/0/2024/png/1031124/1704638216383-8069f82e-b075-4422-af67-07e11566588e.png#averageHue=%23f2f2f0&clientId=u7acd764d-3e30-4&from=paste&height=616&id=u02a2703e&originHeight=924&originWidth=1873&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=162956&status=done&style=none&taskId=u694d54d3-d9a8-4af6-81b0-6cb71f727cc&title=&width=1248.6666666666667)
:::info
Data Import > Column Inspection > Explore Outliers or Missing Values > Handle Outliers
:::
# Talend Data Integration
![image.png](https://cdn.nlark.com/yuque/0/2024/png/1031124/1704558340578-8de59906-9bc8-46c7-87bd-86f234bd9e31.png#averageHue=%23f3f2f0&clientId=u1607b6ce-7f59-4&from=paste&height=1539&id=u66423b4e&originHeight=1539&originWidth=2571&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=132651&status=done&style=none&taskId=u56ff1bd6-bb21-49c2-abf6-6e0d3e066b8&title=&width=2571)
:::info
Data Import > Data Transformation > Data Output
:::
# SaS e-Miner
![image.png](https://cdn.nlark.com/yuque/0/2024/png/1031124/1704638720053-4cd91a3a-7875-4991-b69f-bc4c37b9b386.png#averageHue=%23eeeeee&clientId=u333a8ea3-1da5-4&from=paste&height=693&id=u07cb0518&originHeight=1039&originWidth=1927&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=152727&status=done&style=none&taskId=ud469200b-fd4f-47fd-8d49-7b9f1b19651&title=&width=1284.6666666666667)

- File Import(Data import)>StatExplore(Data Explore)
- File Import(Data import)>Variable Selection>Decision Tree
- File Import(Data import)>Data Partion>HP Forest>

By changing the target values in "File Import" and observing the generated results, we can identify patterns to serve the business.
# Summary and reflection
Talend has significant advantages in data exploration, allowing people who don't know how to code to quickly complete data preprocessing with simple operations. However, it also has limitations, especially in handling large-scale data, where it can be less effective. I believe that Talend Data Integration is an optimized version of SAS, offering more flexibility with its visual operations. It's more versatile than SAS, as it can integrate various coding languages, possibly due to it being written in Java. For more complex operations, it can use components that incorporate Java, Python, or R.

Moreover, the Talend Data Integration community provides many third-party components for use. For example, in this project, I wanted to convert a CSV file into a format compatible with SAS and needed the 'tSasOutput' component, which wasn't included in the original installation package. Finding this component can be time-consuming, so I didn't use it for exporting data. Eventually, I couldn't export the data due to my elementary level in Java coding and ended up using the software for basic data exploration.

SAS software is one of the most popular data analysis tools on the market, and mastering it is essential, I believe. During its use, I constantly referred to the official documentation for parameter settings, but I still found it a bit unfamiliar. In data analysis with SAS, it doesn't directly give you a result but allows you to infer from the final model outcomes. Compared to coding, SAS is much simpler, but maybe because of my unfamiliarity, the results of model design and execution were not as expected.

Overall, in this experiment, I completed all the work of a data business analyst in a short time, from data cleaning and exploration to data prediction. Then, combining online research on e-commerce operations and business strategies, I offered my suggestions.
