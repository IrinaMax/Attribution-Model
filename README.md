# Attribution model for Marketing Analysis

An attribution model is a framework used in marketing and analytics to assign credit to various touchpoints along a customer's journey that lead to a desired outcome, such as a conversion or sale. In the complex landscape of digital marketing, customers often interact with multiple channels and touchpoints before making a purchase or completing a desired action. Attribution models help businesses understand which marketing channels or touchpoints are most influential in driving conversions.
Choosing the right attribution model depends on factors such as the complexity of your sales funnel, the length of your typical customer journey, and your marketing objectives. Additionally, it's essential to continually analyze and refine your attribution model to ensure it accurately reflects the dynamics of your marketing efforts and customer behavior.

Some Attribution models I used:

### 1 Last Interaction (or Last Click): 
This model gives all the credit for a conversion to the last touchpoint that the customer interacted with before converting. It's straightforward but can overlook earlier touchpoints that contributed to the conversion.

### 2 First Interaction (or First Click): 
In contrast to the last interaction model, this model gives all the credit to the first touchpoint that introduced the customer to the product or service. It's useful for understanding how customers initially discover a brand.

### 3.Linear: 
The linear attribution model distributes credit equally across all touchpoints in the customer journey. It's helpful for giving each touchpoint some recognition but may not accurately reflect the varying impact of different channels.

### 4.Time Decay: 
This model gives more credit to touchpoints that are closer in time to the conversion. Touchpoints that occur further back in time receive less credit. It's based on the assumption that interactions closer to the conversion are more influential.

### 5.Position-Based (U-Shaped): 
Also known as the U-shaped model, this attribution model assigns 40% of the credit to both the first and last touchpoints, with the remaining 20% distributed evenly among the intermediate touchpoints. It recognizes both the initial discovery and the final decision-making stages.

### 6.Custom Models: 
Some businesses develop custom attribution models tailored to their specific needs and understanding of their customer journey. These models often combine elements of various standard models or incorporate additional factors unique to the business.

# The number of features you can use in an attribution model 
depends on several factors, including the complexity of your marketing ecosystem, the granularity of your data, and the computational resources available. Here are some considerations:

Number of Touchpoints: One of the primary features in an attribution model is the various touchpoints or channels through which customers interact with your marketing efforts. The more touchpoints you have, the more features you'll need to represent them in your model.

Granularity of Data: You may have access to additional data beyond just touchpoints, such as time of interaction, customer demographics, campaign attributes, etc. Each additional piece of data can be considered a feature in your attribution model.

Interactions and Time Decay: You might want to include interactions between touchpoints or apply time decay to give more weight to recent interactions. These can add complexity to your model and increase the number of features.

Resource Constraints: Depending on the computational resources available, there may be practical limits to the number of features you can include in your model. Large datasets with many features can require significant processing power and memory.

Model Complexity vs. Overfitting: As you add more features to your attribution model, you increase its complexity. However, overly complex models may suffer from overfitting, where the model learns to capture noise in the data rather than the underlying patterns. It's essential to strike a balance between model complexity and predictive performance.

Dimensionality Reduction Techniques: If you have a large number of features, you may consider using dimensionality reduction techniques such as Principal Component Analysis (PCA) or feature selection methods to identify the most informative features and reduce computational complexity.

It's essential to consider the trade-offs between model complexity, computational resources, and predictive performance. Start with the most relevant features based on your understanding of the customer journey and iteratively refine your model as needed.


![Last-Touch Attribution Model Rplot](https://github.com/IrinaMax/Attribution-Model/assets/16123495/b73c5888-450d-4d61-afda-a64edbaea8ed)

![Time_Decay Attribution Model Barplot](https://github.com/IrinaMax/Attribution-Model/assets/16123495/4082a4a8-3a50-4244-804c-414db3e08c9d)

![Shapley Method for Attribution model Plot3](https://github.com/IrinaMax/Attribution-Model/assets/16123495/db663dfd-93cd-4166-a03f-9b1fe8abb8a8)

