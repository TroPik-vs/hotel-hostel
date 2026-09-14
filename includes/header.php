<?php if(!isset($page_title))$page_title="هۆتێل و هۆستێل"; $root=$root??""; ?>
<!DOCTYPE html><html lang="ku" dir="rtl"><head>
<meta charset="UTF-8"><meta name="viewport" content="width=device-width,initial-scale=1.0">
<title><?= htmlspecialchars($page_title) ?></title><link rel="stylesheet" href="<?= $root ?>css/style.css">
</head><body><header><div class="container navbar">
<a class="logo" href="<?= $root ?>index.php">🏨 هۆتێل و هۆستێل</a>
<nav><a href="<?= $root ?>index.php">سەرەکی</a><a href="<?= $root ?>about.php">دەربارەی ئێمە</a>
<a href="<?= $root ?>hotels.php">هۆتێلەکان</a><a href="<?= $root ?>hostels.php">هۆستێلەکان</a>
<a href="<?= $root ?>booking.php">حجزکردن</a><a href="<?= $root ?>contact.php">پەیوەندی</a></nav>
</div></header><main>