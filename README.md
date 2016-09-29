# anglegraph
Generates a 3D high relief image of a picture, using little angled blocks to reflect light in different shades

How to use:

First transform the image to grayscale at low resolution (i.e. 60x60 max). You can do that with Imagemagick:

$ convert -colorspace Gray -contrast -resize '60x60>' face.jpg face-menor.jpg

Then run processa.php to generate the .inc file. Then open in scad and generate STL.

Patches and improvements are welcome.

