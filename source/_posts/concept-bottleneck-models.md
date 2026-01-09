---
title: "Paper Notes: Concept Bottleneck Models"
date: 2026-01-10 10:00:00
categories:
  - DNN
---

<style>
.paper-link {
  margin-left: 8px;
  text-decoration: none;
  color: #c65353;
  font-weight: bold;
  font-size: 1em;
}
.paper-link:hover {
  color: #a04040;
  text-decoration: underline;
}
.paper-info {
  background: #f9f9f9;
  padding: 15px 20px;
  border-radius: 8px;
  margin-bottom: 25px;
  border-left: 4px solid #c65353;
}
</style>

<div class="paper-info">
<strong>Paper:</strong> Koh, P. W., Nguyen, T., Tang, Y. S., Mussmann, S., Pierson, E., Kim, B., & Liang, P. (2020). Concept Bottleneck Models. In <em>Proceedings of the 37th International Conference on Machine Learning (ICML 2020)</em>. <a href="/files/Concept Bottleneck Models.pdf" target="_blank" class="paper-link">[PDF]</a>
</div>

## Overview

**Concept Bottleneck Models (CBMs)** are a novel neural network architecture proposed to address the "black box" problem in deep learning. The core idea is to introduce an intermediate layer of human-interpretable concepts between the input and the final prediction, making the model's decision process transparent and explainable.

## The Black Box Problem in DNNs

Traditional Deep Neural Networks (DNNs) are end-to-end models - you feed in an input (e.g., an image) and get an output (e.g., a classification label). But what happens in between? The intermediate layers consist of millions of parameters that form a "black box" that is nearly impossible to interpret.

In both academia and industry, the common practice has been: **stack more parameters, feed more data**. This approach works well for improving accuracy, but it comes with significant limitations:

- **No transparency**: We cannot know what the model has actually learned
- **Potential bias**: The model might learn spurious correlations rather than meaningful features
- **Limited interpretability**: We can only indirectly assess model quality through metrics like accuracy
- **Poor generalization**: Without understanding what was learned, ensuring robust generalization is difficult

## How CBMs Work

CBMs introduce a fundamentally different approach:

1. **Concept Layer**: Instead of directly mapping inputs to outputs, CBMs first predict a set of human-defined concepts
2. **Expert Knowledge**: Domain experts identify relevant features (concepts) for the task
3. **Concept Annotation**: Training data is annotated with these concept labels
4. **Two-Stage Prediction**: Input → Concepts → Final Prediction

### Example: Bird Species Classification

For identifying bird species, human experts might define concepts such as:
- Wing color
- Beak shape
- Eye color
- Feather patterns
- Body size

The model first predicts these concepts from the image, then uses them to make the final species prediction.

## Why This Matters

### 1. Explainability
We can now see **what features** the model uses for its decisions. If the model predicts "sparrow," we can check which concepts contributed to that prediction.

### 2. Human Intervention
When the model makes mistakes, we can:
- Identify which concept predictions were wrong
- Manually correct those concept values
- Get updated predictions based on corrected concepts

This is a huge improvement over traditional DNNs where you could only blindly adjust parameters hoping for better results.

### 3. Domain-Specific Applications

CBMs are particularly valuable in high-stakes domains like **medical diagnosis**:

- **Example: Bone Fracture Detection**
  - Traditional DNN: Black box prediction of "fracture" or "no fracture"
  - CBM approach: First predict concepts like "bone gap width," "bone density," "alignment," then make diagnosis
  - The model actually learns the **underlying principles** that doctors use for diagnosis

### 4. Debugging and Trust

- We can verify if the model learned the right features
- We can identify when the model relies on spurious correlations
- We can build trust by examining concept-level predictions

## My Understanding

The fundamental insight of CBMs is that **interpretability and accuracy don't have to be trade-offs**. By leveraging human expert knowledge to define meaningful intermediate representations, we can:

1. **Break open the black box**: Transform abstract neural activations into human-understandable concepts
2. **Enable meaningful debugging**: Instead of random hyperparameter tuning, we can systematically identify and fix concept-level errors
3. **Achieve true understanding**: The model learns the actual reasoning principles, not just statistical correlations from data

The cost is human effort in concept definition and annotation, but for domains where explainability matters (healthcare, legal, finance), this investment is absolutely worthwhile.

This represents a shift from "throw more data and parameters at the problem" to "teach the model to think like domain experts do."

## Conclusion

Concept Bottleneck Models offer a principled approach to interpretable machine learning. While they require additional human effort for concept engineering, they provide unprecedented insight into model behavior and enable human-AI collaboration in ways that traditional DNNs cannot.

---

*This is a reading note from my study of interpretable machine learning methods.*
