(* ::Package:: *)
(* ::Title:: *)
(*Soramimi*)
(* ::Subchapter:: *)
(*程序包介绍*)
(* ::Text:: *)
(*Mathematica Package*)
(*Created by Mathematica Plugin for IntelliJ IDEA*)
(*Establish from GalAster's template*)
(**)
(*Author: 酱紫君*)
(*Creation Date:2017.8.1*)
(*Copyright:CC4.0 BY+NA+NC*)
(**)
(*该软件包遵从CC协议:署名、非商业性使用、相同方式共享*)
(**)
(*这里应该填这个函数的介绍*)
(* ::Section:: *)
(*函数说明*)
BeginPackage["Soramimi`"];
ASS2LRC::usage = "这里应该填这个函数的说明,如果要换行用\"\r\"\r就像这样";
(* ::Section:: *)
(*程序包正体*)
(* ::Subsection::Closed:: *)
(*主设置*)
Soramimi$Version="V0.0";
Soramimi$Environment="V11.0+";
Soramimi$LastUpdate="2017-08-06";
Soramimi::usage = "Soramimi包提供该项目所需的各个函数以及自动化脚本.";
Begin["`Private`"];
(* ::Subsection::Closed:: *)
(*主体代码*)
(* ::Subsubsection:: *)
(*功能块 1*)
ASS2LRC[name_String]:=Block[
	{raw,in,st,SR,head,tail,out},
	raw=Import[name,"CSV",CharacterEncoding->"UTF8"];
	in=Cases[raw,{"Dialogue: 0",st___}->{st}][[All,{1,-1}]];
	SR=StringReplace[#,"0:"~~x__~~":":>"["~~x~~".",1]<>"]"&;
	(*ASS时间转化为LRC时间,不支持大于60分钟.也可以使用等价的正则表达式*)
	(*SR=StringReplace[#,RegularExpression["0:(\\d+):(.+)"]\[Rule]"[$1.$2]"]&*)
	head={"[al:Soramimi]","[by:ASS2LRC]","[re:Mathematica]","[ti:脚本自动生成禁止修改]",""};
	tail={"["<>"Syncdate: "<>DateString["ISODateTime"]<>"]"};
	out=Join[head,StringJoin/@MapAt[SR,in,{All,1}],tail];
	Echo[FileBaseName[name]<>".ass","转换成功: "];
	Export[name<>".lrc",out,"Text"];
];




(* ::Subsubsection:: *)
(*功能块 2*)
ExampleFunction[2]="我就是个示例函数,什么功能都没有";


(* ::Subsection::Closed:: *)
(*附加设置*)
End[] ;

EndPackage[];
