domains
	num,byear,retake,k=integer
	fio=symbol
	sex=char
	gpa=real
	list=integer*
predicates
	student(num,fio,byear,sex)
	result(num,gpa,retake)
	length(list,integer)
	task_1(num,fio,gpa,retake)
	task_2(k)
clauses
	student(0,"Iustin Scotinkin Kondratevich",1989,'m').
	student(1,"Stella Novodranova Evseevna",1987,'f').
	student(2,"Ippolit Serverov Fadeevich",1990,'m').
	student(3,"Vesta Hernyak Vyacheslavovna",1988,'f').
	student(4,"Malahiya Shirinkin Alekseevich",1989,'m').
	student(5,"Beatrisa Satanisheva Yanovna",1991,'f').
	student(6,"Stepan Oblapenko Artemievich",1988,'m').
	student(7,"Avelina Uevich Kassianovna",1991,'f').
	student(8,"Aris Darmoedov Prokofevich",1986,'m').
	student(9,"Olimpiada Negodyaeva Maryanovna",1999,'f').
	student(10,"Bogolep Gnilosyr Nilovich",1998,'m').
	student(11,"Antonida Borodavkina Artamonovna",1995,'f').
	result(0,4.8,3).
	result(1,3,0).
	result(2,3.7,1).
	result(3,5,0).
	result(4,4.1,0).
	result(5,3.2,1).
	result(6,3.6,2).
	result(7,4.5,0).
	result(8,4.9,0).
	result(9,4.4,1).
	result(10,3.8,0).
	result(11,4.2,1).
	length([],0).
	length([_|TAIL],N):-length(TAIL,N1),N=N1+1.
	task_1(NUM,FIO,GPA,RETAKE):-student(NUM,FIO,_,_),result(NUM,GPA,RETAKE),GPA>=3.5,RETAKE>0.
	task_2(K):-findall(NUM,result(NUM,_,0),L),length(L,K),write(K).
%goal
	%task_1(NUM,FIO,GPA,RETAKE),write(FIO," - sredniy bal - ",GPA," - koli4estvo peresda4 - ",RETAKE),nl.
	