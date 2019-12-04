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
(*Length@Select[IntegerDigits/@input,Sort[#]===#\[And]!DuplicateFreeQ[#]&]*)


(* ::Subsubsection:: *)
(*Part 2*)


(* ::Input:: *)
(*Length@Select[IntegerDigits/@input,Sort[#]===#\[And]MemberQ[Tally[#][[;;,2]],2]&]*)
