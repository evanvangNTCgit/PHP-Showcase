<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Evans PHP Beginnings</title>
  <link rel="stylesheet" href="style.css">
</head>

<body>
  <?php
  session_start();
$id = session_id();

$_SESSION['Theme'] = 'Light';

$themeChosen = $_SESSION['Theme'];

  echo "<h1> Sesssion Id $id </h1>";
  echo "<h2> Theme chosen: $themeChosen </h2>";

  require_once('dataService.php');

  $_dataService = new DataService();
  $arrayOfPiece = $_dataService->GetPieces();

  // Image search query does not like long specific names so..
  // Just use their type.
  // For each piece make a p tag for it.
  foreach ($arrayOfPiece as $Piece) {

    $typeName = $_dataService->GetPieceTypeById(($Piece['PieceTypeId']));
    echo "<div id=$typeName>";
    echo "<p>" . $Piece['Name'] . "</p>";
    echo "<p> Type " . $typeName . "</p>";
    echo "</div>";
  }
  ?>

</body>
<script>
  // querySelectorAll returns a NodeList which has .forEach()
  let d = document.querySelectorAll('div');

  d.forEach((el) => {
    const imgToAdd = document.createElement('img');

    imgToAdd.src = `https://loremflickr.com/250/250/${encodeURIComponent(el.id)}`;
    el.append(imgToAdd);
  });
</script>

</html>