<script>
// Fix Table of Contents click functionality
(function() {
  function fixTOC() {
    // Fix TOC anchor links to work properly
    const tocLinks = document.querySelectorAll('.toc-link, .post-toc a');
    
    tocLinks.forEach(function(link) {
      link.addEventListener('click', function(e) {
        const href = this.getAttribute('href');
        if (href && href.startsWith('#')) {
          const targetId = href.substring(1);
          const targetElement = document.getElementById(targetId) || 
                               document.querySelector('[name="' + targetId + '"]');
          
          if (targetElement) {
            e.preventDefault();
            
            // Remove any existing active states
            tocLinks.forEach(l => l.classList.remove('active'));
            this.classList.add('active');
            
            // Smooth scroll to target
            const offset = 80; // Offset for fixed headers
            const targetPosition = targetElement.getBoundingClientRect().top + window.pageYOffset - offset;
            
            window.scrollTo({
              top: targetPosition,
              behavior: 'smooth'
            });
            
            // Update URL without triggering scroll
            if (history.pushState) {
              history.pushState(null, null, href);
            }
          }
        }
      });
    });
    
    // Fix TOC item clicks to toggle properly
    const tocItems = document.querySelectorAll('.post-toc-item');
    tocItems.forEach(function(item) {
      const link = item.querySelector('a');
      if (link) {
        item.addEventListener('click', function(e) {
          // Allow the link click to proceed
          if (e.target === link || link.contains(e.target)) {
            return;
          }
          // If clicking on the item itself, trigger the link
          link.click();
        });
      }
    });
  }
  
  // Run on DOM ready
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', fixTOC);
  } else {
    fixTOC();
  }
  
  // Also run after a delay to catch dynamically loaded content
  setTimeout(fixTOC, 500);
})();
</script>
