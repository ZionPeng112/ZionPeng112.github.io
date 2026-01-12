<script>
// Sidebar toggle functionality
(function() {
  function initSidebar() {
    const body = document.body;
    const sidebar = document.querySelector('.sidebar');
    const sidebarToggle = document.querySelector('.sidebar-toggle');
    
    // Ensure sidebar is hidden by default on page load
    body.classList.remove('sidebar-active');
    
    // Toggle sidebar on button click
    if (sidebarToggle) {
      sidebarToggle.addEventListener('click', function(e) {
        e.preventDefault();
        e.stopPropagation();
        body.classList.toggle('sidebar-active');
      });
    }
    
    // Close sidebar when clicking outside
    document.addEventListener('click', function(e) {
      if (body.classList.contains('sidebar-active')) {
        if (sidebar && !sidebar.contains(e.target) && 
            sidebarToggle && !sidebarToggle.contains(e.target)) {
          body.classList.remove('sidebar-active');
        }
      }
    });
    
    // Close sidebar on ESC key
    document.addEventListener('keydown', function(e) {
      if (e.key === 'Escape' && body.classList.contains('sidebar-active')) {
        body.classList.remove('sidebar-active');
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
