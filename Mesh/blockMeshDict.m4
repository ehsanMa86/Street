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

define(x0, 0)
define(x1, 8)
define(x2, 18)
define(x3, 28)
define(x4, 38)
define(x5, 46)
define(x6, 46)
define(x7, 38)
define(x8, 28)
define(x9, 18)
define(x10, 8)
define(x11, 0)
define(x12, 0)
define(x13, 8)
define(x14, 18)
define(x15, 28)
define(x16, 38)
define(x17, 46)
define(x18, 0)
define(x19, 8)
define(x20, 18)
define(x21, 28)
define(x22, 38)
define(x23, 46)
define(x24, 46)
define(x25, 38)
define(x26, 28)
define(x27, 18)
define(x28, 8)
define(x29, 0)
define(x30, 0)
define(x31, 8)
define(x32, 18)
define(x33, 28)
define(x34, 38)
define(x35, 46)
define(x36, 0)
define(x37, 8)
define(x38, 18)
define(x39, 28)
define(x40, 38)
define(x41, 46)
define(x42, 46)
define(x43, 38)
define(x44, 28)
define(x45, 18)
define(x46, 8)
define(x47, 0)
define(x48, 0)
define(x49, 8)
define(x50, 18)
define(x51, 28)
define(x52, 38)
define(x53, 46)





define(y00, 0)
define(y01, 0.0799999999999983)
define(y02, -0.0700000000000074)
define(y03, 0.0299999999999869)
define(y04, 0.379999999999995)
define(y05, 0.459999999999994)
define(y06, 0.299999999999997)
define(y07, 0.379999999999998)
define(y08, 0.35499999999999)
define(y09, 0.454999999999991)
define(y10, 0.679999999999995)
define(y11, 0.759999999999991)
define(y12, 0.599999999999994)
define(y13, 0.679999999999998)
define(y14, 0.779999999999987)
define(y15, 0.879999999999995)
define(y16, 0.979999999999995)
define(y17, 1.05999999999999)
define(y18, 0.0266659999999999)
define(y19, 0.106699999999989)
define(y20, 0.206699999999998)
define(y21, 0.306699999999992)
define(y22, 0.406700000000001)
define(y23, 0.486665999999994)
define(y24, 0.786665999999991)
define(y25, 0.706665999999995)
define(y26, 0.481665999999991)
define(y27, 0.38166599999999)
define(y28, 0.406665999999998)
define(y29, 0.326665999999997)
define(y30, 0.626665999999994)
define(y31, 0.706665999999998)
define(y32, 0.806665999999987)
define(y33, 0.906665999999995)
define(y34, 1.006666)
define(y35, 1.08666599999999)
define(y36, 0.209999999999994)
define(y37, 0.289999999999994)
define(y38, 0.389999999999994)
define(y39, 0.489999999999994)
define(y40, 0.589999999999994)
define(y41, 0.669999999999994)
define(y42, 0.969999999999997)
define(y43, 0.889999999999997)
define(y44, 0.789999999999997)
define(y45, 0.689999999999997)
define(y46, 0.589999999999997)
define(y47, 0.509999999999997)
define(y48, 0.81)
define(y49, 0.89)
define(y50, 0.99)
define(y51, 1.09)
define(y52, 1.19)
define(y53, 1.27)


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
define(x10, 0)
define(x11, 0)
define(x12, 0)
define(x13, 0)
define(x14, 0)
define(x15, 0)
define(x16, 0)
define(x17, 0)
define(x18, 1.3333)
define(x19, 1.3333)
define(x20, 1.3333)
define(x21, 1.3333)
define(x22, 1.3333)
define(x23, 1.3333)
define(x24, 1.3333)
define(x25, 1.3333)
define(x26, 1.3333)
define(x27, 1.3333)
define(x28, 1.3333)
define(x29, 1.3333)
define(x30, 1.3333)
define(x31, 1.3333)
define(x32, 1.3333)
define(x33, 1.3333)
define(x34, 1.3333)
define(x35, 1.3333)
define(x36, 10.5)
define(x37, 10.5)
define(x38, 10.5)
define(x39, 10.5)
define(x40, 10.5)
define(x41, 10.5)
define(x42, 10.5)
define(x43, 10.5)
define(x44, 10.5)
define(x45, 10.5)
define(x46, 10.5)
define(x47, 10.5)
define(x48, 10.5)
define(x49, 10.5)
define(x50, 10.5)
define(x51, 10.5)
define(x52, 10.5)
define(x53, 10.5)


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
