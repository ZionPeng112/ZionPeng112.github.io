---
title: "Paper Notes: Understanding Individual Units in Deep Neural Networks"
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
<strong>Paper:</strong> Bau, D., Zhu, J.-Y., Strobelt, H., Lapedriza, A., Zhou, B., & Torralba, A. (2020). Understanding the Role of Individual Units in a Deep Neural Network. In <em>Proceedings of the National Academy of Sciences (PNAS)</em>. <a href="/files/Understanding the role of individual units in a deepneural network.pdf" target="_blank" class="paper-link">[PDF]</a>
</div>

## Overview

This paper investigates how individual neurons in deep neural networks encode semantic concepts. The core finding: whether in CNNs (for recognition) or GANs (for generation), **interpretable mechanisms emerge spontaneously**—individual units become carriers of specific semantic concepts.

<!-- more -->

## Conceptual Framework: CNNs vs GANs

### Basic Definitions

Both Convolutional Neural Networks (CNNs) and Generative Adversarial Networks (GANs) belong to the deep neural network family:

- **CNN (Discriminative Model)**: Handles recognition tasks (e.g., image classification). Architecture typically comprises convolutional layers for feature extraction and fully connected layers for final decisions.

- **GAN (Generative Model)**: Handles generation tasks. A game-theoretic framework containing a generator (typically an inverted convolutional network) and a discriminator.

### Core Insight

Regardless of whether the network "sees" (CNN) or "draws" (GAN), similar interpretable mechanisms emerge internally—individual neurons acting as carriers for concrete semantic concepts.

## Hierarchical Representation: From Texture to Concepts

In CNNs, neurons do not perform homogeneous tasks. The network exhibits clear **hierarchical abstraction**:

- **Lower Layers Focus on Details**: Shallow layers primarily respond to colors, edges, and textures
- **Higher Layers Exhibit Semantic Emergence**: As depth increases (e.g., VGG-16's conv5_3), neurons spontaneously learn to detect complete objects or parts

### Empirical Evidence

Despite training data containing only scene labels (no "airplane" or "head" labels), the network spontaneously developed:
- **Unit 150**: Airplane detector
- **Unit 208**: Human head detector

This demonstrates **emergent concept learning** without explicit supervision.

## Causality and Disentanglement

Individual neurons or small combinations can directly correspond to human-recognizable macroscopic concepts. This correspondence is not merely correlational but **causal**:

### Ablation Studies

Through deliberate intervention (deactivating specific neurons), the authors proved these units play substantive roles in inference.

**Example**: For "ski resort" classification, Unit 261 was identified as a "snow" detector. Forcibly deactivating this unit caused ski resort recognition accuracy to drop significantly.

**Implication**: The model isn't memorizing pixels—it's reasoning using the concept of "snow."

## Decision Sparsity: Expert Neurons

CNNs don't rely on "democratic voting" from all parameters. Instead, decisions are highly dependent on a small number of **expert neurons**:

### Key Data Points

For the "ski resort" category:
- Removing only **20 critical units** (snow, mountain, house) causes accuracy to plummet from ~81% to ~53% (near random chance)
- Removing the remaining **492 secondary units** barely affects accuracy

This demonstrates high **decision sparsity** in neural networks.

## Context-Aware Generation in GANs

In GANs, specific neurons are responsible for generating specific objects, exhibiting deep understanding of scene structure:

### Expert Generation Units

Layer 5 contains numerous neurons responsible for drawing "objects."

### Intelligent Inpainting

When deactivating neurons responsible for generating "trees":
- The GAN not only removes trees
- It automatically completes building details previously occluded by trees (windows, walls)

This shows GANs learn **occlusion relationships** and scene statistical structure, not simple pixel collage.

### Environmental Constraints

When attempting to activate "door" neurons:
- The GAN only draws doors in logical locations (on walls)
- It refuses to draw doors in the sky or on trees

## Security and Applications

Based on these insights, we can re-examine model security and interaction at the microscopic level:

### Adversarial Attacks

Attacks on CNNs essentially target expert neurons. Attack algorithms:
- Suppress key units for the correct class (e.g., snow, mountain for ski resort)
- Activate key units for the wrong class (e.g., bed, pillow for bedroom)

### Semantic Editing

For GANs, we can achieve human-AI collaborative creation by manually activating or suppressing specific internal neurons—adding "domes" or removing "trees" directly in images.

## Relationship with Concept Bottleneck Models

This research complements rather than conflicts with Concept Bottleneck Models (CBMs). They represent two core paradigms of explainable AI:

### CBM (Model Design)
- **A priori design**: Explicitly constructs x → Concepts → y architecture
- Forces reasoning through predefined concepts
- Faces the accuracy-interpretability trade-off

### Network Dissection (Post-hoc Analysis)
- Studies standard DNNs (VGG, ResNet) without concept constraints
- Analyzes emergent behavior through end-to-end training

### Key Contribution: Emergence vs. Enforcement

This study proves **spontaneous concept emergence**: even without explicit guidance, deep networks "reinvent" human-understandable concept detectors in intermediate layers (e.g., conv5_3) to optimize their objective function.

**Implication**: Ordinary DNNs internally form an implicit, high-dimensional concept bottleneck.

### Engineering Insight

For practical applications seeking minimal code modification:
- No need to redesign and train complex CBM architectures
- Perform post-hoc dissection on existing high-performance pretrained models
- Locate and extract key "expert neurons"
- Retain standard model performance while gaining CBM-like component-level interpretability and control

## Conclusion

This paper reveals that interpretability may be an inherent property of deep learning, not something that must be engineered from scratch. By understanding the role of individual units, we can build more transparent, debuggable, and controllable AI systems.

---

*This is a reading note from my study of interpretable machine learning methods.*
