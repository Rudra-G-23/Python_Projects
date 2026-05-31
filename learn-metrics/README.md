## 1. ML Metrics Summary


| **Metric**               | **Type**                       | **Used For**                | **Explanation (Short)**                                              |
| ------------------------ | ------------------------------ | --------------------------- | -------------------------------------------------------------------- |
| **Accuracy**             | Classification                 | Balanced classes            | Ratio of correct predictions to total predictions.                   |
| **Precision**            | Classification                 | Imbalanced classes          | TP / (TP + FP) – How many predicted positives are actually correct.  |
| **Recall (Sensitivity)** | Classification                 | Imbalanced classes          | TP / (TP + FN) – How many actual positives are correctly identified. |
| **F1 Score**             | Classification                 | Imbalanced, overall balance | Harmonic mean of precision and recall.                               |
| **AUC-ROC**              | Classification (Binary)        | Class separation            | Measures the area under the ROC curve (higher = better separation).  |
| **Log Loss**             | Classification (Probabilistic) | Probabilistic models        | Penalizes false classifications with higher confidence more.         |
| **Confusion Matrix**     | Classification                 | All classification types    | Table showing TP, FP, TN, FN.                                        |
| **Balanced Accuracy**    | Classification                 | Imbalanced datasets         | Average of recall per class.                                         |
| **Top-K Accuracy**       | Classification (Multi-class)   | Ranking models              | Checks if correct label is in top K predicted labels.                |
| **Hamming Loss**         | Multi-label Classification     | Multi-label tasks           | Fraction of wrong labels to total labels.                            |


---


## 2. Regression Metrics


| **Metric**                    | **Used For** | **Explanation (Short)**                                          |
| ----------------------------- | ------------ | ---------------------------------------------------------------- |
| **MSE (Mean Squared Error)**  | Regression   | Average squared difference between predicted and actual values.  |
| **RMSE (Root MSE)**           | Regression   | Square root of MSE, interpretable in original units.             |
| **MAE (Mean Absolute Error)** | Regression   | Average absolute difference between predicted and actual values. |
| **R² (R-squared)**            | Regression   | Proportion of variance explained by the model.                   |
| **Adjusted R²**               | Regression   | R² adjusted for number of features (penalizes overfitting).      |
| **MAPE**                      | Regression   | Mean Absolute Percentage Error – shows % error.                  |
| **MSLE**                      | Regression   | Mean Squared Log Error – for targets that vary exponentially.    |



---


## 3. Clustering Metrics

| **Metric**                  | **Used For**        | **Explanation (Short)**                                   |
| --------------------------- | ------------------- | --------------------------------------------------------- |
| **Silhouette Score**        | Clustering          | Measures how well clusters are separated. Range \[-1, 1]. |
| **Calinski-Harabasz Index** | Clustering          | Ratio of between-cluster to within-cluster dispersion.    |
| **Davies-Bouldin Index**    | Clustering          | Lower is better; measures similarity between clusters.    |
| **Inertia (WCSS)**          | Clustering (KMeans) | Sum of squared distances to nearest cluster center.       |



---


## 4. Ranking 


| **Metric**                    | **Used For**        | **Explanation (Short)**                                                    |
| ----------------------------- | ------------------- | -------------------------------------------------------------------------- |
| **Precision\@K**              | Ranking             | Precision at top K predictions.                                            |
| **Recall\@K**                 | Ranking             | Recall at top K predictions.                                               |
| **MAP (Mean Avg. Precision)** | Ranking             | Mean of average precisions across queries.                                 |
| **NDCG**                      | Ranking             | Normalized Discounted Cumulative Gain – rewards correct order in rankings. |
| **Hit Rate\@K**               | Recommender Systems | Whether true item is in top-K recommendation list.                         |


---