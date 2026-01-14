---
title: Home
layout: page
toc: false
---

<style>
.home-intro {
  max-width: 800px;
  margin: 0 auto;
  padding: 20px;
}

.home-photo {
  float: right;
  width: 180px;
  height: 180px;
  object-fit: cover;
  border-radius: 10px;
  box-shadow: 0 4px 15px rgba(102, 126, 234, 0.2);
  margin: 0 0 20px 30px;
  border: 3px solid #667eea;
}

@media (max-width: 768px) {
  .home-photo {
    float: none;
    width: 140px;
    height: 140px;
    margin: 0 auto 20px;
    display: block;
  }
  
  .home-intro {
    padding: 10px;
  }
}

.home-hero {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  padding: 35px 40px;
  border-radius: 16px;
  margin-bottom: 30px;
  color: #fff;
  box-shadow: 0 8px 30px rgba(102, 126, 234, 0.35);
  position: relative;
  overflow: hidden;
}

.home-hero::before {
  content: '';
  position: absolute;
  top: -50%;
  right: -50%;
  width: 100%;
  height: 100%;
  background: radial-gradient(circle, rgba(255,255,255,0.1) 0%, transparent 70%);
  pointer-events: none;
}

.home-hero .greeting {
  font-size: 1.6em;
  font-weight: 600;
  margin: 0 0 15px 0;
  color: #fff;
}

.home-hero .greeting strong {
  color: #fff;
  font-weight: 700;
}

.home-hero .intro-text {
  margin: 0;
  color: rgba(255,255,255,0.95);
  font-size: 1.1em;
  line-height: 1.75;
  text-align: left;
}

.home-hero .intro-text a {
  color: #ffd700;
  text-decoration: none;
  font-weight: 500;
  transition: all 0.2s ease;
}

.home-hero .intro-text a:hover {
  color: #fff;
  text-decoration: underline;
}

@media (max-width: 768px) {
  .home-hero {
    padding: 25px 22px;
    margin-bottom: 25px;
  }
  
  .home-hero .greeting {
    font-size: 1.35em;
    text-align: center;
  }
  
  .home-hero .intro-text {
    font-size: 1em;
    line-height: 1.65;
  }
}

.home-links {
  margin-top: 25px;
  display: flex;
  flex-wrap: wrap;
  gap: 12px;
}

.home-links a {
  display: inline-block;
  padding: 12px 24px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  border-radius: 8px;
  text-decoration: none !important;
  color: #fff !important;
  font-weight: 500;
  font-size: 0.95em;
  transition: all 0.3s ease;
  box-shadow: 0 3px 12px rgba(102, 126, 234, 0.3);
  border: none !important;
}

.home-links a:hover {
  transform: translateY(-3px);
  box-shadow: 0 6px 20px rgba(102, 126, 234, 0.45);
}

@media (max-width: 768px) {
  .home-links {
    margin-top: 20px;
    gap: 10px;
    justify-content: center;
  }
  
  .home-links a {
    padding: 10px 18px;
    font-size: 0.9em;
  }
}
</style>

<div class="home-intro">
  <img src="/images/photo_home.jpg" alt="Zion Peng" class="home-photo">

  <div class="home-hero">
    <p class="greeting">Hi, I am <strong>Zion Peng</strong>. Welcome to my homepage!</p>
    <p class="intro-text">I am currently an MPhil student at The Hong Kong Polytechnic University (PolyU), supervised by <a href="https://www.polyu.edu.hk/ise/people/academic-staff/xiaoge-zhang/" target="_blank">Prof. Xiaoge Zhang</a>. My research focuses on Machine Learning and Explainable AI (XAI). Here, I share my latest publications, academic updates, and reading notes.</p>
  </div>

  <div class="home-links">
    <a href="/about/">About</a>
    <a href="/internship/">Internship</a>
    <a href="/categories/">Categories</a>
  </div>
</div>
