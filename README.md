1 - El patron de dise�o que utilic� para este programa es MVC, porque es el �nico que he manejado
por ahora y me siento bien implementandolo, el modelo User tiene varios Game.

2 - Para ser honesto no alcanc� a estudiarlos para asociarlos con el c�digo. Se que hay Factory, fachade y otros.

3 - No utilic� manejo de excepciones. Las he utilizado muy poco y solo en Ruby.

4 - Procur� manejar buenas gu�as de estilo.

5 - Necesario para almacenar los registros de los Users y Games con ActiveRecord.

6 - UsersController y GamesController, formato de respuesta HTML.

7 - 	Rails 5.2.2
	Ruby 2.5.3 p105
	Rspec 3.8

8 - Las pruebas unitarias, las hice en Ruby Rspec �nicamente para la funcionalidad del scoring.
	Adjunto archivo ruby con sus respectivo test el cual arroja resultados satisfactorios.
	Para correr el test utilizar comando: rspec 'ruta del archivo'
	No las hice en Rails, porque a�n no hemos utilizado Rspec en Rails.

9 - Strong Params, beforeAutenticate! y un helper que cre� para evitar que los usuarios puedan ver los scores de otros usuarios.

10 - 	beforeAutenticate! del devise
	Cre� un servicio para introducir la l�gica del scoring y no escribirla en el controlador.
	Tambi�n cre� un helper llamado user_permition para evitar que se pueda acceder a los scores de otros usuarios.

11 - Cumple los requerimientos funcionales a cabalidad.