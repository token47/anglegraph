
gfix=0.01;
largpix=3;
altpix=0.2;
maxdpix=0.71;

module pixel_draw(lum) {

    L = [ 0.70, 0.50, 0.30, 0.05, -0.15, -0.35 ];

    CubePoints = [ [
      [            0,            0,                             0 ],
      [ largpix+gfix,            0,                             0 ],
      [ largpix+gfix, largpix+gfix,                             0 ],
      [            0, largpix+gfix,                             0 ],
      [            0,            0, altpix+largpix*(maxdpix-L[0]) ],
      [ largpix+gfix,            0, altpix+largpix*(maxdpix-L[0]) ],
      [ largpix+gfix, largpix+gfix, altpix+largpix*(maxdpix+L[0]) ],
      [            0, largpix+gfix, altpix+largpix*(maxdpix+L[0]) ]
    ], [
      [            0,            0,                             0 ],
      [ largpix+gfix,            0,                             0 ],
      [ largpix+gfix, largpix+gfix,                             0 ],
      [            0, largpix+gfix,                             0 ],
      [            0,            0, altpix+largpix*(maxdpix-L[1]) ],
      [ largpix+gfix,            0, altpix+largpix*(maxdpix-L[1]) ],
      [ largpix+gfix, largpix+gfix, altpix+largpix*(maxdpix+L[1]) ],
      [            0, largpix+gfix, altpix+largpix*(maxdpix+L[1]) ]
    ], [
      [            0,            0,                             0 ],
      [ largpix+gfix,            0,                             0 ],
      [ largpix+gfix, largpix+gfix,                             0 ],
      [            0, largpix+gfix,                             0 ],
      [            0,            0, altpix+largpix*(maxdpix-L[2]) ],
      [ largpix+gfix,            0, altpix+largpix*(maxdpix-L[2]) ],
      [ largpix+gfix, largpix+gfix, altpix+largpix*(maxdpix+L[2]) ],
      [            0, largpix+gfix, altpix+largpix*(maxdpix+L[2]) ]
    ], [
      [            0,            0,                             0 ],
      [ largpix+gfix,            0,                             0 ],
      [ largpix+gfix, largpix+gfix,                             0 ],
      [            0, largpix+gfix,                             0 ],
      [            0,            0, altpix+largpix*(maxdpix-L[3]) ],
      [ largpix+gfix,            0, altpix+largpix*(maxdpix-L[3]) ],
      [ largpix+gfix, largpix+gfix, altpix+largpix*(maxdpix+L[3]) ],
      [            0, largpix+gfix, altpix+largpix*(maxdpix+L[3]) ]
    ], [
      [            0,            0,                             0 ],
      [ largpix+gfix,            0,                             0 ],
      [ largpix+gfix, largpix+gfix,                             0 ],
      [            0, largpix+gfix,                             0 ],
      [            0,            0, altpix+largpix*(maxdpix-L[4]) ],
      [ largpix+gfix,            0, altpix+largpix*(maxdpix-L[4]) ],
      [ largpix+gfix, largpix+gfix, altpix+largpix*(maxdpix+L[4]) ],
      [            0, largpix+gfix, altpix+largpix*(maxdpix+L[4]) ]
    ], [
      [            0,            0,                             0 ],
      [ largpix+gfix,            0,                             0 ],
      [ largpix+gfix, largpix+gfix,                             0 ],
      [            0, largpix+gfix,                             0 ],
      [            0,            0, altpix+largpix*(maxdpix-L[5]) ],
      [ largpix+gfix,            0, altpix+largpix*(maxdpix-L[5]) ],
      [ largpix+gfix, largpix+gfix, altpix+largpix*(maxdpix+L[5]) ],
      [            0, largpix+gfix, altpix+largpix*(maxdpix+L[5]) ]
    ] ];
    
    CubeFaces = [ [0,1,2,3], [4,5,1,0], [7,6,5,4],
        [5,6,2,1], [6,7,3,2], [7,4,0,3] ];
    
    if (lum == 0) {
        polyhedron( CubePoints[0], CubeFaces );
    } else if (lum == 1) {
        polyhedron( CubePoints[1], CubeFaces );
    } else if (lum == 2) {
        polyhedron( CubePoints[2], CubeFaces );
    } else if (lum == 3) {
        polyhedron( CubePoints[3], CubeFaces );
    } else if (lum == 4) {
        polyhedron( CubePoints[4], CubeFaces );
    } else if (lum == 5) {
        polyhedron( CubePoints[5], CubeFaces );
    } else if (lum == 6) {
        polyhedron( CubePoints[6], CubeFaces );
    } else if (lum == 7) {
        polyhedron( CubePoints[7], CubeFaces );
    }
      
}

module pixel(x, y, lum) {
    translate([x * largpix, y * largpix, 0]) pixel_draw(lum);
}

union() {
    include <imagem-angulos-inc.scad>;
}
