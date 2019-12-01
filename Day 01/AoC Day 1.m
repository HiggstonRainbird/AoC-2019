(* ::Package:: *)

(* ::Text:: *)
(*Written December 1st, 2019.*)


(* ::Subsubsection:: *)
(*Import*)


(* ::Input:: *)
(*input=Import[FileNameJoin[{NotebookDirectory[],"Day1Input.txt"}],"List"];*)


(* ::Subsubsection:: *)
(*Part 1*)


(* ::Input:: *)
(*Total[Floor[#/3-2]&/@Flatten@input]*)


(* ::Subsubsection:: *)
(*Part 2*)


(* ::Input:: *)
(*Total[Table[Total@NestWhileList[Floor[#/3-2]&,i,#>0&][[2;;-2]],{i,input}]]*)
