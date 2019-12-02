(* ::Package:: *)

(* ::Text:: *)
(*Written December 2nd, 2019.*)


(* ::Subsubsection:: *)
(*Import*)


(* ::Input:: *)
(*input=ToExpression/@StringSplit[Import[FileNameJoin[{NotebookDirectory[],"Day2Input.txt"}],"Table"][[1,1]],","];*)


(* ::Subsubsection:: *)
(*Part 1*)


(* ::Input:: *)
(*runProgram[input,12,2]*)


(* ::Input:: *)
(*newInput=input;*)
(*newInput[[2]]=12;*)
(*newInput[[3]]=2;*)
(*i=1;*)
(*While[newInput[[i]]!=99,*)
(*Which[*)
(*newInput[[i]]==1,*)
(*newInput[[newInput[[i+3]]+1]]=newInput[[newInput[[i+1]]+1]]+newInput[[newInput[[i+2]]+1]],*)
(**)
(*newInput[[i]]==2,*)
(*newInput[[newInput[[i+3]]+1]]=newInput[[newInput[[i+1]]+1]]*newInput[[newInput[[i+2]]+1]],*)
(**)
(*newInput[[i,1]]==99\[Or]i>Length[newInput],*)
(*Break[]*)
(*];*)
(*i+=4;*)
(*];*)
(*newInput[[1]]*)


(* ::Subsubsection:: *)
(*Part 2*)


(* ::Input:: *)
(*Select[*)
(*Flatten[Table[*)
(*{x,y,*)
(*newInput=input;*)
(*newInput[[2]]=x;*)
(*newInput[[3]]=y;*)
(*i=1;*)
(*While[newInput[[i]]!=99,*)
(*Which[*)
(*newInput[[i]]==1,*)
(*newInput[[newInput[[i+3]]+1]]=newInput[[newInput[[i+1]]+1]]+newInput[[newInput[[i+2]]+1]],*)
(**)
(*newInput[[i]]==2,*)
(*newInput[[newInput[[i+3]]+1]]=newInput[[newInput[[i+1]]+1]]*newInput[[newInput[[i+2]]+1]],*)
(**)
(*newInput[[i,1]]==99\[Or]i>Length[newInput],*)
(*Break[]*)
(*];*)
(*i+=4;*)
(*];*)
(*newInput[[1]]}*)
(*,{x,99},{y,99}],1],*)
(*#[[-1]]==19690720&]*)


(* ::Input:: *)
(*100*31+46*)
