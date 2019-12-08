(* ::Package:: *)

(* ::Text:: *)
(*Written December 8th, 2019.*)


(* ::Subsubsection:: *)
(*Import*)


(* ::Input:: *)
(*input=Flatten[Import[FileNameJoin[{NotebookDirectory[],"Day8Input.txt"}],"Table"]][[1]];*)
(*input=IntegerDigits@input;*)
(*table=Partition[Partition[input,25],6];*)


(* ::Subsubsection:: *)
(*Part 1*)


(* ::Input:: *)
(*#[[2,2]]*#[[3,2]]&@SortBy[Tally[Flatten[SortBy[table,Count[Flatten[#],0]&][[1]]]],First]*)


(* ::Subsubsection:: *)
(*Part 2*)


(* ::Input:: *)
(*Table[*)
(*SelectFirst[Table[table[[i,j,k]],{i,100}],#!=2&],*)
(*{j,6},{k,25}]//ArrayPlot*)
