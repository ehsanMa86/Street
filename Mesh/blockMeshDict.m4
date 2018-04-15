/*--------------------------------*- C++ -*----------------------------------*\
| =========                 |                                                 |
| \\      /  F ield         | OpenFOAM: The Open Source CFD Toolbox           |
|  \\    /   O peration     |                                                 |
|   \\  /    A nd           | Copyright (C) 2016 Ehsan Madadi-Kandjani        |
|    \\/     M anipulation  |                                                 |
\*---------------------------------------------------------------------------*/
FoamFile
{
    version     2.0;
    `format'      ascii;
    class       dictionary;
    object      blockMeshDict;
}
// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //
// General macros to create cylinder mesh

changecom(//)changequote([,])
define(calc, [esyscmd(perl -e 'use Math::Trig; print ($1)')])
define(VCOUNT, 0)
define(vlabel, [[// ]Vertex $1 = VCOUNT define($1, VCOUNT)define([VCOUNT], incr(VCOUNT))])

define(hex2Dbm, hex ($1b $2b $3b $4b $1m $2m $3m $4m))
define(hex2Dmf, hex ($1m $2m $3m $4m $1f $2f $3f $4f))
define(bmQuad, ($1b $2b $2m $1m))
define(mfQuad, ($1m $2m $2f $1f))
define(bmAtmQuad, ($1b $2b $2m $1m))
define(mfAtmQuad, ($1m $2m $2f $1f))
define(frontQuad, ($1f $4f $3f $2f))
define(backQuad, ($1b $2b $3b $4b))
define(bmRight, ($1b $2b $2m $1m))
define(mfRight, ($1m $2m $2f $1f))
define(bmLeft, ($1b $2b $2m $1m))
define(mfLeft, ($1m $2m $2f $1f))

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

convertToMeters 1.0;

// Number of cells along the x direction per each block
define(Nx, 10)

// Number of cells along the y direction per each block
define(Ny, 10)

// Number of cells from wall to infront
define(Nz1, 10)

// Number of cells along the channel
define(Nz2, 100)

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

define(x00, 0)
define(x01, 2)
define(x02, 4)
define(x03, 6)
define(x04, 8)
define(x05, 10)
define(x06, 10)
define(x07, 8)
define(x08, 6)
define(x09, 4)
define(x10, 2)
define(x11, 0)
define(x12, 0)
define(x13, 2)
define(x14, 4)
define(x15, 6)
define(x16, 8)
define(x17, 10)
define(x18, 0)
define(x19, 2)
define(x20, 4)
define(x21, 6)
define(x22, 8)
define(x23, 10)
define(x24, 10)
define(x25, 8)
define(x26, 6)
define(x27, 4)
define(x28, 2)
define(x29, 0)
define(x30, 0)
define(x31, 2)
define(x32, 4)
define(x33, 6)
define(x34, 8)
define(x35, 10)
define(x36, 0)
define(x37, 2)
define(x38, 4)
define(x39, 6)
define(x40, 8)
define(x41, 10)
define(x42, 10)
define(x43, 8)
define(x44, 6)
define(x45, 4)
define(x46, 2)
define(x47, 0)
define(x48, 0)
define(x49, 2)
define(x50, 4)
define(x51, 6)
define(x52, 8)
define(x53, 10)



define(y00, 0)
define(y01, -0.1)
define(y02, -0.15)
define(y03, -0.15)
define(y04, -0.1)
define(y05, 0)
define(y06, 0.1)
define(y07, 0.1)
define(y08, 0.1)
define(y09, 0.1)
define(y10, 0.1)
define(y11, 0.1)
define(y12, 0.3)
define(y13, 0.3)
define(y14, 0.3)
define(y15, 0.3)
define(y16, 0.3)
define(y17, 0.3)
define(y18, 0)
define(y19, 0)
define(y20, 0)
define(y21, 0)
define(y22, 0)
define(y23, 0)
define(y24, 0.1)
define(y25, 0.1)
define(y26, 0.1)
define(y27, 0.1)
define(y28, 0.1)
define(y29, 0.1)
define(y30, 0.3)
define(y31, 0.3)
define(y32, 0.3)
define(y33, 0.3)
define(y34, 0.3)
define(y35, 0.3)
define(y36, 0)
define(y37, 0)
define(y38, 0)
define(y39, 0)
define(y40, 0)
define(y41, 0)
define(y42, 0.1)
define(y43, 0.1)
define(y44, 0.1)
define(y45, 0.1)
define(y46, 0.1)
define(y47, 0.1)
define(y48, 0.3)
define(y49, 0.3)
define(y50, 0.3)
define(y51, 0.3)
define(y52, 0.3)
define(y53, 0.3)



define(z00, 0)
define(z01, 0)
define(z02, 0)
define(z03, 0)
define(z04, 0)
define(z05, 0)
define(z06, 0)
define(z07, 0)
define(z08, 0)
define(z09, 0)
define(z10, 0)
define(z11, 0)
define(z12, 0)
define(z13, 0)
define(z14, 0)
define(z15, 0)
define(z16, 0)
define(z17, 0)
define(z18, 1)
define(z19, 1)
define(z20, 1)
define(z21, 1)
define(z22, 1)
define(z23, 1)
define(z24, 1)
define(z25, 1)
define(z26, 1)
define(z27, 1)
define(z28, 1)
define(z29, 1)
define(z30, 1)
define(z31, 1)
define(z32, 1)
define(z33, 1)
define(z34, 1)
define(z35, 1)
define(z36, 10)
define(z37, 10)
define(z38, 10)
define(z39, 10)
define(z40, 10)
define(z41, 10)
define(z42, 10)
define(z43, 10)
define(z44, 10)
define(z45, 10)
define(z46, 10)
define(z47, 10)
define(z48, 10)
define(z49, 10)
define(z50, 10)
define(z51, 10)
define(z52, 10)
define(z53, 10)

define(vert, (x$1$2 y$1$2 z$1$2))

// * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * * //

vertices
(
    vert(0, 0) vlabel(s00b)
    vert(0, 1) vlabel(s01b)
    vert(0, 2) vlabel(s02b)
    vert(0, 3) vlabel(s03b)
    vert(0, 4) vlabel(s04b)
    vert(0, 5) vlabel(s05b)
    vert(0, 6) vlabel(s06b)
    vert(0, 7) vlabel(s07b)
    vert(0, 8) vlabel(s08b)
    vert(0, 9) vlabel(s09b)
    vert(1, 0) vlabel(s10b)
    vert(1, 1) vlabel(s11b)
    vert(1, 2) vlabel(s12b)
    vert(1, 3) vlabel(s13b)
    vert(1, 4) vlabel(s14b)
    vert(1, 5) vlabel(s15b)
    vert(1, 6) vlabel(s16b)
    vert(1, 7) vlabel(s17b)
    vert(1, 8) vlabel(s00m)
    vert(1, 9) vlabel(s01m)
    vert(2, 0) vlabel(s02m)
    vert(2, 1) vlabel(s03m)
    vert(2, 2) vlabel(s04m)
    vert(2, 3) vlabel(s05m)
    vert(2, 4) vlabel(s06m)
    vert(2, 5) vlabel(s07m)
    vert(2, 6) vlabel(s08m)
    vert(2, 7) vlabel(s09m)
    vert(2, 8) vlabel(s10m)
    vert(2, 9) vlabel(s11m)
    vert(3, 0) vlabel(s12m)
    vert(3, 1) vlabel(s13m)
    vert(3, 2) vlabel(s14m)
    vert(3, 3) vlabel(s15m)
    vert(3, 4) vlabel(s16m)
    vert(3, 5) vlabel(s17m)
    vert(3, 6) vlabel(s00f)
    vert(3, 7) vlabel(s01f)
    vert(3, 8) vlabel(s02f)
    vert(3, 9) vlabel(s03f)
    vert(4, 0) vlabel(s04f)
    vert(4, 1) vlabel(s05f)
    vert(4, 2) vlabel(s06f)
    vert(4, 3) vlabel(s07f)
    vert(4, 4) vlabel(s08f)
    vert(4, 5) vlabel(s09f)
    vert(4, 6) vlabel(s10f)
    vert(4, 7) vlabel(s11f)
    vert(4, 8) vlabel(s12f)
    vert(4, 9) vlabel(s13f)
    vert(5, 0) vlabel(s14f)
    vert(5, 1) vlabel(s15f)
    vert(5, 2) vlabel(s16f)
    vert(5, 3) vlabel(s17f)
);

blocks
(
    //block00
    hex2Dbm(s00, s01, s10, s11)
    square
    (Nx Ny Nz1)
    simpleGrading (1 1 1)
    
    //block01
    hex2Dbm(s01, s02, s09, s10)
    square
    (Nx Ny Nz1)
    simpleGrading (1 1 1)
    
    //block02
    hex2Dbm(s02, s03, s08, s09)
    square
    (Nx Ny Nz1)
    simpleGrading (1 1 1)
    
    //block03
    hex2Dbm(s03, s04, s07, s08)
    square
    (Nx Ny Nz1)
    simpleGrading (1 1 1)
    
    //block04
    hex2Dbm(s04, s05, s06, s07)
    square
    (Nx Ny Nz1)
    simpleGrading (1 1 1)
    
    //block05
    hex2Dbm(s11, s10, s13, s12)
    square
    (Nx Ny Nz1)
    simpleGrading (1 1 1)
    
    //block06
    hex2Dbm(s10, s09, s14, s13)
    square
    (Nx Ny Nz1)
    simpleGrading (1 1 1)
    
    //block07
    hex2Dbm(s09, s08, s15, s14)
    square
    (Nx Ny Nz1)
    simpleGrading (1 1 1)
    
    //block08
    hex2Dbm(s08, s07, s16, s15)
    square
    (Nx Ny Nz1)
    simpleGrading (1 1 1)
    
    //block09
    hex2Dbm(s07, s06, s17, s16)
    square
    (Nx Ny Nz1)
    simpleGrading (1 1 1)
    
    //block10
    hex2Dmf(s00, s01, s10, s11)
    square
    (Nx Ny Nz2)
    simpleGrading (1 1 1)
    
    //block11
    hex2Dmf(s01, s02, s09, s10)
    square
    (Nx Ny Nz2)
    simpleGrading (1 1 1)
    
    //block12
    hex2Dmf(s02, s03, s08, s09)
    square
    (Nx Ny Nz2)
    simpleGrading (1 1 1)
    
    //block13
    hex2Dmf(s03, s04, s07, s08)
    square
    (Nx Ny Nz2)
    simpleGrading (1 1 1)
    
    //block14
    hex2Dmf(s04, s05, s06, s07)
    square
    (Nx Ny Nz2)
    simpleGrading (1 1 1)
    
    //block15
    hex2Dmf(s11, s10, s13, s12)
    square
    (Nx Ny Nz2)
    simpleGrading (1 1 1)
    
    //block16
    hex2Dmf(s10, s09, s14, s13)
    square
    (Nx Ny Nz2)
    simpleGrading (1 1 1)
    
    //block17
    hex2Dmf(s09, s08, s15, s14)
    square
    (Nx Ny Nz2)
    simpleGrading (1 1 1)
    
    //block18
    hex2Dmf(s08, s07, s16, s15)
    square
    (Nx Ny Nz2)
    simpleGrading (1 1 1)
    
    //block19
    hex2Dmf(s07, s06, s17, s16)
    square
    (Nx Ny Nz2)
    simpleGrading (1 1 1)
);

patches
(
    wall walls
    (
        bmQuad(s00, s01)
        bmQuad(s01, s02)
        bmQuad(s02, s03)
        bmQuad(s03, s04)
        bmQuad(s04, s05)
        
        mfQuad(s00, s01)
        mfQuad(s01, s02)
        mfQuad(s02, s03)
        mfQuad(s03, s04)
        mfQuad(s04, s05)
        
        backQuad(s11, s10, s01, s00)
        backQuad(s10, s09, s02, s01)
        backQuad(s08, s07, s04, s03)
        backQuad(s07, s06, s05, s04)
        
        backQuad(s12, s13, s10, s11)
        backQuad(s13, s14, s09, s10)
        backQuad(s15, s16, s07, s08)
        backQuad(s16, s17, s06, s07)
        
        frontQuad(s11, s10, s01, s00)
        frontQuad(s10, s09, s02, s01)
        frontQuad(s09, s08, s03, s02)
        frontQuad(s08, s07, s04, s03)
        frontQuad(s07, s06, s05, s04)
        
        frontQuad(s12, s13, s10, s11)
        frontQuad(s13, s14, s09, s10)
        frontQuad(s14, s15, s08, s09)
        frontQuad(s15, s16, s07, s08)
        frontQuad(s16, s17, s06, s07)
        
        bmLeft(s11, s00)
        bmLeft(s12, s11)
        
        mfLeft(s11, s00)
        mfLeft(s12, s11)
    )
    
    patch inlet
    (
        bmRight(s05, s06)
        bmRight(s06, s17)
        mfRight(s05, s06)
        mfRight(s06, s17)
    )
    
    patch outlet
    (
        backQuad(s09, s08, s03, s02)
        backQuad(s14, s15, s08, s09)
    )
    
    patch atmosphere
    (
        bmAtmQuad(s13, s12)
        bmAtmQuad(s14, s13)
        bmAtmQuad(s15, s14)
        bmAtmQuad(s16, s15)
        bmAtmQuad(s17, s16)
        
        mfAtmQuad(s13, s12)
        mfAtmQuad(s14, s13)
        mfAtmQuad(s15, s14)
        mfAtmQuad(s16, s15)
        mfAtmQuad(s17, s16)
    )
);

mergePatchPairs
(
);
