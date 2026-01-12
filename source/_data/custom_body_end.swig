<script>
(function() {
  function initSidebar() {
    var body = document.body;
    var sidebar = document.querySelector('.sidebar');
    var sidebarInner = document.querySelector('.sidebar-inner');
    
    // Remove sidebar-active class to prevent left padding
    body.classList.remove('sidebar-active');
    
    if (!sidebar) return;
    
    // Create overlay
    var overlay = document.createElement('div');
    overlay.className = 'sidebar-overlay';
    document.body.appendChild(overlay);
    
    // Create profile button with menu icon (3 lines)
    var profileBtn = document.createElement('button');
    profileBtn.id = 'profile-btn';
    profileBtn.innerHTML = '<div class="menu-icon"><span></span><span></span><span></span></div>';
    profileBtn.setAttribute('aria-label', 'Open profile');
    document.body.appendChild(profileBtn);
    
    // Create close button inside sidebar
    if (sidebarInner) {
      // Remove existing close button if any
      var existingClose = document.getElementById('sidebar-close');
      if (existingClose) existingClose.remove();
      
      var closeBtn = document.createElement('button');
      closeBtn.id = 'sidebar-close';
      closeBtn.innerHTML = '✕';
      closeBtn.setAttribute('aria-label', 'Close sidebar');
      sidebarInner.style.position = 'relative';
      sidebarInner.insertBefore(closeBtn, sidebarInner.firstChild);
      
      closeBtn.addEventListener('click', function(e) {
        e.stopPropagation();
        body.classList.remove('sidebar-open');
      });
    }
    
    // Add Research Interests box to site-overview-wrap
    var siteOverviewWrap = document.querySelector('.site-overview-wrap');
    if (siteOverviewWrap && !document.querySelector('.research-box')) {
      var researchBox = document.createElement('div');
      researchBox.className = 'research-box';
      researchBox.innerHTML = '<strong>Research Interests</strong><ul><li>Machine Learning</li><li>Data Mining</li><li>AI Security</li></ul>';
      siteOverviewWrap.appendChild(researchBox);
    }
    
    // Ensure sidebar content is visible
    var siteAuthor = document.querySelector('.site-author');
    if (siteAuthor) {
      siteAuthor.style.display = 'block';
      siteAuthor.style.visibility = 'visible';
    }
    
    // Toggle sidebar
    profileBtn.addEventListener('click', function(e) {
      e.stopPropagation();
      body.classList.toggle('sidebar-open');
    });
    
    // Close on overlay click
    overlay.addEventListener('click', function() {
      body.classList.remove('sidebar-open');
    });
    
    // Close on ESC
    document.addEventListener('keydown', function(e) {
      if (e.key === 'Escape') {
        body.classList.remove('sidebar-open');
      }
    });
  }
  
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initSidebar);
  } else {
    initSidebar();
  }
})();
</script>
