ClrHome

Lbl MM
Menu("Sequence Calculator","Arithmetic",AR,"Geometric",GE,"Validate Sequence",VA,"Quit",00)

Goto MM

Lbl AR
Disp "Mode: Arithmetic",""
Input "First term? ",A
Input "Common diff? ",D
Input "nth term? ",N
A+(N-1)*D→V
(N*(2A+(N-1)*D))/2→W
ClrHome
Output(1,1,"Mode: Arithmetic")
Output(3,1,"Term "+toString(N)+" is "+toString(V))
Output(4,1,"Sum to "+toString(N)+" is "+toString(W))
Output(6,1,"Press [Enter] to exit")
Pause 
ClrHome
Stop

Lbl GE
Disp "Mode: Geometric",""
Input "First term? ",B
Input "Common ratio? ",R
Input "nth term? ",M
B*(R^(M-1))→X
(B(1-R^M))/(1-R)→Y
ClrHome
Output(1,1,"Mode: Geometric")
Output(3,1,"Term "+toString(M)+" is "+toString(X))
Output(4,1,"Sum to "+toString(M)+" is "+toString(Y))
Output(6,1,"Press [Enter] to exit")
Pause 
ClrHome
Stop

Lbl VA
ClrHome
Disp "Mode: Validator",""
Disp "Three known terms in order"
Prompt A,B,C
Disp "","Term A position in seq?"
Disp "If unknown, enter 1."
Prompt P
ClrHome
If B-A=C-B:Then
B-A→D
A-(P-1)*D→F
Output(1,1,"Seqn: "+toString(A)+" "+toString(B)+" "+toString(C))
Output(2,1,"Arithmetic Sequence")
Output(4,1,"First term: "+toString(F))
Output(5,1,"Diffrence: "+toString(D))
Output(7,1,"Press [Enter] to exit")
Pause 
ClrHome
Stop
Else
If B/A=C/B:Then
B/A→R
A/(R^(P-1))→F
Output(1,1,"Seqn: "+toString(A)+" "+toString(B)+" "+toString(C))
Output(2,1,"Geometric Sequence")
Output(4,1,"First term: "+toString(F))
Output(5,1,"Ratio: "+toString(R))
Output(7,1,"Press [Enter] to exit")
Pause 
ClrHome
Stop
Else
Menu("No correlation found.","Back to main menu",MM,"Try again",VA,"Quit",00)
End
ClrHome

Lbl 00
ClrHome
Stop
