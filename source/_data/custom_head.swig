<style>
/* Home page header image - floats to right, doesn't block content */
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
</style>
