lab3_tsk3FB: lab3_tsk3F.l lab3_tsk3B.y
	bison -d lab3_tsk3B.y
	flex lab3_tsk3F.l
	gcc -o lab3_tsk3FB lab3_tsk3B.tab.c lex.yy.c -lfl