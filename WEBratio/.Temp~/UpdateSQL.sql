-- User [User]
alter table `user`  add column  `nome_2`  varchar(255);
alter table `user`  add column  `telemovel_2`  integer;
alter table `user`  add column  `estado_2`  bit;


-- User_Anuncios [rel6]
alter table `user`  add column  `anuncios_id_anuncio`  integer;
alter table `user`   add index fk_user_anuncios (`anuncios_id_anuncio`), add constraint fk_user_anuncios foreign key (`anuncios_id_anuncio`) references `anuncios` (`id_anuncio`);


-- User_Comentarios [rel7]
alter table `user`  add column  `comentarios_id_comentario`  integer;
alter table `user`   add index fk_user_comentarios (`comentarios_id_comentario`), add constraint fk_user_comentarios foreign key (`comentarios_id_comentario`) references `comentarios` (`id_comentario`);


