medico(m1,rosales).
medico(m2,manni).
paciente(p1,juan).
paciente(p2,ana).
atiende(m1,p1).
atiende(m1,p2).
atiende(m2,p2). 
menu:-
  write("-----------Menu principal--------------"),nl,
  write("Digite su obcion:"),nl,
  tab(10),write("1) Opcion 1: Mostrar todos los pacientes que atiende un medico"),nl,
  tab(10),write("2) Opcion 2: Mostrar los medicos que atienden a un paciente"),nl,
  tab(10),write("3) Opcion 3: Cerrar"),nl,
  tab(10),write("4) Salir"),nl,
  write("Su obcion es: "), read(Opcion),ejecutar(Opcion).
ejecutar(1):- write("Ingrese el nombre del medico: "),
      read(Nombre),
              mostrarpacientes(Nombre),menu.
ejecutar(2):- write("Ingrese el nombre del paciente: "),
      read(Nombre),
              mostrarmedicos(Nombre),menu.
ejecutar(3):- write("Chao").
        
mostrarpacientes(Nombre):- medico(X,Nombre), atiende(X,Y), paciente(Y,Z), write(Z),nl,fail.
mostrarpacientes(_).
mostrarmedicos(Nombre):- paciente(X,Nombre), atiende(Y,X), medico(Y,Z), write(Z),nl,fail.
mostrarmedicos(_).

listarp(Nombre):- medico(X,Nombre), atiende(X,Y),paciente(Y,Z),write(Z),nl.
%----------------Carga el Menu Principal------------------