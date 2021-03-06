insert(Num,[],[Num]).
insert(Num,[Head|Tail],[Num,Head|Tail]):- Num =< Head.
%Recursive case: Num insert somewhere in the tail.
insert(Num,[Head|Tail],[Head|Tailonly]):- insert(Num,Tail,Tailonly).
