(* ::Package:: *)

(* ::Text:: *)
(*Written December 3rd, 2019.*)


(* ::Subsubsection:: *)
(*Import*)


(* ::Input:: *)
(*input=Import[FileNameJoin[{NotebookDirectory[],"Day3Input.txt"}],"Table"];*)


(* ::Input:: *)
(*input=StringSplit[#,","]&/@Flatten[input];*)


(* ::Subsubsection:: *)
(*Part 1*)


(* ::Input:: *)
(*line1={{0,0}};*)
(*Do[*)
(*AppendTo[line1,line1[[-1]]+*)
(*Which[*)
(*Characters[i][[1]]=="R",{0,ToExpression[StringTake[i,2;;-1]]},*)
(*Characters[i][[1]]=="L",{0,-ToExpression[StringTake[i,2;;-1]]},*)
(*Characters[i][[1]]=="U",{ToExpression[StringTake[i,2;;-1]],0},*)
(*Characters[i][[1]]=="D",{-ToExpression[StringTake[i,2;;-1]],0}]],*)
(*{i,input[[1]]}];*)
(*line2={{0,0}};*)
(*Do[*)
(*AppendTo[line2,line2[[-1]]+*)
(*Which[*)
(*Characters[i][[1]]=="R",{0,ToExpression[StringTake[i,2;;-1]]},*)
(*Characters[i][[1]]=="L",{0,-ToExpression[StringTake[i,2;;-1]]},*)
(*Characters[i][[1]]=="U",{ToExpression[StringTake[i,2;;-1]],0},*)
(*Characters[i][[1]]=="D",{-ToExpression[StringTake[i,2;;-1]],0}]],*)
(*{i,input[[2]]}]*)


(* ::Input:: *)
(*intersections=RegionIntersection[Line[line1],Line[line2]][[1,;;-2]];*)
(*Min[Total[Abs[#]]&/@intersections]*)


(* ::Subsubsection:: *)
(*Part 2*)


(* ::Input:: *)
(*AbsoluteTiming[*)
(*positionList1=Table[{0,0},{i,Total[ToExpression[StringTake[#,2;;-1]]&/@input[[1]]]+1}];*)
(*k=2;*)
(*Do[*)
(*Do[*)
(*positionList1[[k]]=positionList1[[k-1]]+*)
(*Which[*)
(*Characters[i][[1]]=="R",{0,1},*)
(*Characters[i][[1]]=="L",{0,-1},*)
(*Characters[i][[1]]=="U",{1,0},*)
(*Characters[i][[1]]=="D",{-1,0}];*)
(*k+=1,*)
(*{j,ToExpression[StringTake[i,2;;-1]]}]*)
(*,{i,input[[1]]}]*)
(*]*)


(* ::Input:: *)
(*AbsoluteTiming[*)
(*positionList2=Table[{0,0},{i,Total[ToExpression[StringTake[#,2;;-1]]&/@input[[2]]]+1}];*)
(*k=2;*)
(*Do[*)
(*Do[*)
(*positionList2[[k]]=positionList2[[k-1]]+*)
(*Which[*)
(*Characters[i][[1]]=="R",{0,1},*)
(*Characters[i][[1]]=="L",{0,-1},*)
(*Characters[i][[1]]=="U",{1,0},*)
(*Characters[i][[1]]=="D",{-1,0}];*)
(*k+=1,*)
(*{j,ToExpression[StringTake[i,2;;-1]]}]*)
(*,{i,input[[2]]}]*)
(*]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*intersections={{174,-1059},{166,-1059},{810,-1066},{737,-1217},{1369,-1217},{-1163,-1324},{737,-1345},{174,-1355},{166,-1355},{615,-1355},{315,-1355},{810,-1501},{615,-1501},{315,-1501},{315,-1614},{166,-1614},{415,-1620},{810,-1766},{615,-1766},{597,-1766},{480,-1766},{1179,-1836},{927,-1836},{1369,-1836},{-1181,-1879},{1179,-1885},{927,-1885},{14,-2267},{-692,-2267},{-1755,-2366},{-1604,-2698},{-1576,-3034},{-1620,-3034},{-2571,-3112},{-1576,-3123},{-1620,-3123},{-1942,-3160},{-1941,-3171},{-2274,-3171},{-1576,-3375}};*)


(* ::Input:: *)
(*Min@Table[*)
(*FirstPosition[positionList1,int][[1]]+FirstPosition[positionList2,int][[1]]-2,*)
(*{int,intersections}]*)
