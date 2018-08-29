﻿unit LUX.Geometry.Curve.T1.D3;

interface //#################################################################### ■

uses LUX, LUX.D3,
     LUX.Geometry, LUX.Geometry.D3;

//type //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【型】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

     //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//const //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【定数】

//var //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【変数】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

function BSplin4( const T1_,T2_,T3_,T4_:TSingleTria3D; const T_:Single ) :TSingleTria3D; overload;
function BSplin4( const T1_,T2_,T3_,T4_:TDoubleTria3D; const T_:Double ) :TDoubleTria3D; overload;

implementation //############################################################### ■

uses LUX.D4, LUX.Curve.T1.D1;

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【レコード】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【クラス】

//$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$【ルーチン】

function BSplin4( const T1_,T2_,T3_,T4_:TSingleTria3D; const T_:Single ) :TSingleTria3D;
var
   Ws :TSingle4D;
begin
     BSplin4( T_, Ws );

     Result := T1_ * Ws[ 1 ] + T2_ * Ws[ 2 ] + T3_ * Ws[ 3 ] + T4_ * Ws[ 4 ];
end;

function BSplin4( const T1_,T2_,T3_,T4_:TDoubleTria3D; const T_:Double ) :TDoubleTria3D;
var
   Ws :TDouble4D;
begin
     BSplin4( T_, Ws );

     Result := T1_ * Ws[ 1 ] + T2_ * Ws[ 2 ] + T3_ * Ws[ 3 ] + T4_ * Ws[ 4 ];
end;

//############################################################################## □

initialization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 初期化

finalization //$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$$ 最終化

end. //######################################################################### ■
