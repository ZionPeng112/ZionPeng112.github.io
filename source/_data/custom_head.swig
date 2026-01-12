<style>
/* ============================================
   COLOR SCHEME - Elegant Purple & Blue Theme
   ============================================ */
:root {
  --primary-color: #667eea;
  --primary-dark: #5a67d8;
  --accent-color: #764ba2;
  --text-primary: #333;
  --text-secondary: #666;
  --bg-light: #f8f9fa;
  --border-light: #e9ecef;
}

/* ============================================
   GLOBAL TEXT - Better Word Breaking
   ============================================ */
* {
  word-wrap: break-word;
  overflow-wrap: break-word;
}

.post-body,
.post-body p,
.content,
p {
  text-align: left !important;
  hyphens: auto;
  -webkit-hyphens: auto;
}

/* ============================================
   FIX TOP BLACK BAR - Remove all dark headers
   ============================================ */
.headband {
  display: none !important;
  height: 0 !important;
}

.header-inner,
.site-brand-container,
header.header,
.header {
  background: transparent !important;
  border: none !important;
}

/* ============================================
   SITE TITLE - Hide
   ============================================ */
.logo-line,
.site-title,
.site-title a,
.brand {
  display: none !important;
}

.brand {
  background: transparent !important;
  border: none !important;
  box-shadow: none !important;
}

.site-meta {
  background: transparent !important;
  border: none !important;
}

/* ============================================
   NAVIGATION MENU - More Prominent
   ============================================ */
.menu {
  display: flex !important;
  justify-content: center !important;
  gap: 8px !important;
  padding: 12px 0 !important;
  margin: 10px 0 20px 0 !important;
  border-bottom: 1px solid var(--border-light) !important;
}

.menu-item {
  margin: 0 !important;
}

.menu-item a {
  color: var(--text-primary) !important;
  font-size: 1em !important;
  font-weight: 500 !important;
  padding: 8px 16px !important;
  border-radius: 6px !important;
  transition: all 0.3s ease !important;
  display: inline-block !important;
}

.menu-item a:hover {
  color: #fff !important;
  background: linear-gradient(135deg, var(--primary-color) 0%, var(--accent-color) 100%) !important;
}

.menu-item-active a {
  color: #fff !important;
  background: linear-gradient(135deg, var(--primary-color) 0%, var(--accent-color) 100%) !important;
}

/* ============================================
   SIDEBAR STYLING - Always Visible
   ============================================ */
.sidebar {
  background: #fff !important;
  visibility: visible !important;
  transform: none !important;
}

.sidebar-inner {
  background: #fff !important;
  padding: 20px !important;
}

/* Hide sidebar toggle button */
.sidebar-toggle {
  display: none !important;
}

/* ============================================
   TABLE OF CONTENTS - COMPLETELY HIDDEN
   ============================================ */
.post-toc-wrap,
.post-toc,
.toc,
.toc-wrap,
.sidebar-panel-container,
.sidebar-nav,
#table-of-contents {
  display: none !important;
  visibility: hidden !important;
  height: 0 !important;
  overflow: hidden !important;
}

/* ============================================
   SIDEBAR PROFILE - Enhanced
   ============================================ */
.site-author-image {
  width: 100px !important;
  height: 100px !important;
  border: 3px solid var(--primary-color) !important;
  box-shadow: 0 4px 12px rgba(102, 126, 234, 0.25) !important;
  margin-bottom: 15px !important;
}

.site-author-name {
  display: block !important;
  color: var(--text-primary) !important;
  font-weight: 600 !important;
  font-size: 1.2em !important;
  margin-bottom: 8px !important;
}

.site-description {
  display: none !important;
}

/* Site State - Hide */
.site-state {
  display: none !important;
}

/* Research Interest Box */
.site-overview {
  display: block !important;
}

.links-of-author {
  margin-top: 15px !important;
  padding-top: 15px !important;
  border-top: 1px solid var(--border-light) !important;
}

.links-of-author a {
  color: var(--primary-color) !important;
  margin: 0 10px !important;
  transition: all 0.3s ease !important;
  text-decoration: none !important;
  border: none !important;
  font-size: 1.3em !important;
}

.links-of-author a:hover {
  color: var(--accent-color) !important;
}

/* ============================================
   HEADINGS
   ============================================ */
.post-body h1,
.post-body h2 {
  border-bottom: 2px solid var(--primary-color) !important;
  padding-bottom: 8px !important;
}

.post-body h2::before {
  color: var(--accent-color) !important;
}

/* ============================================
   LINKS
   ============================================ */
.post-body a {
  color: var(--primary-color) !important;
  border-bottom: 1px dashed var(--primary-color) !important;
  transition: all 0.3s ease !important;
}

.post-body a:hover {
  color: var(--accent-color) !important;
  border-bottom-style: solid !important;
}

/* ============================================
   CATEGORY & TAG BADGES
   ============================================ */
.category-list-link,
.tag-list-link {
  color: var(--primary-color) !important;
}

.category-list-link:hover,
.tag-list-link:hover {
  color: var(--accent-color) !important;
}

.post-category,
.post-meta a {
  color: var(--primary-color) !important;
}

/* ============================================
   BUTTONS & INTERACTIVE ELEMENTS
   ============================================ */
.btn,
.button {
  background: linear-gradient(135deg, var(--primary-color) 0%, var(--accent-color) 100%) !important;
  color: #fff !important;
  border: none !important;
  border-radius: 5px !important;
  transition: all 0.3s ease !important;
}

.btn:hover,
.button:hover {
  box-shadow: 0 4px 12px rgba(102, 126, 234, 0.4) !important;
  transform: translateY(-2px) !important;
}

/* ============================================
   SPACING ADJUSTMENTS
   ============================================ */
.site-header {
  margin-top: 0 !important;
  padding-top: 5px !important;
  margin-bottom: 10px !important;
  background: transparent !important;
}

.brand {
  margin-top: 0 !important;
  padding-top: 0 !important;
  margin-bottom: 0 !important;
}

.site-meta {
  margin-top: 0 !important;
  padding-top: 0 !important;
  margin-bottom: 10px !important;
}

.main-inner {
  padding-top: 10px !important;
  margin-top: 0 !important;
}

.post-block,
.post-body,
.post,
.page {
  margin-top: 0 !important;
  padding-top: 0 !important;
}

/* ============================================
   MOBILE OPTIMIZATION
   ============================================ */
body {
  word-wrap: break-word !important;
  overflow-wrap: break-word !important;
  word-break: break-word !important;
  -webkit-hyphens: auto !important;
  hyphens: auto !important;
}

@media (max-width: 768px) {
  .post-body,
  .post-body p,
  .post-body li,
  .home-section,
  .home-section p,
  .home-section li,
  .home-banner p {
    text-align: left !important;
    word-spacing: normal !important;
  }
  
  .home-section {
    padding: 15px 18px !important;
  }
  
  .home-banner {
    padding: 20px !important;
  }
  
  .home-section li {
    font-size: 0.95em !important;
    line-height: 1.6 !important;
  }
  
  .home-section li strong {
    display: inline !important;
    white-space: normal !important;
  }
}

/* ============================================
   MISCELLANEOUS
   ============================================ */
.site-state-item-posts {
  display: none !important;
}

.back-to-top {
  background: var(--primary-color) !important;
  color: #fff !important;
}

.back-to-top:hover {
  background: var(--accent-color) !important;
}

::selection {
  background: var(--primary-color) !important;
  color: #fff !important;
}

/* ============================================
   READ MORE BUTTON
   ============================================ */
.post-button,
.post-button a,
a.btn,
.btn {
  background: linear-gradient(135deg, var(--primary-color) 0%, var(--accent-color) 100%) !important;
  color: #fff !important;
  border: none !important;
  border-radius: 4px !important;
  padding: 5px 14px !important;
  font-size: 0.85em !important;
  font-weight: 500 !important;
  text-decoration: none !important;
  display: inline-block !important;
  transition: all 0.3s ease !important;
  box-shadow: 0 1px 4px rgba(102, 126, 234, 0.25) !important;
}

.post-button:hover,
.post-button a:hover,
a.btn:hover,
.btn:hover {
  transform: translateY(-1px) !important;
  box-shadow: 0 2px 8px rgba(102, 126, 234, 0.35) !important;
  color: #fff !important;
}

.post-button .btn,
.post-button a {
  color: #fff !important;
  text-shadow: none !important;
}

a[rel="more"] {
  background: linear-gradient(135deg, var(--primary-color) 0%, var(--accent-color) 100%) !important;
  color: #fff !important;
  padding: 5px 14px !important;
  border-radius: 4px !important;
  text-decoration: none !important;
  border: none !important;
  font-size: 0.85em !important;
  font-weight: 500 !important;
  transition: all 0.3s ease !important;
}

/* ============================================
   PDF LINK
   ============================================ */
.paper-link {
  text-decoration: none !important;
  border: none !important;
  border-bottom: none !important;
}

.paper-link:hover {
  text-decoration: none !important;
  border: none !important;
  border-bottom: none !important;
}

/* ============================================
   SCROLLBAR
   ============================================ */
::-webkit-scrollbar {
  width: 8px;
  height: 8px;
}

::-webkit-scrollbar-track {
  background: var(--bg-light);
}

::-webkit-scrollbar-thumb {
  background: var(--primary-color);
  border-radius: 4px;
}

::-webkit-scrollbar-thumb:hover {
  background: var(--accent-color);
}
</style>

<!-- Research Interests Box -->
<script>
document.addEventListener('DOMContentLoaded', function() {
  var siteOverview = document.querySelector('.site-overview');
  if (siteOverview && !document.querySelector('.research-interests')) {
    var researchBox = document.createElement('div');
    researchBox.className = 'research-interests';
    researchBox.innerHTML = '<strong>Research Interests</strong><br>Machine Learning · Data Mining · AI Security';
    researchBox.style.cssText = 'margin-top: 15px; padding: 12px; background: #f8f9fa; border-radius: 6px; border-left: 3px solid #667eea; font-size: 0.9em; color: #666; line-height: 1.6;';
    siteOverview.appendChild(researchBox);
  }
});
</script>
