<?php

const STARS = array(
  1 => '★☆☆☆☆',
  2 => '★★☆☆☆',
  3 => '★★★☆☆',
  4 => '★★★★☆',
  5 => '★★★★★',
);

$entry_id = $_GET['id'] ?? NULL;
$genre_query = "SELECT genres.genre_type AS genre_type
FROM albums_genres INNER JOIN albums ON album_id = albums.id
INNER JOIN genres ON genre_id = genres.id WHERE album_id = $entry_id";

$album_query = "SELECT album_name, artist_name, rating, price, description, desc_src
FROM albums WHERE id = $entry_id";

$tracks_query = "SELECT song_name FROM tracks WHERE trackalbum_id = $entry_id";

$source_query = "SELECT source FROM album_pics WHERE id = $entry_id";

$source_info = exec_sql_query($db, $source_query)->fetchAll();
$album_info = exec_sql_query($db, $album_query)->fetchAll();
$genres = exec_sql_query($db, $genre_query)->fetchAll();
$tracks = exec_sql_query($db, $tracks_query)->fetchAll();

?>

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

  <div class="back"><a class="back-link" href="/">← Go back</a></div>
  <div class="box">
    <div class="general-info">
      <div class="top">
        <div class="album-image">
          <?php $img_path = "public/uploads/album_pics/" . $entry_id . '.jpg'; ?>
          <img src='<?php echo $img_path ?>' alt="<?php echo $record['album_name'] ?>"></img>
          <!-- Source: https://towerrecords.com/-->
          <?php foreach ($source_info as $src) { ?>
            <cite><a class="cite-link" href="<?php echo $src['source'] ?>">Image Source</a></cite>
          <?php } ?>
        </div>
        <div class="top-data">
          <?php foreach ($album_info as $album) { ?>
            <h2><?php echo htmlspecialchars($album['album_name']); ?></h2>
            <p class="artist"><?php echo htmlspecialchars($album['artist_name']); ?></p>
            <?php foreach ($genres as $genre) { ?>
              <div class='tag'>
                <?php echo $genre['genre_type'] ?>
              </div>
            <?php } ?>
            <p class="stars viewall-stars"><?php echo htmlspecialchars(STARS[$album['rating']]); ?></p>
            <p class="price">Market Price: $<?php echo $album['price'] ?></p>
          <?php } ?>
        </div>
      </div>
      <div>
        <h4>Description</h4>
        <p class="details-desc"><?php echo htmlspecialchars($album['description']); ?></p>
        <cite><a class="cite-link" href="<?php echo $album['desc_src'] ?>">Text Source</a></cite>
      </div>
    </div>

    <div class="tracks">
      <h4>Tracks</h4>
      <ol class="track-list">
        <?php foreach ($tracks as $track) { ?>
          <li><?php echo $track['song_name'] ?></li>
        <?php } ?>
      </ol>
    </div>
  </div>

</body>

<?php include 'includes/footer.php'; ?>

</html>
