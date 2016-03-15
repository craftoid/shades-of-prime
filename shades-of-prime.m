(* ::Package:: *)

(* ::Title:: *)
(*Shades of Prime*)


primeTuples[n_,b_:10,t_:2] := Partition[Mod[Array[Prime,n],b],t,1]


primeTupleCounts[n_,b_:10, t_:2] :=
	BinCounts[primeTuples[n,b,t], Sequence @@ Table[{-.5,b - .5,1},t]]


tuplePlot[m_, b_:10] :=
	MatrixPlot[m,
		DataReversed -> True,
		Epilog -> {Black, MapIndexed[Text[IntegerString[FromDigits[#2-1, b],b, 2],Reverse[#2-1/2]]&, m, {2}]},
		FrameTicks -> {{#,IntegerString[#-1, b]}&/@ Range[b]},
		ImageSize -> Full,
		Mesh -> All
	]


countPlot[m_, b_:10] :=
	MatrixPlot[
		m,
		DataReversed -> True,
		Epilog -> {White, MapIndexed[Text[#1, Reverse[#2-1/2]]&, m, {2}]},
		FrameTicks  -> {{#,IntegerString[#-1, b]}&/@ Range[b]},
		PlotTheme  -> "Monochrome",
		ImageSize -> Full,
		Mesh -> All
	]


tupleCountPlot[m_, b_:10] := {tuplePlot, countPlot} [m, b] // Through // GraphicsRow


rasterPlot[m_]:=
	ArrayPlot[m, DataReversed -> True, PixelConstrained -> 2]


rasterPlot3D[m_] :=
	Graphics3D[
		Raster3D[ m, {{0,0,0}, {1, 1, 1}}, {0, Max[m]}, ColorFunction ->  (GrayLevel[0,#]&)],
		ViewPoint->{-2, -3, 2}
	]


(* ::Section:: *)
(*Shades of Prime (Base 10)*)


primeTupleCounts[10000] // tupleCountPlot


(* ::Section:: *)
(*Shades of Prime (Base 16)*)


primeTupleCounts[10000,16] // tupleCountPlot[#,16]&


(* ::Section:: *)
(*Shades of Prime (Base 256)*)


primeTupleCounts[1000000,256] //rasterPlot


(* ::Section:: *)
(*Shades of Prime Triples (Base 256)*)


primeTupleCounts[1000000, 256, 3] // rasterPlot3D
