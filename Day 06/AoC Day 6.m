(* ::Package:: *)

(* ::Text:: *)
(*Written December 6th, 2019.*)


(* ::Subsubsection:: *)
(*Import*)


(* ::Input:: *)
(*input=StringSplit[#,")"]&/@Flatten[Import[FileNameJoin[{NotebookDirectory[],"Day6Input.txt"}],"Table"]];*)


(* ::Subsubsection:: *)
(*Part 1*)


(* ::Input:: *)
(*g=Graph[#[[1]]\[UndirectedEdge]#[[2]]&/@input];*)


(* ::Input:: *)
(*Complement[input[[;;,1]],input[[;;,2]]]*)


(* ::Input:: *)
(*Total@Table[GraphDistance[g,"COM",i],{i,VertexList[g]}]*)


(* ::Subsubsection:: *)
(*Part 2*)


(* ::Input:: *)
(*GraphDistance[g,SelectFirst[EdgeList[g],#[[2]]=="SAN"&][[1]],SelectFirst[EdgeList[g],#[[2]]=="YOU"&][[1]]]*)
