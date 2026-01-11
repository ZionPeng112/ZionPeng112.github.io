---
title: "Paper Notes: Interactive Attention Alignment"
date: 2026-01-10 10:00:00
categories:
  - DNN
mathjax: true
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
<strong>Paper:</strong> Gao, Y., Sun, T., Zhao, L., & Hong, S. (2022). Aligning Eyes between Humans and Deep Neural Network through Interactive Attention Alignment. <a href="/files/Aligning Eyes between Humans and Deep Neural Network through Interactive Attention Alignment.pdf" target="_blank" class="paper-link">[PDF]</a>
</div>

## Overview

This paper addresses a critical flaw in CNN predictions: **spurious correlations**. The authors propose the **Reasonability Matrix** and the **GRADIA algorithm** as solutions, enabling human experts to interactively correct model attention through visual annotations.

<!-- more -->

## The Problem: High Accuracy ≠ High Intelligence

A model can achieve high accuracy while learning to "cheat." The classic example: an AI correctly identifies a "female" in a photo—not by recognizing gender-specific features, but by detecting a "kitchen" in the background. This reliance on **spurious correlations** is dangerous. Once the background changes to a tennis court, the model fails catastrophically.

## The Reasonability Matrix

The paper's most elegant insight is extending model evaluation from a one-dimensional metric (accuracy) to a two-dimensional framework (accuracy + reasonability).

### Traditional Evaluation
We typically focus on two outcomes:
- **Accurate**: Correct prediction
- **Inaccurate**: Wrong prediction

### The IAA Framework
The Interactive Attention Alignment (IAA) framework introduces the **attention dimension**:

- **Reasonable**: Model focuses on the core object (e.g., the tennis player)
- **Unreasonable**: Model focuses on the background (e.g., the tennis court)

This creates four quadrants, with the most dangerous being: **Unreasonable Accurate (UA)**—samples where the model "got lucky." Traditional fine-tuning often ignores these samples (since loss is minimal), but they are precisely where **hidden biases** reside.

**Core Insight**: We must penalize not only students who answer incorrectly, but also those who cheat (look at the background) to get the right answer.

## The GRADIA Algorithm

To correct the model's "gaze," the paper proposes **GRADIA (Gradient-based Attention Alignment)**.

### Mathematical Foundation: Multi-task Learning

From an implementation perspective, GRADIA is essentially a **multi-task learning** framework. It modifies the traditional loss function:

$$L_{total} = L_{prediction} + \lambda \cdot L_{attention}$$

Where:
- $L_{prediction}$: Traditional cross-entropy loss for prediction accuracy
- $L_{attention}$: Attention loss measuring the distance between the model's saliency map (e.g., Grad-CAM) and human expert annotations

### Dynamic Weight Adjustment

GRADIA's elegance lies in its sample-specific treatment:

For **UA (Unreasonable Accurate)** samples:
- Since predictions are already correct, the algorithm **reduces** $L_{prediction}$ weight
- Simultaneously **increases** $L_{attention}$ weight significantly

This aligns with the principle of minimal code modification—we don't need to redesign the network architecture. We simply extract gradient heatmaps during the training loop and incorporate them as a **regularization term** in the loss function.

## Key Takeaways

1. **Beyond Accuracy**: Model evaluation must consider both *what* the model predicts and *why* it makes that prediction
2. **Human-in-the-Loop**: Expert annotations provide ground truth for attention, enabling systematic bias correction
3. **Practical Implementation**: GRADIA requires minimal architectural changes—just an additional loss term during training

## Conclusion

The IAA framework represents a paradigm shift in model debugging. Rather than blindly adjusting hyperparameters when models fail, we can now systematically identify and correct attention-level errors through human-AI collaboration.

---

*This is a reading note from my study of interpretable machine learning methods.*
