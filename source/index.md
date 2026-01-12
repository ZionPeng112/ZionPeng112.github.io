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
    width: 150px;
    height: 150px;
    margin: 0 auto 20px;
    display: block;
  }
}

.home-banner {
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  padding: 25px 30px;
  border-radius: 10px;
  margin-bottom: 30px;
  color: #fff;
  box-shadow: 0 4px 15px rgba(102, 126, 234, 0.3);
}

.home-banner h1 {
  margin: 0 0 15px 0 !important;
  color: #fff !important;
  border: none !important;
  font-size: 1.8em;
}

.home-banner p {
  margin: 0;
  color: rgba(255,255,255,0.95);
  font-size: 1.05em;
  line-height: 1.6;
}

.home-section {
  margin-bottom: 25px;
  padding: 20px 25px;
  background: #f8f9fa;
  border-radius: 8px;
  border-left: 4px solid #667eea;
}

.home-section h2 {
  margin-top: 0 !important;
  color: #333 !important;
  font-size: 1.3em;
  border: none !important;
}

.home-section ul {
  margin-bottom: 0;
}

.home-section li {
  margin-bottom: 8px;
  line-height: 1.6;
}

.home-links {
  margin-top: 30px;
  display: flex;
  flex-wrap: wrap;
  gap: 12px;
}

.home-links a {
  display: inline-block;
  padding: 12px 24px;
  background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
  border-radius: 6px;
  text-decoration: none !important;
  color: #fff !important;
  font-weight: 500;
  transition: all 0.3s ease;
  box-shadow: 0 2px 8px rgba(102, 126, 234, 0.3);
  border: none !important;
}

.home-links a:hover {
  transform: translateY(-2px);
  box-shadow: 0 4px 15px rgba(102, 126, 234, 0.4);
}
</style>

<div class="home-intro">
  <img src="/images/photo_home.jpg" alt="Zion Peng" class="home-photo">

  <div class="home-banner">
    <p>I am a scholar passionate about implementing effective, high-reliability machine learning methods to address real-world problems. Welcome to my homepage, where I share my latest projects, academic growth, and key milestones.</p>
  </div>

  <div class="home-section">
    <h2>What I Do</h2>
    <ul>
      <li><strong>Machine Learning & Research</strong>: Developing robust, data-driven solutions with a focus on efficient and scalable ML methodologies.</li>
      <li><strong>Academic Writing & Knowledge Sharing</strong>: Synthesizing complex technical concepts into structured notes and scholarly articles.</li>
      <li><strong>Minimalist Tooling</strong>: Engineering streamlined Python scripts, automations, and side projects designed for maximum impact with minimal overhead.</li>
    </ul>
  </div>

  <div class="home-section">
    <h2>Beyond Code</h2>
    <p>Outside of tech, I enjoy traveling and exploring new cultures worldwide. I value time spent to 'clear my mind', as it allows me to recalibrate my perspective and refine how I think and work.</p>
  </div>

  <div class="home-links">
    <a href="/about/">About Me</a>
    <a href="/internship/">Internships</a>
    <a href="/blog/">Blog</a>
    <a href="/categories/">Categories</a>
  </div>
</div>
