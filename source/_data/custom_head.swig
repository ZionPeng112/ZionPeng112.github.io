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

/* Disable justify alignment globally - causes ugly spacing */
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
   SIDEBAR STYLING - Enhanced Profile
   ============================================ */
.sidebar {
  background: #fff !important;
}

.sidebar-inner {
  background: #fff !important;
  padding: 20px !important;
}

/* Author Section - Larger & More Prominent */
.site-author-image {
  width: 100px !important;
  height: 100px !important;
  border: 3px solid var(--primary-color) !important;
  box-shadow: 0 4px 12px rgba(102, 126, 234, 0.25) !important;
  margin-bottom: 15px !important;
}

/* Show author name */
.site-author-name {
  display: block !important;
  color: var(--text-primary) !important;
  font-weight: 600 !important;
  font-size: 1.2em !important;
  margin-bottom: 8px !important;
}

/* Hide default site description */
.site-description {
  display: none !important;
}

/* Research Interest - Custom Section */
.site-overview {
  display: block !important;
  visibility: visible !important;
}

.site-overview::after {
  content: "Research Interests: Machine Learning · Data Mining · AI Security";
  display: block !important;
  visibility: visible !important;
  color: var(--text-secondary) !important;
  font-size: 0.85em !important;
  line-height: 1.5 !important;
  margin-top: 12px !important;
  padding: 10px 12px !important;
  background: var(--bg-light) !important;
  border-radius: 6px !important;
  border-left: 3px solid var(--primary-color) !important;
}

/* Site State - Hide */
.site-state {
  display: none !important;
}

/* Social Links - Prominent style */
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
  transform: scale(1.1) !important;
}

/* ============================================
   TABLE OF CONTENTS - HIDDEN (Keep sidebar overview visible)
   ============================================ */
.post-toc-wrap,
.post-toc,
.toc,
.toc-wrap,
.post-toc-title,
.toc-title,
.sidebar-nav {
  display: none !important;
}

/* ============================================
   SIDEBAR - Default Hidden, Click to Open
   ============================================ */
/* Hide sidebar by default */
.sidebar {
  transform: translateX(-100%) !important;
  visibility: hidden !important;
}

/* Show sidebar when active */
.sidebar-active .sidebar {
  transform: translateX(0) !important;
  visibility: visible !important;
}

/* Style the toggle button */
.sidebar-toggle {
  display: block !important;
  position: fixed !important;
  left: 20px !important;
  bottom: 45px !important;
  width: 40px !important;
  height: 40px !important;
  background: linear-gradient(135deg, var(--primary-color) 0%, var(--accent-color) 100%) !important;
  border-radius: 50% !important;
  cursor: pointer !important;
  z-index: 9999 !important;
  box-shadow: 0 2px 10px rgba(102, 126, 234, 0.4) !important;
  transition: all 0.3s ease !important;
}

.sidebar-toggle:hover {
  transform: scale(1.1) !important;
  box-shadow: 0 4px 15px rgba(102, 126, 234, 0.5) !important;
}

.sidebar-toggle .toggle-line {
  background: #fff !important;
}

/* Sidebar close button */
.sidebar-toggle-close {
  position: absolute !important;
  top: 10px !important;
  right: 10px !important;
  width: 30px !important;
  height: 30px !important;
  cursor: pointer !important;
  display: flex !important;
  align-items: center !important;
  justify-content: center !important;
  border-radius: 50% !important;
  background: var(--bg-light) !important;
  transition: all 0.3s ease !important;
}

.sidebar-toggle-close:hover {
  background: var(--primary-color) !important;
  color: #fff !important;
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
   MOBILE OPTIMIZATION - Text & Layout
   ============================================ */
/* Allow word breaking for long words */
body {
  word-wrap: break-word !important;
  overflow-wrap: break-word !important;
  word-break: break-word !important;
  -webkit-hyphens: auto !important;
  hyphens: auto !important;
}

/* Fix text alignment on mobile - left align instead of justify */
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
    letter-spacing: normal !important;
  }
  
  /* Reduce padding on mobile */
  .home-section {
    padding: 15px 18px !important;
  }
  
  .home-banner {
    padding: 20px !important;
  }
  
  /* Smaller font on mobile for better fit */
  .home-section li {
    font-size: 0.95em !important;
    line-height: 1.6 !important;
  }
  
  /* Fix strong text not breaking weirdly */
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
