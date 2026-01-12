<script>
// Custom Sidebar toggle functionality
(function() {
  function initSidebar() {
    const body = document.body;
    const sidebar = document.querySelector('.sidebar');
    const sidebarInner = document.querySelector('.sidebar-inner');
    
    // Ensure sidebar is hidden by default
    body.classList.remove('sidebar-open');
    
    // Create custom toggle button (menu icon)
    const toggleBtn = document.createElement('button');
    toggleBtn.id = 'custom-sidebar-btn';
    toggleBtn.setAttribute('aria-label', 'Toggle sidebar');
    toggleBtn.innerHTML = '<svg viewBox="0 0 24 24"><path d="M12 2C6.48 2 2 6.48 2 12s4.48 10 10 10 10-4.48 10-10S17.52 2 12 2zm-1 14H9V8h2v8zm4 0h-2V8h2v8z"/></svg>';
    document.body.appendChild(toggleBtn);
    
    // Create close button inside sidebar
    if (sidebarInner) {
      const closeBtn = document.createElement('button');
      closeBtn.id = 'sidebar-close-btn';
      closeBtn.setAttribute('aria-label', 'Close sidebar');
      closeBtn.innerHTML = '<svg viewBox="0 0 24 24"><path d="M19 6.41L17.59 5 12 10.59 6.41 5 5 6.41 10.59 12 5 17.59 6.41 19 12 13.41 17.59 19 19 17.59 13.41 12z"/></svg>';
      sidebarInner.style.position = 'relative';
      sidebarInner.appendChild(closeBtn);
      
      // Close button click
      closeBtn.addEventListener('click', function(e) {
        e.preventDefault();
        e.stopPropagation();
        body.classList.remove('sidebar-open');
      });
    }
    
    // Toggle button click
    toggleBtn.addEventListener('click', function(e) {
      e.preventDefault();
      e.stopPropagation();
      body.classList.toggle('sidebar-open');
    });
    
    // Close sidebar when clicking outside
    document.addEventListener('click', function(e) {
      if (body.classList.contains('sidebar-open')) {
        const toggleBtn = document.getElementById('custom-sidebar-btn');
        if (sidebar && !sidebar.contains(e.target) && 
            toggleBtn && !toggleBtn.contains(e.target)) {
          body.classList.remove('sidebar-open');
        }
      }
    });
    
    // Close sidebar on ESC key
    document.addEventListener('keydown', function(e) {
      if (e.key === 'Escape' && body.classList.contains('sidebar-open')) {
        body.classList.remove('sidebar-open');
      }
    });
  }
  
  // Run on DOM ready
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', initSidebar);
  } else {
    initSidebar();
  }
})();
</script>
