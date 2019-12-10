(* ::Package:: *)

(* ::Text:: *)
(*Written December 10th, 2019.*)


(* ::Subsubsection:: *)
(*Import*)


(* ::Input:: *)
(*input=Characters/@Flatten[Import[FileNameJoin[{NotebookDirectory[],"Day10Input.txt"}],"Table"]];*)


(* ::Input:: *)
(*input=Transpose[input/.{"#"->1,"."->0}];*)


(* ::Subsubsection:: *)
(*Sample*)


(* ::Subsubsection:: *)
(*Part 1*)


(* ::Input:: *)
(*asteroids=Position[input,1];*)


(* ::Input:: *)
(*Max@Table[Length[DeleteDuplicates[Table[Arg[Total[(a-b)*{1,I}]],{a,Complement[asteroids,b]}]]],{b,asteroids}]*)


(* ::Subsubsection:: *)
(*Part 2*)


(* ::Input:: *)
(*Select[*)
(*Table[{b,Length[DeleteDuplicates[Table[Arg[Total[(a-b)*{1,I}]],{a,Complement[asteroids,b]}]]]},{b,asteroids}],*)
(*#[[2]]==292&]*)


(* ::Input:: *)
(*angles=RotateLeft[SortBy[GatherBy[Table[{Arg[Total[(a-{21,21})*{1,I}]],EuclideanDistance[a,{21,21}],a},{a,Complement[asteroids,{21,21}]}],First],N[#[[1,1]]]&],101];*)
(*FirstPosition[angles[[;;,;;,1]],_?(#==-(\[Pi]/2)&)]*)


(* ::Input:: *)
(*Total[(angles[[200,1,3]]-1)*{100,1}]*)
