INSERT INTO tb_user (name, email, password) VALUES ('Bob Maley', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
INSERT INTO tb_user (name, email, password) VALUES ('Ana Fernanda', 'ana@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');

INSERT INTO tb_role (authority) VALUES ('ROLE_VISITOR');
INSERT INTO tb_role (authority) VALUES ('ROLE_MEMBER');

INSERT INTO tb_user_role (user_id, role_id) VALUES (1, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 1);
INSERT INTO tb_user_role (user_id, role_id) VALUES (2, 2);

INSERT INTO tb_genre (name) VALUES ('Anime');
INSERT INTO tb_genre (name) VALUES ('Action');
INSERT INTO tb_genre (name) VALUES ('Suspense');
INSERT INTO tb_genre (name) VALUES ('Aventura');
INSERT INTO tb_genre (name) VALUES ('Terror');
INSERT INTO tb_genre (name) VALUES ('Drama');

INSERT INTO tb_movie (title,sub_Title,year,img_Url,synopsis,genre_id) VALUES ('News of The World','Relatos do Mundo',2021,'https://br.web.img3.acsta.net/c_310_420/pictures/21/01/28/19/17/1791660.jpg','Em Relatos do Mundo, no ano de 1870, o Capitão Jefferson Kyle Kidd, um viúvo que já lutou em duas guerras, viaja através do Texas oferecendo notícias do mundo para as pessoas, apesar dos jornais estarem se tornando cada vez mais acessíveis.',4);
INSERT INTO tb_movie (title,sub_Title,year,img_Url,synopsis,genre_id) VALUES (' Slumdog Millionaire','Quem quer ser um milionario',2008,'https://br.web.img2.acsta.net/c_310_420/medias/nmedia/18/87/18/75/20028641.jpg','Jamal Malik vem de uma família das favelas de Mumbai, Índia, e está prestes a ganhar o prêmio de 20 milhões de rúpias no programa Quem Quer Ser Um Milionário?- feito que nenhum participante jamais conseguira até então.',6);
INSERT INTO tb_movie (title,sub_Title,year,img_Url,synopsis,genre_id) VALUES (' Luca','Luca',2021,'https://br.web.img2.acsta.net/c_310_420/pictures/21/05/07/10/59/3500748.jpg','Em Luca, acompanhamos uma história de amadurecimento sobre um jovem que vive um verão inesquecível repleto de sorvetes, massas e passeios intermináveis de scooter.',1);