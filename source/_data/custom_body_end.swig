<script>
// Add photo to homepage (index page)
(function() {
  function addHomeImage() {
    const path = window.location.pathname;
    const isHomePage = path === '/' || path === '/index.html' || path.endsWith('/');
    
    if (isHomePage) {
      // Use the exact class from generated HTML
      const mainContent = document.querySelector('.main-inner.index.posts-expand') || 
                         document.querySelector('.main-inner') ||
                         document.querySelector('.posts-expand') ||
                         document.querySelector('main');
      
      if (mainContent && !mainContent.querySelector('.home-header-image')) {
        const homeImage = document.createElement('img');
        // Use absolute path from root
        const basePath = window.location.origin;
        homeImage.src = basePath + '/images/photo_home.jpg';
        homeImage.alt = 'Zion Peng';
        homeImage.className = 'home-header-image';
        homeImage.style.cssText = 'position: absolute; top: 20px; right: 20px; width: 200px; height: 200px; object-fit: cover; border-radius: 10px; box-shadow: 0 2px 8px rgba(0,0,0,0.1); z-index: 10;';
        
        // Add error handler
        homeImage.onerror = function() {
          console.error('Failed to load home image:', this.src);
        };
        
        if (window.getComputedStyle(mainContent).position === 'static') {
          mainContent.style.position = 'relative';
        }
        mainContent.appendChild(homeImage);
      }
    }
  }
  
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', addHomeImage);
  } else {
    addHomeImage();
  }
  
  setTimeout(addHomeImage, 200);
  setTimeout(addHomeImage, 500);
})();
</script>
