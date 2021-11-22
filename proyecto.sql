CREATE TABLE `users` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `Name` VARCHAR(100) NOT NULL,
   `Email` VARCHAR(100) NOT NULL,
   `created_at` DATE NOT NULL,
   `updated_at` DATE DEFAULT NULL,
   `deleted` TINYINT DEFAULT NULL,
   PRIMARY KEY (`id`)
);
CREATE TABLE `Notes` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `user_id` INT NOT NULL,
   `title` VARCHAR(255) NOT NULL,
   `desciption` TEXT NOT NULL,
   `removable` TINYINT NOT NULL,
   `created_at` DATE NOT NULL,
   `updated_at` DATE DEFAULT NULL,
   PRIMARY KEY (`id`)
);
CREATE TABLE `notes_categories` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `note_id` INT DEFAULT NULL,
   `categori_id` INT DEFAULT NULL,
   PRIMARY KEY (`id`)
);
CREATE TABLE `categories` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `name` VARCHAR(70) NOT NULL,
   `created_at` DATE NOT NULL,
   `updated_at` DATE DEFAULT NULL,
   `deleted` TINYINT DEFAULT NULL,
   PRIMARY KEY (`id`)
);
ALTER TABLE `Notes` ADD CONSTRAINT `FK_44aa7e67-bc1b-47bc-ac9c-9cf1db8b7148` FOREIGN KEY (`user_id`) REFERENCES `users`(`id`)  ;
ALTER TABLE `notes_categories` ADD CONSTRAINT `FK_1473cc1c-014d-43ca-8563-cad802c5bd77` FOREIGN KEY (`note_id`) REFERENCES `Notes`(`id`)  ;
ALTER TABLE `notes_categories` ADD CONSTRAINT `FK_2045e442-8786-4501-8f9c-5ff26a675487` FOREIGN KEY (`categori_id`) REFERENCES `categories`(`id`)  ;
insert into users values
(default, "pepe" , "maildepepe@mail.com", now() , now() , NULL )
insert into users values
(default, "papa" , "maildepepe@mail.com", now() , now() , NULL )
insert into users values
(default, "pipi" , "maildepepe@mail.com", now() , now() , NULL )
insert into users values
(default, "popo" , "maildepepe@mail.com", now() , now() , NULL )
insert into users values
(default, "pupu" , "maildepepe@mail.com", now() , now() , NULL )
insert into users values
(default, "pepe1" , "maildepepe@mail.com", now() , now() , NULL )
insert into users values
(default, "papa1" , "maildepepe@mail.com", now() , now() , NULL )
insert into users values
(default, "pipi1" , "maildepepe@mail.com", now() , now() , NULL )
insert into users values
(default, "popo1" , "maildepepe@mail.com", now() , now() , NULL )
insert into users values
(default, "pupu1" , "maildepepe@mail.com", now() , now() , NULL )