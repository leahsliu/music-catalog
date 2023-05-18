<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1" />
  <link rel="stylesheet" type="text/css" href="/public/styles/site.css" media="all">

  <title>Vinyl Rocker</title>
</head>

<body>
  <?php include 'includes/header.php'; ?>

  <p>We're sorry, but the page you requested does not exist.</p>
  <?php if (!is_user_logged_in()) { ?>
    <a href="/">Click here to go back home.</a>

  <?php } else { ?>
    <a href="/change">Click here to go back home.</a>
  <?php } ?>
  <?php include 'includes/footer.php'; ?>

</body>

</html>
