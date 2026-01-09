<script>
// Add photo to homepage only (not other pages)
(function() {
  function addHomeImage() {
    const path = window.location.pathname;
    // Only show on homepage
    const isHomePage = path === '/' || path === '/index.html';
    
    // Don't add to other pages
    if (!isHomePage) {
      return;
    }
    
    // Find the first post block to insert image
    const firstPost = document.querySelector('.post-block');
    
    if (firstPost && !document.querySelector('.home-header-image')) {
      const homeImage = document.createElement('img');
      homeImage.src = '/images/photo_home.jpg';
      homeImage.alt = 'Zion Peng';
      homeImage.className = 'home-header-image';
      
      // Insert at the beginning of the first post content
      const postBody = firstPost.querySelector('.post-body');
      if (postBody && postBody.firstChild) {
        postBody.insertBefore(homeImage, postBody.firstChild);
      }
    }
  }
  
  if (document.readyState === 'loading') {
    document.addEventListener('DOMContentLoaded', addHomeImage);
  } else {
    addHomeImage();
  }
})();
</script>
