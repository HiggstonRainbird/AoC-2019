(* ::Package:: *)

(* ::Text:: *)
(*Written December 11th, 2019.*)


(* ::Subsubsection:: *)
(*Import*)


(* ::Input:: *)
(*input=ToExpression/@(StringSplit[#,","]&@Flatten[Import[FileNameJoin[{NotebookDirectory[],"Day11Input.txt"}],"Table"]][[1]]);*)
(*input=Thread[Range[0,Length[#]-1]->#&@input];*)


(* ::Input:: *)
(*ClearAll@runIntcode;*)
(*runIntcode[inputList_List,inputValues_List,initialPosition_Integer,initialBase_Integer,OptionsPattern[{"OutputSteps"->False}]]:=*)
(*Module[{*)
(*intcodeProgram,*)
(*stepList={},*)
(*outputValue={},*)
(**)
(*padLengths={1->5,2->5,3->3,4->3,5->4,6->4,7->5,8->5,9->3},*)
(**)
(*i,jump,counter,*)
(**)
(*j,inputValue,*)
(*outputFlag=0,*)
(*fullOpCode,opCode,parameterModes,parameters,*)
(**)
(*relativeBase=initialBase,memory*)
(*},*)
(*intcodeProgram[n_Integer]:=0;*)
(*(*Do[intcodeProgram[i]=inputList\[LeftDoubleBracket]i\[RightDoubleBracket],{i,Length[inputList]}];*)*)
(*Do[intcodeProgram[inputList[[i,1]]]=inputList[[i,2]],{i,Length[inputList]}];*)
(**)
(*i=initialPosition;jump=1;counter=1;*)
(*j=1;*)
(**)
(*While[intcodeProgram[i]!=99,*)
(*fullOpCode=*)
(*PadLeft[IntegerDigits[intcodeProgram[i]],*)
(*IntegerDigits[intcodeProgram[i]][[-1]]/.padLengths];*)
(*opCode=FromDigits[fullOpCode[[-2;;]]];*)
(*parameterModes=Reverse[fullOpCode[[;;-3]]];*)
(*parameters=Table[*)
(*Which[*)
(*parameterModes[[j]]==0,*)
(*intcodeProgram[i+j],*)
(**)
(*parameterModes[[j]]==1,*)
(*i+j,*)
(**)
(*parameterModes[[j]]==2,*)
(*intcodeProgram[i+j]+relativeBase],*)
(*{j,Length[parameterModes]}];*)
(*jump=Length[parameterModes]+1;*)
(**)
(*If[OptionValue["OutputSteps"],*)
(*AppendTo[stepList,*)
(*Table[intcodeProgram[i+j],{j,0,Length[parameterModes]}]]];*)
(**)
(*Which[*)
(*opCode==1,*)
(*intcodeProgram[parameters[[3]]]=intcodeProgram[parameters[[2]]]+intcodeProgram[parameters[[1]]],*)
(**)
(*opCode==2,*)
(*intcodeProgram[parameters[[3]]]=intcodeProgram[parameters[[2]]]*intcodeProgram[parameters[[1]]],*)
(**)
(*opCode==3,*)
(*inputValue=inputValues[[j]];*)
(*intcodeProgram[parameters[[1]]]=inputValue;*)
(*If[j<Length[inputValues],j++],*)
(**)
(*opCode==4,*)
(*AppendTo[outputValue,intcodeProgram[parameters[[1]]]];*)
(*outputFlag+=1;*)
(*(*Print[outputValue]*),*)
(**)
(*opCode==5,*)
(*If[intcodeProgram[parameters[[1]]]!=0,*)
(*i=intcodeProgram[parameters[[2]]];*)
(*jump=0],*)
(**)
(*opCode==6,*)
(*If[intcodeProgram[parameters[[1]]]==0,*)
(*i=intcodeProgram[parameters[[2]]];*)
(*jump=0],*)
(**)
(*opCode==7,*)
(*If[intcodeProgram[parameters[[1]]]<intcodeProgram[parameters[[2]]],*)
(*intcodeProgram[parameters[[3]]]=1,*)
(*intcodeProgram[parameters[[3]]]=0],*)
(**)
(*opCode==8,*)
(*If[intcodeProgram[parameters[[1]]]==intcodeProgram[parameters[[2]]],*)
(*intcodeProgram[parameters[[3]]]=1,*)
(*intcodeProgram[parameters[[3]]]=0],*)
(**)
(*opCode==9,*)
(*relativeBase+=intcodeProgram[parameters[[1]]],*)
(**)
(*opCode==99\[Or]i>Length[intcodeProgram],*)
(*Break[]*)
(*];*)
(*counter++;*)
(*If[counter>1000000,*)
(*Print["Infinite Loop"];*)
(*Break[]];*)
(*i+=jump;*)
(*If[outputFlag==2,*)
(*Return[{#[[1,1,1]]->#[[1,1]]&/@DownValues[intcodeProgram][[;;-2]],i,relativeBase,outputValue}]];*)
(*];*)
(*If[intcodeProgram[i]==99,Return["Halt"]];*)
(*If[*)
(*OptionValue["OutputSteps"],*)
(*{outputValue,stepList},*)
(*outputValue]*)
(*]*)


(* ::Subsubsection:: *)
(*Part 1*)


(* ::Input:: *)
(*ClearAll@hull;*)
(*hull[{x_Integer,y_Integer}]:=0;*)
(*x=0;y=0;direction={{1,0},{0,1},{-1,0},{0,-1}};*)
(*state=runIntcode[input,{0},0,0];*)
(**)
(*While[*)
(*state=!="Halt",*)
(**)
(*hull[{x,y}]=state[[-1,1]];*)
(*If[*)
(*state[[-1,2]]==0,*)
(*direction=RotateRight[direction],*)
(*direction=RotateLeft[direction]*)
(*];*)
(*x+=direction[[1,1]];*)
(*y+=direction[[1,2]];*)
(*state=runIntcode[state[[1]],{hull[{x,y}]},state[[2]],state[[3]]];*)
(*];*)


(* ::Input:: *)
(*Length[DownValues[hull]]-1*)


(* ::Subsubsection:: *)
(*Part 2*)


(* ::Input:: *)
(*ClearAll@hull;*)
(*hull[{x_Integer,y_Integer}]:=0;*)
(*x=0;y=0;direction={{1,0},{0,1},{-1,0},{0,-1}};*)
(*state=runIntcode[input,{2},0,0];*)
(*globalWatch=0;i=1;*)
(**)
(*While[*)
(*state=!="Halt",*)
(**)
(*i+=1;*)
(*globalWatch={{x,y},i};*)
(*hull[{x,y}]=state[[-1,1]];*)
(*If[*)
(*state[[-1,2]]==0,*)
(*direction=RotateRight[direction],*)
(*direction=RotateLeft[direction]*)
(*];*)
(*x+=direction[[1,1]];*)
(*y+=direction[[1,2]];*)
(*state=runIntcode[state[[1]],{hull[{x,y}]},state[[2]],state[[3]]];*)
(*];*)


(* ::Input:: *)
(*values=#[[1,1,1]]->#[[1,1]]&/@DownValues[hull][[;;-2]];*)
(*values=#[[1,1,1]]-(Min[values[[;;,1]]]-1)->#[[1,1]]&/@DownValues[hull][[;;-2]];*)


(* ::Input:: *)
(*ImageReflect[SparseArray[values]//ArrayPlot]*)


(* ::Input:: *)
(**)
