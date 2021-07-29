INSERT INTO tb_user (name, email, password) VALUES ('Bob Marley', 'bob@gmail.com', '$2a$10$eACCYoNOHEqXve8aIWT8Nu3PkMXWBaOxJ9aORUYzfMQCbVBIhZ8tG');
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
INSERT INTO tb_genre (name) VALUES ('Comedia');
INSERT INTO tb_genre (name) VALUES ('Drama');

INSERT INTO tb_movie (title,sub_Title,year,img_Url,synopsis,genre_id) VALUES ('News of The World','Relatos do Mundo',2021,'https://br.web.img3.acsta.net/c_310_420/pictures/21/01/28/19/17/1791660.jpg','Em Relatos do Mundo, no ano de 1870, o Capitão Jefferson Kyle Kidd, um viúvo que já lutou em duas guerras, viaja através do Texas oferecendo notícias do mundo para as pessoas, apesar dos jornais estarem se tornando cada vez mais acessíveis.',4);
INSERT INTO tb_movie (title,sub_Title,year,img_Url,synopsis,genre_id) VALUES (' Slumdog Millionaire','Quem quer ser um milionario',2008,'https://br.web.img2.acsta.net/c_310_420/medias/nmedia/18/87/18/75/20028641.jpg','Jamal Malik vem de uma família das favelas de Mumbai, Índia, e está prestes a ganhar o prêmio de 20 milhões de rúpias no programa Quem Quer Ser Um Milionário?- feito que nenhum participante jamais conseguira até então.',6);
INSERT INTO tb_movie (title,sub_Title,year,img_Url,synopsis,genre_id) VALUES (' Luca','Luca',2021,'https://br.web.img2.acsta.net/c_310_420/pictures/21/05/07/10/59/3500748.jpg','Em Luca, acompanhamos uma história de amadurecimento sobre um jovem que vive um verão inesquecível repleto de sorvetes, massas e passeios intermináveis de scooter.',1);
INSERT INTO tb_movie (title,sub_Title,year,img_Url,synopsis,genre_id) VALUES (' Viúva Negra','Ela cansou de fugir de seu passado',2021,'https://www.themoviedb.org/t/p/w220_and_h330_face/rKq1Vlw0Bqe2EEvdmIkkkgPQAGf.jpg','Natasha Romanoff "Viúva Negra" precisa confrontar partes de sua história quando surge uma conspiração perigosa ligada ao seu passado. Perseguida por uma força que não irá parar até derrotá-la, Ela terá que lidar com sua antiga vida de espiã.',2);
INSERT INTO tb_movie (title,sub_Title,year,img_Url,synopsis,genre_id) VALUES (' Velozes & Furiosos 9','Todos os caminhos levam a isso',2021,'https://www.themoviedb.org/t/p/w220_and_h330_face/77I4w3N2bZjIGD9Ht4RPsedf9vE.jpg','Dominic Toretto e sua família precisam enfrentar o seu irmão mais novo Jakob, um assassino mortal que está trabalhando com uma antiga inimiga, a cyber-terrorista Cipher.',2);
INSERT INTO tb_movie (title,sub_Title,year,img_Url,synopsis,genre_id) VALUES (' O ymperio (do besterol) Contra-Ataca','Hollywood had it coming',2001,'https://www.themoviedb.org/t/p/w220_and_h330_face/aEsAdMAhwKYFgnHHxMOknktQYKK.jpg','Quando Jay e Silent Bob descobrem que os personagens de histórias em quadrinhos baseados neles, Bluntman e Chronic, irão ser adaptados para o cinema, eles vibram de alegria. Mas logo esta alegria vira raiva...',5);
INSERT INTO tb_movie (title,sub_Title,year,img_Url,synopsis,genre_id) VALUES (' O Balconista 2','With No Power Comes No Responsibility',2006,'https://www.themoviedb.org/t/p/w220_and_h330_face/htzy0Fvv8mz0gl2urNDhvgzOSYN.jpg','A loja de conveniência Quick Stop sempre foi o centro do universo dos balconistas Dante Hicks (Brian OHalloran) e Randal Graves (Jeff Anderson), ambos com 33 anos. Quando o lugar é destruído num incêndio.',5);
INSERT INTO tb_movie (title,sub_Title,year,img_Url,synopsis,genre_id) VALUES (' Without Remorse','Sem Remorso',2021,'https://www.themoviedb.org/t/p/w220_and_h330_face/rEm96ib0sPiZBADNKBHKBv5bve9.jpg','Um agente da CIA busca vingança depois de sua namorada ter sido morta por um traficante de Baltimore.',3);
INSERT INTO tb_movie (title,sub_Title,year,img_Url,synopsis,genre_id) VALUES (' Monstros no Trabalho','É o riso que queremos.',2021,'https://www.themoviedb.org/t/p/w220_and_h330_face/3ZXdBPhNtpI73rYcXoszyDLKwtO.jpg','Tylor Tuskmon é o primeiro da turma na Universidade Monstros e chega à Monstros S.A. para começar seu trabalho dos sonhos como um Assustador... ou não.',5);
INSERT INTO tb_movie (title,sub_Title,year,img_Url,synopsis,genre_id) VALUES (' Awake','Disorientation. Hallucinations. Hysteria. Sleep is survival.',2021,'https://www.themoviedb.org/t/p/w220_and_h330_face/1OTa0PfX2axMY8f9tFRSzESUgkC.jpg','O caos se instala no planeta depois que um acontecimento global neutraliza todos os equipamentos eletrônicos e acaba com a capacidade humana de dormir.',3);

INSERT INTO tb_review (text,movie_id,user_id) VALUES ('Muito bom para uma noite de ação',4,2);
INSERT INTO tb_review (text,movie_id,user_id) VALUES ('Otimo para criaças e adultos',3,2);
INSERT INTO tb_review (text,movie_id,user_id) VALUES ('Não gostei muito besta',6,2);