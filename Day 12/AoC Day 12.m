(* ::Package:: *)

(* ::Text:: *)
(*Written December 12th, 2019.*)


(* ::Subsubsection:: *)
(*Import*)


(* ::Input:: *)
(*input=(ToExpression/@Select[StringSplit[#,{"<"|">","=",",","x","y","z"," "}],#!=""&])&/@StringSplit[Import[FileNameJoin[{NotebookDirectory[],"Day12Input.txt"}]],"\n"];*)
(*input={#,{0,0,0}}&/@input;*)


(* ::Subsubsection:: *)
(*Part 1*)


(* ::Input:: *)
(*ClearAll@state*)
(*state=input;*)
(*Do[*)
(*Do[*)
(*Do[*)
(*Which[*)
(*state[[i[[1]],1,j]]<state[[i[[2]],1,j]],*)
(*state[[i[[1]],2,j]]+=1;state[[i[[2]],2,j]]-=1,*)
(**)
(*state[[i[[1]],1,j]]>state[[i[[2]],1,j]],*)
(*state[[i[[1]],2,j]]-=1;state[[i[[2]],2,j]]+=1*)
(*],{j,1,3}];*)
(*,{i,Subsets[{1,2,3,4},{2}]}];*)
(*state[[;;,1]]+=state[[;;,2]];*)
(*,{k,1000}];*)
(*Total[#[[1]]*#[[2]]&/@Map[Total,Abs[state],{2}]]*)


(* ::Subsubsection:: *)
(*Part 2*)


(* ::Input:: *)
(*ClearAll@state;*)
(*state=input;*)
(**)
(*period={0,0,0};*)
(*ClearAll@posList;*)
(*posList[1]=state[[;;,1,1]];*)
(*posList[2]=state[[;;,1,2]];*)
(*posList[3]=state[[;;,1,3]];*)
(*Do[*)
(*globalWatch=k;*)
(*Do[*)
(*Do[*)
(*Which[*)
(*state[[i[[1]],1,j]]<state[[i[[2]],1,j]],*)
(*state[[i[[1]],2,j]]+=1;state[[i[[2]],2,j]]-=1,*)
(**)
(*state[[i[[1]],1,j]]>state[[i[[2]],1,j]],*)
(*state[[i[[1]],2,j]]-=1;state[[i[[2]],2,j]]+=1*)
(*],{j,1,3}];*)
(*,{i,Subsets[{1,2,3,4},{2}]}];*)
(*state[[;;,1]]+=state[[;;,2]];*)
(*Do[*)
(*If[state[[;;,1,j]]===posList[j]\[And]k>2\[And]period[[j]]==0,period[[j]]=k];*)
(*,{j,1,3}];*)
(*If[Min[period]>0,Break[]];*)
(*,{k,10^6}];*)


(* ::Input:: *)
(*LCM@@(period+1)*)
