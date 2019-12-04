(* ::Package:: *)

(* ::Text:: *)
(*Written December 4th, 2019.*)


(* ::Subsubsection:: *)
(*Import*)


(* ::Input:: *)
(*input=Range[271973,785961];*)


(* ::Subsubsection:: *)
(*Part 1*)


(* ::Input:: *)
(*Length@Select[input,Sort[IntegerDigits[#]]===IntegerDigits[#]\[And]!DuplicateFreeQ[IntegerDigits[#]]&]*)


(* ::Subsubsection:: *)
(*Part 2*)


(* ::Input:: *)
(*Length@Select[input,Sort[IntegerDigits[#]]===IntegerDigits[#]\[And]MemberQ[Tally[IntegerDigits[#]][[;;,2]],2]&]*)
