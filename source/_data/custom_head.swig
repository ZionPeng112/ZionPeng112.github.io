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
   SITE TITLE - Clean Modern Style
   ============================================ */
.logo-line {
  display: none !important;
}

.site-title {
  background: linear-gradient(135deg, var(--primary-color) 0%, var(--accent-color) 100%) !important;
  color: #fff !important;
  border: none !important;
  padding: 10px 20px !important;
  margin: 0 !important;
  border-radius: 6px !important;
  font-weight: 600 !important;
  letter-spacing: 0.5px !important;
  box-shadow: 0 2px 8px rgba(102, 126, 234, 0.3) !important;
  transition: all 0.3s ease !important;
}

.site-title:hover {
  box-shadow: 0 4px 12px rgba(102, 126, 234, 0.4) !important;
  transform: translateY(-1px) !important;
}

.brand {
  background: transparent !important;
  border: none !important;
  box-shadow: none !important;
}
.brand:before,
.brand:after {
  display: none !important;
}
.site-meta {
  background: transparent !important;
}
.site-meta a {
  background: transparent !important;
}

/* ============================================
   NAVIGATION ICONS - Purple Theme
   ============================================ */
.menu-item a {
  color: var(--text-primary) !important;
  transition: color 0.3s ease !important;
}

.menu-item a:hover {
  color: var(--primary-color) !important;
}

.menu-item a i,
.menu-item a .fa,
.menu-item a .fab {
  color: var(--primary-color) !important;
  transition: transform 0.3s ease !important;
}

.menu-item a:hover i,
.menu-item a:hover .fa,
.menu-item a:hover .fab {
  transform: scale(1.1) !important;
}

.menu-item-active a,
.menu-item-active a i {
  color: var(--accent-color) !important;
}

/* ============================================
   SIDEBAR STYLING - Clean & Minimal
   ============================================ */
.sidebar {
  background: #fff !important;
}

.sidebar-inner {
  background: #fff !important;
  padding: 15px !important;
}

/* Author Section */
.site-author-image {
  width: 80px !important;
  height: 80px !important;
  border: 2px solid var(--primary-color) !important;
  box-shadow: 0 2px 8px rgba(102, 126, 234, 0.2) !important;
}

.site-author-name {
  color: var(--text-primary) !important;
  font-weight: 600 !important;
  font-size: 1.1em !important;
  margin-top: 10px !important;
}

.site-description {
  color: var(--text-secondary) !important;
  font-size: 0.85em !important;
}

/* Site State */
.site-state-item-count {
  color: var(--primary-color) !important;
  font-weight: 600 !important;
}

/* Social Links - Simple inline style */
.links-of-author a {
  color: var(--primary-color) !important;
  margin: 0 8px !important;
  transition: color 0.3s ease !important;
  text-decoration: none !important;
  border: none !important;
}

.links-of-author a:hover {
  color: var(--accent-color) !important;
}

/* ============================================
   TABLE OF CONTENTS - Simple & Clean
   ============================================ */
.post-toc {
  font-size: 0.9em !important;
}

.post-toc ol {
  padding-left: 0 !important;
  list-style: none !important;
}

.post-toc .nav-item {
  line-height: 1.8 !important;
}

.post-toc .nav-item .nav-item {
  padding-left: 15px !important;
}

.post-toc .nav-link {
  color: var(--text-secondary) !important;
  padding: 4px 8px !important;
  display: block !important;
  transition: all 0.2s ease !important;
  text-decoration: none !important;
  border: none !important;
  border-left: 2px solid transparent !important;
}

.post-toc .nav-link:hover {
  color: var(--primary-color) !important;
  border-left-color: var(--primary-color) !important;
  background: rgba(102, 126, 234, 0.05) !important;
}

.post-toc .active > .nav-link,
.post-toc .nav-link.active {
  color: var(--primary-color) !important;
  border-left-color: var(--accent-color) !important;
  background: rgba(102, 126, 234, 0.08) !important;
  font-weight: 500 !important;
}

/* TOC Number - Simple style */
.post-toc-content .nav-number {
  color: var(--primary-color) !important;
  font-weight: 600 !important;
  margin-right: 6px !important;
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

/* Post meta categories */
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
   HOME PAGE IMAGE
   ============================================ */
.home-header-image {
  float: right;
  width: 180px;
  height: 180px;
  object-fit: cover;
  border-radius: 10px;
  box-shadow: 0 2px 8px rgba(0,0,0,0.1);
  margin: 0 0 15px 20px;
}

@media (max-width: 768px) {
  .home-header-image {
    float: none;
    width: 120px;
    height: 120px;
    margin: 0 auto 15px;
    display: block;
  }
}

/* ============================================
   MISCELLANEOUS
   ============================================ */
.site-state-item-posts {
  display: none !important;
}

/* Back to top button */
.back-to-top {
  background: var(--primary-color) !important;
  color: #fff !important;
}

.back-to-top:hover {
  background: var(--accent-color) !important;
}

/* Selection color */
::selection {
  background: var(--primary-color) !important;
  color: #fff !important;
}

/* ============================================
   READ MORE BUTTON - Compact & Clean
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

/* Ensure text inside is white and visible */
.post-button .btn,
.post-button a {
  color: #fff !important;
  text-shadow: none !important;
}

/* Read More link styling */
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
   PDF LINK - No Underline on Hover
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

/* Scrollbar styling (webkit browsers) */
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
