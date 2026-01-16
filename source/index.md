---
title: Home
layout: page
toc: false
---

<style>
/* Hide page title */
.post-title {
  display: none;
}

/* Main container */
.home-container {
  max-width: 850px;
  margin: 0 auto;
  padding: 30px 20px;
}

/* Header section with photo and intro */
.home-header {
  display: flex;
  align-items: flex-start;
  gap: 40px;
  margin-bottom: 40px;
}

/* Photo styling */
.home-photo {
  width: 180px;
  height: 180px;
  object-fit: cover;
  border-radius: 12px;
  box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
  flex-shrink: 0;
}

/* Text content area */
.home-content {
  flex: 1;
}

/* Greeting */
.home-greeting {
  font-size: 1.5em;
  font-weight: 600;
  color: #333;
  margin: 0 0 20px 0;
  line-height: 1.4;
}

.home-greeting strong {
  color: #667eea;
}

/* Introduction paragraphs */
.home-intro {
  color: #555;
  font-size: 1.05em;
  line-height: 1.8;
  margin: 0;
}

.home-intro p {
  margin: 0 0 15px 0;
}

.home-intro p:last-child {
  margin-bottom: 0;
}

.home-intro a {
  color: #667eea;
  text-decoration: none;
  font-weight: 500;
  transition: color 0.2s ease;
}

.home-intro a:hover {
  color: #5a6fd6;
  text-decoration: none;
}

/* Navigation buttons */
.home-nav {
  display: flex;
  justify-content: center;
  gap: 20px;
  margin-top: 40px;
  padding-top: 30px;
  border-top: 1px solid #eee;
}

.home-nav a {
  display: inline-block;
  padding: 12px 28px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  border-radius: 8px;
  text-decoration: none !important;
  color: #fff !important;
  font-weight: 500;
  font-size: 0.95em;
  transition: all 0.3s ease;
  box-shadow: 0 3px 12px rgba(102, 126, 234, 0.25);
  min-width: 100px;
  text-align: center;
}

.home-nav a:hover {
  transform: translateY(-3px);
  box-shadow: 0 6px 20px rgba(102, 126, 234, 0.4);
}

/* Responsive design */
@media (max-width: 768px) {
  .home-container {
    padding: 20px 15px;
  }

  .home-header {
    flex-direction: column;
    align-items: center;
    text-align: center;
    gap: 25px;
  }

  .home-photo {
    width: 150px;
    height: 150px;
  }

  .home-greeting {
    font-size: 1.3em;
  }

  .home-intro {
    font-size: 1em;
  }

  .home-nav {
    flex-wrap: wrap;
    gap: 12px;
    justify-content: center;
  }

  .home-nav a {
    padding: 10px 22px;
    min-width: 90px;
  }
}
</style>

<div class="home-container">
  <div class="home-header">
    <img src="/images/photo_home.jpg" alt="Zion Peng" class="home-photo">
    
    <div class="home-content">
      <h2 class="home-greeting">Hi, I am <strong>Zion Peng</strong>.<br>Welcome to my homepage!</h2>
      
      <div class="home-intro">
        <p>I am currently an MPhil student at The Hong Kong Polytechnic University (PolyU), supervised by <a href="https://www.polyu.edu.hk/ise/people/academic-staff/xiaoge-zhang/" target="_blank">Prof. Xiaoge Zhang</a>.</p>
        
        <p>My research focuses on Machine Learning and Explainable AI (XAI).</p>
        
        <p>Here, I share my latest publications, academic updates, and reading notes.</p>
      </div>
    </div>
  </div>

  <div class="home-nav">
    <a href="/about/">About</a>
    <a href="/internship/">Internship</a>
    <a href="/blog/">Blog</a>
    <a href="/categories/">Categories</a>
  </div>
</div>
