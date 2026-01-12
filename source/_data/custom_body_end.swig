<script>
// Fix Table of Contents click functionality (if any TOC exists)
(function() {
  function fixTOC() {
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
            const offset = 80;
            const targetPosition = targetElement.getBoundingClientRect().top + window.pageYOffset - offset;
            
            window.scrollTo({
              top: targetPosition,
              behavior: 'smooth'
            });
            
            if (history.pushState) {
              history.pushState(null, null, href);
            }
          }
        }
      });
    });
  }
  
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', fixTOC);
  } else {
    fixTOC();
  }
})();
</script>
