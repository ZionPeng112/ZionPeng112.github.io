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
   FIX TOP BLACK BAR - Remove all dark headers
   ============================================ */
.headband {
  display: none !important;
  height: 0 !important;
  background: transparent !important;
}

.header-inner {
  background: transparent !important;
}

.site-brand-container {
  background: transparent !important;
}

header.header {
  background: transparent !important;
  border: none !important;
}

.header {
  background: transparent !important;
  border-bottom: none !important;
}

/* ============================================
   SITE TITLE - Hide or Minimal Style
   ============================================ */
.logo-line {
  display: none !important;
}

/* Hide site title on all pages - it's redundant with sidebar */
.site-title,
.site-title a,
.brand {
  display: none !important;
}

/* Alternative: If you want to keep it but make it minimal
.site-title {
  background: transparent !important;
  color: var(--text-primary) !important;
  border: none !important;
  padding: 0 !important;
  margin: 0 !important;
  font-weight: 600 !important;
  font-size: 1.2em !important;
  letter-spacing: 0.5px !important;
  box-shadow: none !important;
  transition: color 0.3s ease !important;
}

.site-title:hover {
  color: var(--primary-color) !important;
}
*/

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
  border: none !important;
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
   TABLE OF CONTENTS - Clear Hierarchy
   ============================================ */
.post-toc {
  font-size: 0.88em !important;
}

.post-toc ol {
  padding-left: 0 !important;
  list-style: none !important;
  margin: 0 !important;
}

/* Level 1 items (h2) */
.post-toc .nav-item {
  line-height: 1.7 !important;
  margin-bottom: 6px !important;
}

/* Level 2 items (h3) - nested */
.post-toc .nav-item .nav-item {
  padding-left: 20px !important;
  margin-top: 4px !important;
  margin-bottom: 4px !important;
  font-size: 0.95em !important;
}

/* Level 3 items (h4) - further nested */
.post-toc .nav-item .nav-item .nav-item {
  padding-left: 35px !important;
  font-size: 0.9em !important;
}

.post-toc .nav-link {
  color: var(--text-secondary) !important;
  padding: 5px 10px 5px 8px !important;
  display: block !important;
  transition: all 0.2s ease !important;
  text-decoration: none !important;
  border: none !important;
  border-left: 2px solid transparent !important;
  border-radius: 0 4px 4px 0 !important;
}

.post-toc .nav-link:hover {
  color: var(--primary-color) !important;
  border-left-color: var(--primary-color) !important;
  background: rgba(102, 126, 234, 0.06) !important;
}

.post-toc .active > .nav-link,
.post-toc .nav-link.active {
  color: var(--primary-color) !important;
  border-left-color: var(--accent-color) !important;
  background: rgba(102, 126, 234, 0.1) !important;
  font-weight: 500 !important;
}

/* TOC Number - Only show for level 1 (h2) */
.post-toc-content .nav-number {
  color: var(--primary-color) !important;
  font-weight: 600 !important;
  margin-right: 6px !important;
  font-size: 0.9em !important;
}

/* Hide numbers for nested items (h3, h4) */
.post-toc .nav-item .nav-item .nav-number,
.post-toc .nav-item .nav-item .nav-item .nav-number {
  display: none !important;
}

/* TOC Title */
.post-toc-title {
  font-weight: 600 !important;
  color: var(--text-primary) !important;
  font-size: 0.95em !important;
  margin-bottom: 12px !important;
  padding-bottom: 8px !important;
  border-bottom: 1px solid var(--border-light) !important;
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
