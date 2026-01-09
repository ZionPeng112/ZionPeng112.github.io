---
title: Home
layout: page
toc: true
---

<style>
.home-intro {
  max-width: 800px;
  margin: 0 auto;
  padding: 40px 20px;
}

.home-photo {
  float: right;
  width: 200px;
  height: 200px;
  object-fit: cover;
  border-radius: 10px;
  box-shadow: 0 2px 8px rgba(0,0,0,0.1);
  margin: 0 0 20px 30px;
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

.home-section {
  margin-bottom: 30px;
}

.home-links {
  margin-top: 40px;
  padding-top: 30px;
  border-top: 1px solid #eee;
}

.home-links a {
  display: inline-block;
  margin-right: 20px;
  margin-bottom: 10px;
  padding: 10px 20px;
  background: #f5f5f5;
  border-radius: 5px;
  text-decoration: none;
  color: #333;
  transition: background 0.3s;
}

.home-links a:hover {
  background: #e0e0e0;
}
</style>

<div class="home-intro">
  <img src="/images/photo_home.jpg" alt="Zion Peng" class="home-photo">

  <h1>Hi, I'm Zion Peng 😊</h1>

  <p>I am a scholar passionate about implementing effective, high-reliability machine learning methods to address real-world problems.</p>

  <p>Welcome to my homepage, where I share my latest projects, academic growth, and key milestones.</p>

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
    <a href="/about/">Learn More About Me</a>
    <a href="/internship/">View My Internships</a>
    <a href="/blog/">Read My Blog</a>
    <a href="/categories/">Browse Categories</a>
  </div>
</div>
