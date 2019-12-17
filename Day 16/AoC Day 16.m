(* ::Package:: *)

(* ::Text:: *)
(*Written December 16th, 2019.*)


(* ::Subsubsection:: *)
(*Import*)


(* ::Input:: *)
(*input=ToExpression@Flatten[Import[FileNameJoin[{NotebookDirectory[],"Day16Input.txt"}],"Table"]][[1]];*)
(*input=IntegerDigits[input];*)


(* ::Subsubsection:: *)
(*Part 1*)


(* ::Input:: *)
(*AbsoluteTiming[*)
(*newInput=input;*)
(*Do[*)
(*newInput=Mod[Abs[Total/@Table[(newInput[[i+j-1]])*{1,0,-1,0}[[Mod[Ceiling[j/i],4,1]]]*)
(*,{i,1,Length[newInput]},{j,Length[newInput]-i+1}]],10],*)
(*{k,100}]*)
(*]*)


(* ::Input:: *)
(*input[[;;8]]*)


(* ::Subsubsection:: *)
(*Part 2*)


(* ::Input:: *)
(*input=ToExpression@Flatten[Import[FileNameJoin[{NotebookDirectory[],"Day16Input.txt"}],"Table"]][[1]];*)
(*input=IntegerDigits[input];*)


(* ::Input:: *)
(*newSampleList=sampleInput[[#]]&@Table[Mod[i,Length[sampleInput],1],{i,FromDigits[sampleInput[[;;7]]]+1,Length[sampleInput]*10000}];*)
(*iteratedSampleList=newSampleList;*)
(*Do[*)
(*iteratedSampleList=Mod[Reverse[Accumulate[Reverse[iteratedSampleList]]],10],*)
(*{i,100}]*)


(* ::Input:: *)
(*iteratedSampleList[[;;8]]*)


(* ::Input:: *)
(*newList=input[[#]]&@Table[Mod[i,Length[input],1],{i,FromDigits[input[[;;7]]]+1,Length[input]*10000}];*)


(* ::Input:: *)
(*iteratedNewList=newList;*)
(*Do[*)
(*iteratedNewList=Mod[Reverse[Accumulate[Reverse[iteratedNewList]]],10],*)
(*{i,100}]*)


(* ::Input:: *)
(*iteratedNewList[[;;8]]*)
