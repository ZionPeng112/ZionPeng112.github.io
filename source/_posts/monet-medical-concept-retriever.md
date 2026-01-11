---
title: "Paper Notes: MONET - Medical Concept Retriever"
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
<strong>Paper:</strong> Kim, C., Gadgil, S. U., DeGrave, A. J., Omiye, J. A., Cai, Z. R., Daneshjou, R., & Lee, S.-I. (2024). Transparent Medical Image AI via an Image-Text Foundation Model Grounded in Medical Literature. In <em>Nature Medicine</em>. <a href="/files/Transparent medical image AI via an image–text foundation model grounded in medical literature.pdf" target="_blank" class="paper-link">[PDF]</a>
</div>

## Overview

**MONET (Medical Concept Retriever)** is an improved version of OpenAI's CLIP model, specifically designed as a medical concept extractor. It assigns interpretable concept scores to medical images and enables transparent AI diagnosis through Concept Bottleneck Models (CBMs).

<!-- more -->

## What is MONET?

MONET functions as a **concept extractor** or **retriever** for medical images:

- **Input**: A medical image (e.g., dermoscopy image)
- **Output**: Concept scores indicating the presence of features like "asymmetry," "ulceration," or "erythema"
- **Downstream Application**: When used to construct a CBM, these concept scores are fed into a linear classifier for final diagnosis (e.g., benign vs. malignant)

## Training Data: Knowledge Distillation from Literature

One of MONET's key innovations is its **label-free training paradigm**:

- **No Manual Annotation Required**: Unlike traditional approaches requiring expensive medical image labeling
- **Data Source**: PubMed articles and medical textbooks
- **Approach**: "Knowledge distillation" from existing expert knowledge in medical literature captions
- **Paradigm**: The model learns image-text correspondences through AI, enabling supervised learning without dedicated annotations

## Technical Core: Contrastive Learning

### Training Phase

The model architecture consists of:
- **Image Encoder**: Vision Transformer (ViT)
- **Text Encoder**: Transformer

**Objective**: Pull "matched image-text pairs" closer while pushing "unmatched pairs" apart.

**Loss Function**: Contrastive loss optimized via cosine similarity.

### Inference Phase: Solving Score Drift

When constructing CBMs, raw similarity scores cannot be used directly. The paper proposes an elegant **normalization method**:

$$p' = \frac{\exp(sim(I, T_{target}) / \lambda)}{\exp(sim(I, T_{target}) / \lambda) + \sum \exp(sim(I, T_{reference}) / \lambda)}$$

**Key Innovation**: Introduction of **reference concepts** (typically antonyms).

Instead of asking "Does this image have ulceration?", the model asks "How much more does this image resemble 'has ulceration' compared to 'no ulceration'?"

This significantly improves the **robustness** of concept scoring.

## Applications

### Transparent Diagnosis Pipeline

The CBM architecture enables:
```
Image → Concepts → Linear Model → Prediction
```

- **Full Transparency**: Linear weighting makes the decision process completely interpretable
- **Dynamic Adjustment**: Physicians can adjust concept weights to fine-tune model behavior

### Auditing Capabilities: AI Debugging AI

MONET serves as a powerful debugging tool, revealing "hidden traps" in datasets:

**Data Auditing**:
- Discovered benign datasets contained "orange stickers"
- Malignant datasets contained "purple pen marks"
- Black-box models easily learn these shortcuts instead of actual pathology

**Model Auditing**:
- Identified performance degradation during cross-hospital transfer
- Root cause: Over-reliance on the "red" feature
- Camera color bias across hospitals caused "red" to indicate malignancy at one hospital but benignity at another

## Key Takeaways

1. **Label-Free Learning**: Medical literature provides rich supervision signals without manual annotation
2. **Relative Scoring**: Reference concepts dramatically improve concept extraction reliability
3. **Systematic Auditing**: MONET exposes both data biases and model shortcuts that would remain invisible in black-box systems

## Conclusion

MONET demonstrates that transparent medical AI is achievable without sacrificing performance. By grounding vision-language models in medical literature and enabling systematic auditing, it paves the way for trustworthy clinical AI deployment.

---

*This is a reading note from my study of interpretable machine learning methods.*
