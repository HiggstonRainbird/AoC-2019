(* ::Package:: *)

(* ::Text:: *)
(*Written December 22nd, 2019.*)


(* ::Subsubsection:: *)
(*Import*)


(* ::Input:: *)
(*input=StringSplit[Import[FileNameJoin[{NotebookDirectory[],"Day22Input.txt"}]],"\n"];*)


(* ::Subsubsection:: *)
(*Part 1*)


(* ::Input:: *)
(*dealNewStack[deck_]:=Reverse[deck];*)
(**)
(*cutCards[deck_,n_]:=*)
(*If[*)
(*n>0,*)
(*Join[deck[[n+1;;]],deck[[;;n]]],*)
(*Join[deck[[n;;]],deck[[;;n-1]]]*)
(*];*)
(**)
(*dealIncrement[deck_,inc_]:=*)
(*Table[*)
(*deck[[Mod[i*ModularInverse[inc,Length[deck]],Length[deck]]+1]],*)
(*{i,0,Length[deck]-1}];*)


(* ::Input:: *)
(*cards=Range[0,10006];*)
(**)
(*Do[*)
(*Which[*)
(*inst[[1]]=="deal"\[And]inst[[2]]=="with",cards=dealIncrement[cards,ToExpression[inst[[4]]]],*)
(*inst[[1]]=="deal"\[And]inst[[2]]=="into",cards=dealNewStack[cards],*)
(*inst[[1]]=="cut",cards=cutCards[cards,ToExpression[inst[[2]]]]*)
(*]*)
(*,{inst,StringSplit[input]}];*)


(* ::Input:: *)
(*FirstPosition[cards,2019]-1*)


(* ::Subsubsection:: *)
(*Part 2*)


(* ::Input:: *)
(*newDealIncrement[p_,inc_,s_]:=*)
(*Mod[p*ModularInverse[inc,s],s];*)
(*newCutCards[p_,inc_,s_]:=*)
(*Mod[p+inc,s];*)
(*newDealNewStack[p_,s_]:=*)
(*Mod[s-(p+1),s];*)
(**)


(* ::Input:: *)
(*deckSize=119315717514047;*)
(*position=x;*)
(*Do[*)
(*Which[*)
(*inst[[1]]=="deal"\[And]inst[[2]]=="with",position=newDealIncrement[position,ToExpression[inst[[4]]],deckSize],*)
(*inst[[1]]=="deal"\[And]inst[[2]]=="into",position=newDealNewStack[position,deckSize],*)
(*inst[[1]]=="cut",position=newCutCards[position,ToExpression[inst[[2]]],deckSize]*)
(*]*)
(*,{inst,Reverse[StringSplit[input]]}];*)
(*ExpandAll@FullSimplify@position*)


(* ::Input:: *)
(*a=-7523668286156078544111000266586902328202215798546303519651388201616895950310661271560764418088430271578993814336762041514278460552282665900346294024331216362413126244616942470505784891927560212072814034100299499849325968465576902605097598760139970002996677404216413216012043703774173758123905535620338177131226767276254746687286936210342764545493133346433208369309407846586929986351677250841227818057952749602610845305938338345381335023797343995655910048284141734748772469744727934611818562902188528891461299458004293047317916484070855432018229379337855322507667694927985968191765571668403272925068170707100819578254484486225920;*)
(*b=80954016375905;*)
(*Table[Mod[PowerMod[a,n,deckSize]*2020+b*(PowerMod[a,n,deckSize]-1)*ModularInverse[a-1,deckSize],deckSize],{n,{101741582076661}}]*)
