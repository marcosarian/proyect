CREATE TABLE `notes` (
   `id` INT NOT null AUTO_INCREMENT,
   `user_id` INT NOT NULL,
   `tittle` VARCHAR(100) NOT NULL,
   `create_date` DATE NOT NULL,
   `update_date` DATE NOT NULL,
   `description` TEXT,
   `delete_data` TINYINT NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `users` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `nombre` VARCHAR(100) NOT NULL,
   `email` VARCHAR(100) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `category` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(100) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `category_note` (
   `id` INT NOT NULL,
   `notes_id` INT NOT NULL,
   `category_id` INT NOT NULL,
   PRIMARY KEY (`id`)
);


ALTER TABLE `notes` ADD CONSTRAINT `FK_ba6028e0-ac21-4836-bbb1-3158e29ebaaa` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`)  ;

ALTER TABLE `category_note` ADD CONSTRAINT `FK_bfbc4a79-8203-4bfb-862e-8528c35d2198` FOREIGN KEY (`notes_id`) REFERENCES `notes`(`id`)  ;

ALTER TABLE `category_note` ADD CONSTRAINT `FK_3e725e1c-c684-4bff-ab9e-a095201c6a50` FOREIGN KEY (`category_id`) REFERENCES `category`(`id`)  ;

INSERT INTO `users` (`id`, `nombre`, `email`) VALUES (NULL, 'Luana Mingione', 'luanamingione@gmail.com');
INSERT INTO `users` (`id`, `nombre`, `email`) VALUES (NULL, 'Franco Sanchez', 'francocaver@gmail.com');
INSERT INTO `users` (`id`, `nombre`, `email`) VALUES (NULL, 'Jorge Carloto', 'pilotGeorge@gmail.com');
INSERT INTO `users` (`id`, `nombre`, `email`) VALUES (NULL, 'Alexia Williams', 'aleWilliams@gmail.com');
INSERT INTO `users` (`id`, `nombre`, `email`) VALUES (NULL, 'Alexis Shady', 'alex_shady@gmail.com');
INSERT INTO `users` (`id`, `nombre`, `email`) VALUES (NULL, 'Antonella Colinas', 'antoc@gmail.com');
INSERT INTO `users` (`id`, `nombre`, `email`) VALUES (NULL, 'Gabriela Bustica', 'gabybusty@gmail.com');
INSERT INTO `users` (`id`, `nombre`, `email`) VALUES (NULL, 'Oriana Mingione', 'mingori@gmail.com');
INSERT INTO `users` (`id`, `nombre`, `email`) VALUES (NULL, 'Diego Maldini', 'diegoMaldini@gmail.com');
INSERT INTO `users` (`id`, `nombre`, `email`) VALUES (NULL, 'Mariano Ramos', 'marianoRamos@gmail.com');

select * from users u 

INSERT INTO `category` (`id`, `name`) VALUES (NULL, 'en proceso');
INSERT INTO `category` (`id`, `name`) VALUES (NULL, 'pendiente');
INSERT INTO `category` (`id`, `name`) VALUES (NULL, 'archivada');
INSERT INTO `category` (`id`, `name`) VALUES (NULL, 'en conflicto');
INSERT INTO `category` (`id`, `name`) VALUES (NULL, 'terminada');
INSERT INTO `category` (`id`, `name`) VALUES (NULL, 'borrada');
INSERT INTO `category` (`id`, `name`) VALUES (NULL, 'inconclusa');
INSERT INTO `category` (`id`, `name`) VALUES (NULL, 'pendiente');
INSERT INTO `category` (`id`, `name`) VALUES (NULL, 'demorada');
INSERT INTO `category` (`id`, `name`) VALUES (NULL, 'borrada');


select * from category c 

 INSERT INTO `notes` (`id`, `user_id`, `tittle`, `create_date`, `update_date`, `description`,`delete_data`)VALUES (NULL, '1', 'primer nota',  '2021-11-11', '2021-11-11','Realizar todas las actividades del playground', '0');
 INSERT INTO `notes` (`id`, `user_id`, `tittle`, `create_date`, `update_date`, `description`,`delete_data`)VALUES (NULL, '2', 'Segunda nota',  '2021-11-12', '2021-11-12','Repasar modulos', '0');
 INSERT INTO `notes` (`id`, `user_id`, `tittle`, `create_date`, `update_date`, `description`,`delete_data`)VALUES (NULL, '3', 'Tercer nota',  '2021-11-12', '2021-11-12','Hacer una pagina web', '1');
 INSERT INTO `notes` (`id`, `user_id`, `tittle`, `create_date`, `update_date`, `description`,`delete_data`)VALUES (NULL, '4', 'Cuarta nota',  '2021-11-12', '2021-11-12','Entender el CRUD', '1');
 INSERT INTO `notes` (`id`, `user_id`, `tittle`, `create_date`, `update_date`, `description`,`delete_data`)VALUES (NULL, '5', 'Quinta nota',  '2021-11-12', '2021-11-12','Entregable individual', '0');
 INSERT INTO `notes` (`id`, `user_id`, `tittle`, `create_date`, `update_date`, `description`,`delete_data`)VALUES (NULL, '6', 'Sexta nota',  '2021-11-12', '2021-11-12','Acomodar carpetas', '1');
 INSERT INTO `notes` (`id`, `user_id`, `tittle`, `create_date`, `update_date`, `description`,`delete_data`)VALUES (NULL, '7', 'Septima nota',  '2021-11-12', '2021-11-12','Crud pagina propia', '0');
 INSERT INTO `notes` (`id`, `user_id`, `tittle`, `create_date`, `update_date`, `description`,`delete_data`)VALUES (NULL, '8', 'Octava nota',  '2021-11-12', '2021-11-12','Curso Full stack', '0');
 INSERT INTO `notes` (`id`, `user_id`, `tittle`, `create_date`, `update_date`, `description`,`delete_data`)VALUES (NULL, '9', 'Novena nota',  '2021-11-12', '2021-11-12','Conseguir trabajo', '1');
 INSERT INTO `notes` (`id`, `user_id`, `tittle`, `create_date`, `update_date`, `description`,`delete_data`)VALUES (NULL, '10', 'Decima nota',  '2021-11-12', '2021-11-12','Actividades JavaScript', '0');

select * from notes n 


INSERT INTO `category_note` (`id`, `category_id`, `notes_id`) VALUES (NULL, '1', '1');
INSERT INTO `category_note` (`id`, `category_id`, `notes_id`) VALUES (NULL, '2', '2');
INSERT INTO `category_note` (`id`, `category_id`, `notes_id`) VALUES (NULL, '1', '9');
INSERT INTO `category_note` (`id`, `category_id`, `notes_id`) VALUES (NULL, '4', '4');
INSERT INTO `category_note` (`id`, `category_id`, `notes_id`) VALUES (NULL, '5', '3');
INSERT INTO `category_note` (`id`, `category_id`, `notes_id`) VALUES (NULL, '1', '8');
INSERT INTO `category_note` (`id`, `category_id`, `notes_id`) VALUES (NULL, '3', '10');
INSERT INTO `category_note` (`id`, `category_id`, `notes_id`) VALUES (NULL, '7', '6');
INSERT INTO `category_note` (`id`, `category_id`, `notes_id`) VALUES (NULL, '9', '5');
INSERT INTO `category_note` (`id`, `category_id`, `notes_id`) VALUES (NULL, '4', '7');
