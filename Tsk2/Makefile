lab3_tsk2FB: lab3_tsk2Flex.l lab3_tsk2Bison.y
	bison -d lab3_tsk2Bison.y
	flex lab3_tsk2Flex.l
	gcc -o lab3_tsk2FB lab3_tsk2Bison.tab.c lex.yy.c -lfl