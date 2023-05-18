<?php

const STARS = array(
  1 => '★☆☆☆☆',
  2 => '★★☆☆☆',
  3 => '★★★☆☆',
  4 => '★★★★☆',
  5 => '★★★★★',
);

$albums_query = "SELECT id AS album_id, album_name, artist_name, albums.price AS album_price, albums.rating AS album_rating, albums.description AS album_description, albums.desc_src AS desc_src FROM albums";

$tags_join_query = "SELECT albums.id AS album_id, albums.album_name AS album_name, albums.artist_name AS artist_name, genres.genre_type AS genre_type, albums.price AS album_price, albums.rating AS album_rating, albums.description AS album_description FROM albums_genres INNER JOIN albums ON album_id = albums.id INNER JOIN genres ON genre_id = genres.id";

$filter_param = $_GET['sort'] ?? NULL; // untrusted

$where_clause = "";

if ($filter_param != NULL) {
  # filter by genre
  $sort_field = "genre_type";
  $where_clause = ' WHERE ' . $sort_field . '=' . '"' . $filter_param . '"';
  $albums_query = $tags_join_query;
};

$result = exec_sql_query($db, $albums_query . $where_clause . ';');
$genres = exec_sql_query($db, 'SELECT genre_type FROM genres')->fetchAll();
$records = $result->fetchAll();
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
  <main>
    <div class="filters">
      <div class="filter-section">
        <h2>Filter By</h2>
        <a href="/">Reset Filters</a>
      </div>
      <div class="filter-section">
        <h2>Genre</h2>
        <?php foreach ($genres as $genre) { ?>
          <a class="<?php echo $genre['genre_type']; ?>" href="/?<?php echo http_build_query(array(
                                                                    "sort" => $genre['genre_type']
                                                                  )) ?>"><?php echo $genre['genre_type']; ?></a>
        <?php } ?>
      </div>
    </div>

    <div class="all-albums">
      <?php
      // write a table row for each record
      foreach ($records as $record) { ?>
        <a class="album-link" href="/details?<?php echo http_build_query(
                                                array(
                                                  "id" => $record['album_id'],
                                                  "album" => $record['album_name']
                                                )
                                              ) ?>">
          <div class="album-box">
            <?php $img_path = "public/uploads/album_pics/" . $record['album_id'] . '.jpg'; ?>
            <img src='<?php echo $img_path ?>' alt="<?php echo $record['album_name'] ?>">

            <p class="viewall-text"><?php echo htmlspecialchars($record['album_name']); ?></p>
            <p><?php echo htmlspecialchars($record['artist_name']); ?></p>
            <p class="viewall-stars"><?php echo htmlspecialchars(STARS[$record["album_rating"]]); ?></p>
            <p><?php echo htmlspecialchars('$' . $record["album_price"]); ?></p>
            <cite>Source: Tower Records</cite>

          </div>
        </a>
      <?php } ?>
    </div>
  </main>

  <?php include 'includes/footer.php'; ?>
</body>


</html>
