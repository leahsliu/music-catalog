<?php
if (is_user_logged_in()) {

  $genres = exec_sql_query($db, 'SELECT id, genre_type FROM genres')->fetchAll();
  $form_values = array(
    'name' => '',
    'artist' => '',
    'rating' => '',
    'price' => '',
    'description' => '',
    'track-one' => '',
    'track-two' => '',
    'track-three' => '',
    'source' => '',
    'desc_src' => ''
  );

  $genre_form_values = array(
    'Pop' => '',
    'Hip-Hop' => '',
    'Rock' => '',
    'Jazz' => '',
    'Blues' => '',
    'Folk' => ''
  );

  define("MAX_FILE_SIZE", 10000000); //10 mb max
  $upload_feedback = array(
    'general_err' => False,
    'over_10mb' => False,
  );


  $upload_name = NULL;
  $upload_ext = NULL;
  $form_valid = True;

  // capture form inputs once submit button hit
  if (isset($_POST['add-record'])) {
    $form_values['name'] = trim($_POST['name']); // untrusted
    $form_values['artist'] = trim($_POST['artist']); // untrusted
    $form_values['rating'] = (int)trim($_POST['rating']); // untrusted
    $form_values['genre'] = trim($_POST['genre']); // untrusted
    $form_values['price'] = trim($_POST['price']); // untrusted
    $form_values['description'] = trim($_POST['description']); // untrusted
    $form_values['trackOne'] = trim($_POST['trackOne']); // untrusted
    $form_values['trackTwo'] = trim($_POST['trackTwo']); // untrusted
    $form_values['trackThree'] = trim($_POST['trackThree']); // untrusted
    $form_values['source'] = trim($_POST['source']); //untrusted
    $form_values['desc_src'] = trim($_POST['desc_src']); //untrusted
    $genre_form_values['Pop'] = (int)$_POST['Pop']; // untrusted
    $genre_form_values['Hip-Hop'] = (int)$_POST['Hip-Hop']; // untrusted
    $genre_form_values['Rock'] = (int)$_POST['Rock']; // untrusted
    $genre_form_values['Jazz'] = (int)$_POST['Jazz']; // untrusted
    $genre_form_values['Folk'] = (int)$_POST['Folk']; // untrusted
    $genre_form_values['Blues'] = (int)$_POST['Blues']; // untrusted

    if (
      $genre_form_values['Pop'] == '' &&
      $genre_form_values['Hip-Hop'] == '' &&
      $genre_form_values['Rock'] == '' &&
      $genre_form_values['Jazz'] == '' &&
      $genre_form_values['Blues']  == '' &&
      $genre_form_values['Folk'] == ''
    ) {
      $form_valid = False;
    }

    $upload_info = $_FILES['jpg-file'];

    // no errors when user uploaded
    if ($upload_info['error'] == UPLOAD_ERR_OK) {
      $upload_name = basename($upload_info['name']);
      $upload_ext = strtolower(pathinfo($upload_name, PATHINFO_EXTENSION));
      if (!in_array($upload_ext, array('jpg'))) {
        $form_valid = False;
        $upload_feedback['general_err'] = True;
      }
    } else if (($upload_info['error'] == UPLOAD_ERR_FORM_SIZE) || ($upload_info['error'] == UPLOAD_ERR_INI_SIZE)) {
      $form_valid = False;
      $upload_feedback['over_10mb'] = True;
    } else {
      $form_valid = False;
      $upload_feedback['general_err'] = True;
    }


    if ($form_valid) {
      $show_confirmation = True;
      //upload info to albums
      $sql = "INSERT INTO
      'albums' ('album_name', 'artist_name', 'rating', 'price', 'description', 'desc_src')
      VALUES (:name, :artist, :rating, :price, :description, :desc_src)";

      exec_sql_query($db, $sql, array(
        ':name' => $form_values['name'], ':artist' => $form_values['artist'], ':rating' => $form_values['rating'], ':price' => $form_values['price'], ':description' => $form_values['description'],
        ':desc_src' => $form_values['desc_src']
      ));

      //upload info to tracks
      $album_name =  $form_values['name'];

      $album_id = exec_sql_query($db, "SELECT id FROM albums WHERE album_name = '$album_name'")->fetchAll();
      foreach ($album_id as $a_id) {
        $sql = "INSERT INTO
      'tracks' ('trackalbum_id', 'song_name')
      VALUES (:album_id, :trackOne)";
        exec_sql_query($db, $sql, array(':album_id' => $a_id['id'], ':trackOne' => $form_values['trackOne']));

        $sql = "INSERT INTO
      'tracks' ('trackalbum_id', 'song_name')
      VALUES (:album_id, :trackTwo)";
        exec_sql_query($db, $sql, array(':album_id' => $a_id['id'], ':trackTwo' => $form_values['trackTwo']));

        $sql = "INSERT INTO
      'tracks' ('trackalbum_id', 'song_name')
      VALUES (:album_id, :trackThree)";
        exec_sql_query($db, $sql, array(':album_id' => $a_id['id'], ':trackThree' => $form_values['trackThree']));


        // upload info to albums_genres
        foreach ($genre_form_values as $genre_id) {
          if ($genre_id != 0) {
            $sql = "INSERT INTO
            'albums_genres' ('album_id', 'genre_id')
          VALUES (:album_id, :genre)";
            exec_sql_query($db, $sql, array(':album_id' => $a_id['id'], ':genre' => $genre_id));
          }
        }
      }

      //upload info to album_pics
      $sql = "INSERT INTO album_pics (file_name, file_ext, source) VALUES (:file_name, :file_ext, :source)";
      $result = exec_sql_query($db, $sql, array(
        ':file_name' => $upload_name,
        ':file_ext' => $upload_ext,
        ':source' => $form_values['source']
      ));


      if ($result) {
        $record_id = $db->lastInsertId('id');
        $upload_path = 'public/uploads/album_pics/' . $record_id . '.' . $upload_ext;

        if (move_uploaded_file($upload_info['tmp_name'], $upload_path) == False) {
          error_log("Failed to permanently store the uploaded file on the file server. Please check that the server folder exists.");
        }
      }
    }
  };
  // Delete a record
  $delete_param = $_GET['delete_id'] ?? NULL;
  if ($delete_param != NULL) {
    exec_sql_query($db, "DELETE FROM albums WHERE id = $delete_param;");
    exec_sql_query($db, "DELETE FROM albums_genres WHERE album_id = $delete_param");
    exec_sql_query($db, "DELETE FROM album_pics WHERE id =  $delete_param");
    exec_sql_query($db, "DELETE FROM tracks WHERE trackalbum_id = $delete_param");
    $filepath = 'public/uploads/album_pics/' . $delete_param . '.jpg';
    unlink($filepath);
  }


  $all_records = exec_sql_query($db, 'SELECT * FROM albums')->fetchAll();
}
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

  <?php if (is_user_logged_in()) { ?>

    <?php if ($show_confirmation) { ?>
      <section>
        <h2 class="confirmation">Record added!</h2>
        <p>You've successfully added <?php echo htmlspecialchars($form_values['name']) ?> to the database. </p>
      </section>
    <?php } ?>


    <h1>Delete From Catalog</h1>
    <div class='admin-table'>
      <table>
        <tr>
          <th>Actions</th>
          <th>ID</th>
          <th>Album</th>
          <th>Album Cover</th>
          <th>Artist</th>
          <th>Rating</th>
          <th>Price</th>
          <th>Description</th>
        </tr>
        <?php
        foreach ($all_records as $record) { ?>
          <tr>
            <?php $album_id = $record['id']; ?>

            <td>
              <div class='delete-button'><a href="/change?<?php echo http_build_query(array(
                                                            "delete_id" => "$album_id"
                                                          )) ?>">Delete Album</a>
              </div>
            </td>

            <td><?php echo htmlspecialchars($record['id']); ?></td>
            <td><?php echo htmlspecialchars($record['album_name']); ?></td>
            <?php $img_path = "public/uploads/album_pics/" . $record['id'] . '.jpg'; ?>
            <td><img src='<?php echo htmlspecialchars($img_path) ?>' alt="<?php echo htmlspecialchars($record['album_name']) ?>"></td>

            <td><?php echo htmlspecialchars($record['artist_name']); ?></td>
            <td><?php echo htmlspecialchars($record["rating"]); ?></td>
            <td><?php echo htmlspecialchars($record["price"]); ?></td>
            <td><?php echo htmlspecialchars($record["description"]); ?>
              <cite><a class="cite-link" href="<?php echo htmlspecialchars($record['desc_src']) ?>">Text Source</a></cite>

            </td>

          </tr>
        <?php } ?>
      </table>
    </div>

    <h1>Add to Catalog</h1>
    <form id="request-form" action="/change" method="post" enctype="multipart/form-data">

      <div class="form-part">
        <label for="album-name">Album Name:</label>
        <input type="text" name="name" id="album-name" value="" />
      </div>

      <div class="form-part">
        <label for="artist-name">Artist:</label>
        <input type="text" name="artist" id="artist-name" value="" />
      </div>

      <div class="form-part">
        <label for="star-rating">Star Rating:</label>
        <select name="rating" id="star-rating">
          <option value="">--Please choose an option--</option>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
          <option value="4">4</option>
          <option value="5">5</option>
        </select>
      </div>

      <div class="form-part">

        <div>Genre:</div>
        <div class="checkbox-part">
          <?php
          foreach ($genres as $genre) { ?>
            <div class='genre-checkbox'>
              <input id="<?php echo $genre['genre_type'] ?>" type="checkbox" name="<?php echo $genre['genre_type'] ?>" value="<?php echo $genre['id'] ?>" />
              <label for="<?php echo $genre['genre_type'] ?>"><?php echo $genre['genre_type'] ?></label>
            </div>
          <?php } ?>
        </div>
      </div>

      <div class="form-part">
        <label for="album-price">Price:</label>
        <input type="text" name="price" id="album-price" value="" />
      </div>

      <div class="form-part">
        <label for="album-desc">Description:</label>
        <textarea name="description" id="album-desc" rows=5 cols=33></textarea>
      </div>
      <div class="form-part">
        <label for="dsrc">Description Source:</label>
        <input id="dsrc" name="desc_src" type="text" value="" />
      </div>



      <div class="form-part">
        <div class="track-instruction">Provide 3 Tracks:</div>
      </div>

      <div class="form-part">
        <label for="track1">Track:</label>
        <input type="text" name="trackOne" id="track1" value="" />
      </div>
      <div class="form-part">
        <label for="track2">Track:</label>
        <input type="text" name="trackTwo" id="track2" value="" />
      </div>
      <div class="form-part">
        <label for="track3">Track:</label>
        <input type="text" name="trackThree" id="track3" value="" />
      </div>

      <div>
        <?php if ($upload_feedback['over_10mb']) { ?>
          <p class="feedback">We're sorry. The file failed to upload because it was too big. Please select a file that&apos;s no larger than 10MB.</p>
        <?php } ?>

        <?php if ($upload_feedback['general_err']) { ?>
          <p class="feedback">We're sorry. Something went wrong. Please select a JPG file and resubmit the form.</p>
        <?php } ?>
      </div>
      <div class="form-part">
        <input type="hidden" name="MAX_FILE_SIZE" value="<?php echo MAX_FILE_SIZE; ?>">
        <label for="jpg-upload">Upload Album Cover:</label>
        <input id="jpg-upload" type="file" name="jpg-file" accept=".jpg">
      </div>
      <div class="form-part">
        <label for="album-source">Image Source:</label>
        <input id="album-source" type="text" name="source">
      </div>


      <div class="add-button">
        <button type="submit" name="add-record">Add Album</button>
      </div>
    </form>
  <?php } else { ?>
    <h1>Modify Database</h1>
    <p>Please log in to access to this page.</p>
    <h2>Sign In</h2>
    <?php if (!is_user_logged_in()) {
      echo login_form('/change', $session_messages);
    } ?>
  <?php } ?>


  <?php include 'includes/footer.php'; ?>
</body>

</html>
