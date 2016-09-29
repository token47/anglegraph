#!/usr/bin/env php
<?php

$image = imagecreatefromjpeg('face-menor.jpg');

$width = imagesx($image);
$height = imagesy($image);

for ($y = 0; $y < $height; $y++) {
		for ($x = 0; $x < $width; $x++) {
				$l = floor((imagecolorat($image, $x, $y) & 0xFF) / 42.7); // 42.7 = 6 greys
				echo "pixel($x,$height-$y-1,$l);\n";
		} 
}

// convert with: (60 is the size, 60 pixels x 3mm-pixels = 180mm (good for a 20cm x 20cm bed)
// $ convert -colorspace Gray -contrast -resize '60x60>' face.jpg face-menor.jpg
// $ ./processa.php > imagem-angulos-inc.scad

?>
