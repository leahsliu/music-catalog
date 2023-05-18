<header>
  <div>
    <h1>Vinyl Rocker</h1>
    <p class="slogan">Discover new music.</p>
  </div>

  <?php if (is_user_logged_in()) { ?>
    <div class="sign-in">
      <a href="/change">Delete from Database</a>
      <a href="/add">Add to Database</a>
      <a href="<?php echo logout_url(); ?>">Sign Out</a>
    </div>
  <?php } else { ?>
    <div class="sign-in">
      <a href="/change">Sign In</a>
    </div>
  <?php } ?>
</header>
