# MYSQL DATABASE

## Purpose
Me and my colaborators are attending a graduation course on FACENS, a tecnology/engineering university at Sorocaba, SP, Brasil. As part of one of our experimental projects, we developed a teoretical device whose main functionality was to read and save water consuption through a building's pipe system.  
To make it a more contextualized, we "were" a company in charge of selling those devices to people.  
Since we were still in the beggining of the course, we did what we knew, and I was the one in charge of developing its database.

## Structure

##### Description
I developed an MySQL database through the use of its workbench.  
Honestly, I may have over-developed and over-organized it, but I felt it deserved something more since I was the sole developer. I divided the script between related snippets and their sizes.  
The main part of the sql is the insert and delete procedures, since it should follow a particular hierarchy in its objects: every client may have multiple adressess and each adress may have multiple devices installed. As consequence, no device can be assigned to a null adress nor to a null client, similarly to the any adress.  
This means that whenever a adress is inserted in the database, at least through its defined procedure, it must be linked to a client, just like a device must be linked to an adress. All of this is aided by the get_id's procedures.  
Since we wouldn't have any physical devices, there's a function to create random series numbers without repeating.  
"Raw views" were build to help testing without taking the physical space normal SELECT queries do.  
To add the cherry on top, I added a log system for when object data is deleted from the database and some script with testing data, for easier showing.

##### Logical Model
![Modelo lógico](https://github.com/GabrielRosa835/Trabalho-UPXII-Banco_de_Dados/assets/150252238/b7ae4d1a-ce7c-4226-ac66-b1170ca19e5f)

## Projects Colaborators
[Gabriel Rosa da Silva (Myself)](https://github.com/GabrielRosa835)  
[Guilherme Augusto Estefani Souza](https://github.com/itsguisouza)  
[Lucas Marcone Oliveira Freitas](https://github.com/Lumarcone)  
[Milena Mazzei Barcia](https://github.com/milenabarcia)  
[Thomas Soares da Silveira](https://github.com/ThomasJanoski)  
[Wesley Matheus Silva](https://github.com/Weslethai)  
