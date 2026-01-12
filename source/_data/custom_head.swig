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
   GLOBAL TEXT
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
   FIX TOP BLACK BAR
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

.site-meta {
  background: transparent !important;
  border: none !important;
}

/* ============================================
   NAVIGATION MENU
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
   SIDEBAR - Hidden by default, overlay on open
   ============================================ */
/* Make main content full width - sidebar doesn't take space */
.main {
  width: 100% !important;
  padding-left: 0 !important;
}

/* Override sidebar-active padding on large screens */
.sidebar-active {
  padding-left: 0 !important;
}

@media (min-width: 1200px) {
  .sidebar-active {
    padding-left: 0 !important;
  }
}

.main-inner {
  max-width: 900px !important;
  margin: 0 auto !important;
  width: 100% !important;
}

/* Hide default sidebar completely */
.sidebar {
  position: fixed !important;
  left: -320px !important;
  top: 0 !important;
  width: 280px !important;
  height: 100vh !important;
  background: #fff !important;
  z-index: 10000 !important;
  transition: left 0.3s ease !important;
  box-shadow: none !important;
  overflow-y: auto !important;
  padding-top: 0 !important;
}

/* Show sidebar when open */
body.sidebar-open .sidebar {
  left: 0 !important;
  box-shadow: 4px 0 20px rgba(0,0,0,0.15) !important;
}

/* Overlay background */
.sidebar-overlay {
  display: none;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background: rgba(0,0,0,0.3);
  z-index: 9999;
}

body.sidebar-open .sidebar-overlay {
  display: block;
}

/* Sidebar inner content */
.sidebar-inner {
  background: #fff !important;
  padding: 45px 20px 25px 20px !important;
  display: block !important;
  visibility: visible !important;
}

/* Hide NexT default toggle */
.sidebar-toggle {
  display: none !important;
}

/* Custom toggle button - same style as back-to-top */
#profile-btn {
  position: fixed;
  left: 30px;
  bottom: 45px;
  width: 26px;
  height: 26px;
  background: var(--primary-color);
  cursor: pointer;
  z-index: 9998;
  display: flex;
  align-items: center;
  justify-content: center;
  border: none;
  opacity: 0.8;
  transition: opacity 0.2s ease;
}

#profile-btn:hover {
  opacity: 1;
  color: #87daff;
}

/* Menu icon (3 lines) - same size as back-to-top icon */
#profile-btn .menu-icon {
  width: 14px;
  height: 10px;
  display: flex;
  flex-direction: column;
  justify-content: space-between;
}

#profile-btn .menu-icon span {
  display: block;
  height: 2px;
  width: 100%;
  background: #fff;
  border-radius: 1px;
}

@media (max-width: 991px) {
  #profile-btn {
    left: 20px;
    opacity: 1;
  }
}

/* Close button inside sidebar */
#sidebar-close {
  position: absolute;
  top: 12px;
  right: 12px;
  width: 28px;
  height: 28px;
  background: var(--bg-light);
  border: none;
  border-radius: 50%;
  cursor: pointer;
  display: flex;
  align-items: center;
  justify-content: center;
  transition: background 0.2s ease;
  z-index: 10001;
  font-size: 14px;
  color: var(--text-secondary);
}

#sidebar-close:hover {
  background: var(--primary-color);
  color: #fff;
}

/* ============================================
   TABLE OF CONTENTS - HIDDEN (but keep sidebar content)
   ============================================ */
.post-toc-wrap,
.post-toc,
.toc,
.toc-wrap,
.sidebar-nav,
#table-of-contents {
  display: none !important;
}

/* Ensure sidebar panel container is visible */
.sidebar-panel-container {
  display: block !important;
  visibility: visible !important;
}

.sidebar-panel {
  display: block !important;
  visibility: visible !important;
}

/* ============================================
   ENSURE SIDEBAR CONTENT IS VISIBLE
   ============================================ */
.site-author {
  display: block !important;
  visibility: visible !important;
}

.site-overview {
  display: block !important;
  visibility: visible !important;
}

.links-of-author {
  display: block !important;
  visibility: visible !important;
}

/* ============================================
   SIDEBAR PROFILE - Better Layout
   ============================================ */
.site-author-image {
  display: block !important;
  width: 90px !important;
  height: 90px !important;
  border: 3px solid var(--primary-color) !important;
  box-shadow: 0 3px 10px rgba(102, 126, 234, 0.2) !important;
  margin: 0 auto 15px auto !important;
}

.site-author-name {
  display: block !important;
  color: var(--text-primary) !important;
  font-weight: 600 !important;
  font-size: 1.15em !important;
  margin-bottom: 15px !important;
  text-align: center !important;
}

.site-description {
  display: none !important;
}

.site-state {
  display: none !important;
}

/* Research Interests */
.site-overview {
  display: block !important;
  text-align: center !important;
}

.research-box {
  margin-top: 15px;
  padding: 12px 14px;
  background: var(--bg-light);
  border-radius: 8px;
  border-left: 3px solid var(--primary-color);
  text-align: left;
}

.research-box strong {
  display: block;
  color: var(--text-primary);
  font-size: 0.9em;
  margin-bottom: 6px;
}

.research-box span {
  color: var(--text-secondary);
  font-size: 0.85em;
  line-height: 1.5;
}

/* Social Links */
.links-of-author {
  margin-top: 18px !important;
  padding-top: 15px !important;
  border-top: 1px solid var(--border-light) !important;
  text-align: center !important;
}

.links-of-author a {
  color: var(--primary-color) !important;
  margin: 0 12px !important;
  transition: color 0.2s ease !important;
  text-decoration: none !important;
  border: none !important;
  font-size: 1.2em !important;
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

/* Back to top button - unified style */
.back-to-top {
  background: var(--primary-color) !important;
  color: #fff !important;
  bottom: 80px !important;
  left: 30px !important;
  width: 26px !important;
  height: 26px !important;
  opacity: 0.8 !important;
}

.back-to-top:hover {
  background: var(--primary-color) !important;
  opacity: 1 !important;
}

@media (max-width: 991px) {
  .back-to-top {
    left: 20px !important;
    opacity: 1 !important;
  }
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
