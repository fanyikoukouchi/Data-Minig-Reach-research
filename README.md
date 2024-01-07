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
## Data set structure
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
# Data explore
## Data exploration and cleaning
Use Talend for simple data exploration and cleaning
![image.png](https://cdn.nlark.com/yuque/0/2024/png/1031124/1704552791760-136e667a-3efe-49b3-9b96-4508c3c41e5b.png#averageHue=%23f3f3f2&clientId=u1607b6ce-7f59-4&from=paste&height=608&id=u00592430&originHeight=912&originWidth=1918&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=154028&status=done&style=none&taskId=u95f23b69-d68b-4940-b7ab-cca119095b7&title=&width=1278.6666666666667)
the total number of data is 350
Analysing the "Total Spend", we found that
![image.png](https://cdn.nlark.com/yuque/0/2024/png/1031124/1704552874616-b0e0186f-6f33-4ee6-ac7c-718613b1b678.png#averageHue=%23fcfbfa&clientId=u1607b6ce-7f59-4&from=paste&height=238&id=u42b06824&originHeight=357&originWidth=331&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=11838&status=done&style=none&taskId=ub998b700-0afa-4a13-8614-01c86524c25&title=&width=220.66666666666666)
There are two null data found in the Satisfaction Level
![image.png](https://cdn.nlark.com/yuque/0/2024/png/1031124/1704553043816-dc3c7837-8b07-4ea1-872c-f530b9ff2585.png#averageHue=%23d3ca7b&clientId=u1607b6ce-7f59-4&from=paste&height=526&id=ufb1dd058&originHeight=789&originWidth=511&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=54651&status=done&style=none&taskId=uc7cc2c6e-7c0d-4a04-a937-768e06837be&title=&width=340.6666666666667)
Delete the data of those who didn't comment and export the optimised data
## Data Transformation
Import data into DI, using tFileInputDelimited Component.
![image.png](https://cdn.nlark.com/yuque/0/2024/png/1031124/1704559876464-b571a47f-c159-45c1-bfba-245b09a2ce2a.png#averageHue=%23f9f9f9&clientId=u1607b6ce-7f59-4&from=paste&height=1539&id=u69906bf3&originHeight=1539&originWidth=2571&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=99489&status=done&style=none&taskId=u5087a236-ca7c-4ac2-ab0e-8aae1259761&title=&width=2571)
Useing Map for data output
![image.png](https://cdn.nlark.com/yuque/0/2024/png/1031124/1704560043361-953bb2f9-f624-4c2d-a221-3168959324d5.png#averageHue=%23e2e2d8&clientId=u1607b6ce-7f59-4&from=paste&height=1039&id=u26f85dcf&originHeight=1039&originWidth=1927&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=165906&status=done&style=none&taskId=u07527797-b2de-46ed-a3a6-610d39a9f1f&title=&width=1927)
![image.png](https://cdn.nlark.com/yuque/0/2024/png/1031124/1704558340578-8de59906-9bc8-46c7-87bd-86f234bd9e31.png#averageHue=%23f3f2f0&clientId=u1607b6ce-7f59-4&from=paste&height=1539&id=u66423b4e&originHeight=1539&originWidth=2571&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=132651&status=done&style=none&taskId=u56ff1bd6-bb21-49c2-abf6-6e0d3e066b8&title=&width=2571)
Using the tjava component, write simple code to view per capita consumption levels and observe the data.![image.png](https://cdn.nlark.com/yuque/0/2024/png/1031124/1704561277776-1aa32163-b884-47f5-9e0d-02431cda4137.png#averageHue=%23f3f3f3&clientId=u1607b6ce-7f59-4&from=paste&height=1539&id=u6097b5c2&originHeight=1539&originWidth=2571&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=188220&status=done&style=none&taskId=uc0d020e0-d716-41ba-9fbd-6e03dbb57c8&title=&width=2571)
# **Decision Tree Analysis**
Use the "File Import" component to import a csv library, change the value of the import file of the File Import component, and run the
Use the Variable Selection node to identify which predictors are most relevant 
![image.png](https://cdn.nlark.com/yuque/0/2024/png/1031124/1704564832327-d266e3b5-088b-4ec6-8d01-9121ffe8af5c.png#averageHue=%239a8978&clientId=u1607b6ce-7f59-4&from=paste&height=601&id=uc6f89a1b&originHeight=901&originWidth=1540&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=191008&status=done&style=none&taskId=u948f0611-4ade-481c-adf0-d85187664e1&title=&width=1026.6666666666667)
From the "Effects in the Model" chart, it seems you have variables like G_Age, G_Items_Purchased, and Days_Since_Last_Purchase that have been included in the model based on their sequential R-Square values. This suggests that these variables have a significant relationship with the target variable and are being considered by the Variable Selection node for model building.
## Stat Explore
![image.png](https://cdn.nlark.com/yuque/0/2024/png/1031124/1704606425235-5e6e0adf-4654-4783-974b-39db2e9d5754.png#averageHue=%23f2f2f2&clientId=u689c7c70-ce46-4&from=paste&height=601&id=u1a8d8e35&originHeight=901&originWidth=1543&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=65673&status=done&style=none&taskId=ua9bcf919-7cac-48c4-9abe-9ead9d86ce0&title=&width=1028.6666666666667)
Age: There are 16 age groups, with the most common being 30 years old **(13.71%)** and 32 years old **(9.43%).**
City: The data includes 6 cities, with Los Angeles and New York having the highest percentages, both at **16.86%**.
Gender: Both males and females make up **50%** each.
Purchase Behavior and Satisfaction:
Discount Applied: The data shows that 50% of purchases had discounts applied, while the other 50% did not.
Membership Type: There are three types, with Gold and Silver cards each accounting for **33.43%**.
Satisfaction Level: The most common satisfaction level is "Satisfied" **(35.71%)**, followed by "Dissatisfied" **(33.14%)**.
Statistics for Interval Variables:
Average Rating: The mean is **4.02**, with a standard deviation of **0.58**, indicating a relatively even distribution.
Days Since Last Purchase: The average is **26.59** days, with a standard deviation of 13.44 days, showing a slight positive skew.
Total Spend: The average spending is** $845.38**, with a standard deviation of **$362.06**, displaying a slight positive skew.
Combining this data, we can gain a basic understanding of the customer demographics, purchase behavior, and satisfaction levels. This information is valuable for marketing strategies, product positioning, and customer service improvements, among other aspects.
![image.png](https://cdn.nlark.com/yuque/0/2024/png/1031124/1704610692553-743d208e-8383-4883-9af5-2f2783415e47.png#averageHue=%23dbcfc6&clientId=u689c7c70-ce46-4&from=paste&height=693&id=u004be4c4&originHeight=1039&originWidth=1927&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=206061&status=done&style=none&taskId=u78903b4f-ffce-462b-8dd6-7df6df38f85&title=&width=1284.6666666666667)
When analyzing the Satisfaction Level as the target variable, it was observed that Days Since Last Purchase is strongly correlated with satisfaction. In other words, on this e-commerce platform, when customers are satisfied with their purchases, their likelihood of making repeat purchases is very high. Additionally, it was also found that the vast majority of customers on this e-commerce platform are highly satisfied with the products they purchase.
![](https://cdn.nlark.com/yuque/0/2024/png/1031124/1704611224056-5712d937-a2af-42f3-a06b-8b8cbadce51f.png#averageHue=%23aeaa98&clientId=u689c7c70-ce46-4&from=paste&id=ua0a53be7&originHeight=1039&originWidth=1927&originalType=url&ratio=1.5&rotation=0&showTitle=false&status=done&style=none&taskId=u01c77ce1-4ace-4248-84de-d9033661fe6&title=)
When I analyzed Age and Total Spend as target parameters, I intended to investigate whether people of different age groups have varying spending capabilities and if spending capacity increases with age. However, the results showed something different. In the analysis of age and spending, the decision tree clearly segmented based on membership levels, indicating a strong association between membership level and age. It was evident that the average age of Bronze members is lower than that of Gold and Silver members. Consequently, I decided to analyze Membership Level and Total Spend as the target variables to determine if the e-commerce platform's membership mechanism correlates with higher spending, i.e., whether members with higher spending have higher membership levels.
![image.png](https://cdn.nlark.com/yuque/0/2024/png/1031124/1704612827163-024502b4-a874-4040-98f7-3b514ed30715.png#averageHue=%23eaddd2&clientId=u689c7c70-ce46-4&from=paste&height=1046&id=u476aa04f&originHeight=1569&originWidth=2559&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=219385&status=done&style=none&taskId=u04695655-086d-45ec-8985-acc4147a525&title=&width=1706)
I discovered that there isn't a strong correlation between member spending and membership level. Additionally, the distribution of Gold, Silver, and Bronze members is not very even, with a larger number of Silver members. Furthermore, these three types of memberships exhibit distinct characteristics.
# **Ensemble Methods**
## Set the target to age
![image.png](https://cdn.nlark.com/yuque/0/2024/png/1031124/1704615901602-ae830cc4-0090-4f4a-ad85-99740831ce13.png#averageHue=%23ececec&clientId=u689c7c70-ce46-4&from=paste&height=693&id=u97d40370&originHeight=1039&originWidth=1927&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=156725&status=done&style=none&taskId=u70987da4-d92a-46bf-8fae-41078f3faba&title=&width=1284.6666666666667)
Training, validation, test set ratio:

| **Training** | 40 |
| --- | --- |
| **Validation** | 30 |
| **Test** | 30 |

![image.png](https://cdn.nlark.com/yuque/0/2024/png/1031124/1704616058444-a55bb8ba-bd7e-42fe-acd1-c9ebb9a33a2b.png#averageHue=%23988878&clientId=u689c7c70-ce46-4&from=paste&height=693&id=u4f8f8b03&originHeight=1039&originWidth=1927&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=431668&status=done&style=none&taskId=u749a7785-c29c-4867-b70a-9cdcfd11f47&title=&width=1284.6666666666667)
Useing Model Comparison
![image.png](https://cdn.nlark.com/yuque/0/2024/png/1031124/1704616696751-54c6a879-a5cf-483e-9b5b-761ac4f3bdc5.png#averageHue=%23ededed&clientId=u689c7c70-ce46-4&from=paste&height=693&id=uce98cf70&originHeight=1039&originWidth=1927&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=163497&status=done&style=none&taskId=u7bc5025a-2f1c-48f5-8716-9f2d71641f1&title=&width=1284.6666666666667)
![image.png](https://cdn.nlark.com/yuque/0/2024/png/1031124/1704616889711-aeae8d25-8ec4-47ab-9dc1-d9746f7cdb59.png#averageHue=%23dedede&clientId=u689c7c70-ce46-4&from=paste&height=693&id=uf7540f88&originHeight=1039&originWidth=1927&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=226583&status=done&style=none&taskId=u44456cdf-80a9-40cf-991f-844bfabd04f&title=&width=1284.6666666666667)
The performance of the two models in predicting a continuous target variable. Among several key performance indicators, the HP forest model had a lower mean squared error and a smaller maximum absolute error on both the training and validation sets, suggesting a higher prediction accuracy and a better fit. Based on the mean squared error on the validation set, the HP forest model was selected as the better model, although the error on the test set increased, which may imply that the model's ability to generalize to unknown data is yet to be verified.
## Set the Target to Days Since Last Purchase and Discount Applied
![image.png](https://cdn.nlark.com/yuque/0/2024/png/1031124/1704617352702-be74bcee-529f-466b-a516-5f77c8c4670e.png#averageHue=%23eeeeed&clientId=u689c7c70-ce46-4&from=paste&height=800&id=uf9726bdc&originHeight=1200&originWidth=1920&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=67035&status=done&style=none&taskId=uef1f1c3b-1b65-41dc-bf0e-01d0279e6ba&title=&width=1280)
![image.png](https://cdn.nlark.com/yuque/0/2024/png/1031124/1704617334388-ecce5a08-cd83-4352-8d70-ed39848b61d4.png#averageHue=%23978777&clientId=u689c7c70-ce46-4&from=paste&height=693&id=ub6c21ebe&originHeight=1039&originWidth=1927&originalType=binary&ratio=1.5&rotation=0&showTitle=false&size=449851&status=done&style=none&taskId=u1ceca61e-75c5-412c-b8b0-ab6214d899d&title=&width=1284.6666666666667)
# Business proposal
From the entire data analysis, it can be concluded that people with higher membership levels tend to purchase items more frequently. Therefore, as an e-commerce website, the first point should be to retain existing customers and prevent them from churning. The shopping satisfaction rate shows that the service on the e-commerce platform is very reliable and guaranteed, and we hope to continue to provide customers with a good shopping experience. The number of Silver customers is quite high, disproportionate to the number of Bronze and Gold members, which indicates a problem:** the current platform's membership level system or the operation of the platform is not in a healthy state.**

A healthy platform should have a pyramid-shaped proportion of membership levels, with Bronze > Silver > Gold members. This would indicate that the platform is continuously developing and will get better over time. Therefore, we may need to deploy some impactful advertising to market our e-commerce platform, attract more Bronze members, ensure the number of Bronze members is greater than Silver, and then offer Silver members certain discounts to increase their repurchase rate and upgrade to Gold membership faster.

According to the analysis results of this project, the higher the membership level, the more frequent the repurchase rate, so it can create more sales value.

Of course, there are more factors that influence an e-commerce platform. When analyzing with age as the target, some challenges were encountered. It was found that age is related to spending power. Since there is currently no platform operation-related sales data available, it is not possible to guide whether the platform's main business is aimed at adults or children, and it is not possible to provide accurate marketing techniques and methods.
# Conclusion
For this data, I used the "Talend" tool for simple data cleaning and exploration, where I removed two records with missing data. Then, I conducted a basic correlation analysis using the "DI" tool, and the cleaned data was imported into SAS using a File node. Further data exploration was carried out using StatExplore in SAS. During this exploration, it was found that the correlation between Total Spend and age was relatively high for females, and there was a close connection between discount and last purchase variables. Age and the last purchase event showed a negative correlation, indicating no relationship between them.

After identifying the correlations between variables, I applied "Random Forest" and "Decision Trees" for predictive modeling to uncover the relationships between membership level and the last purchase variable, and between age and spending power. I also used Data Partition to divide the data into training, validation, and test sets to identify patterns and ultimately conducted a comparison between the Decision Tree and Random Forest models.

