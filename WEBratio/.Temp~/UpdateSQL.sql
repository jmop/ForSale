-- Anuncios_Fotografias [rel10]
create table `anuncios_fotografias` (
   `anuncios_id_anuncio`  integer not null,
   `fotografias_id_foto`  integer not null,
  primary key (`anuncios_id_anuncio`, `fotografias_id_foto`)
);
alter table `anuncios_fotografias`   add index fk_anuncios_fotografias_anunci (`anuncios_id_anuncio`), add constraint fk_anuncios_fotografias_anunci foreign key (`anuncios_id_anuncio`) references `anuncios` (`id_anuncio`);
alter table `anuncios_fotografias`   add index fk_anuncios_fotografias_fotogr (`fotografias_id_foto`), add constraint fk_anuncios_fotografias_fotogr foreign key (`fotografias_id_foto`) references `fotografias` (`id_foto`);


-- Anuncios_Comentarios [rel11]
create table `anuncios_comentarios` (
   `anuncios_id_anuncio`  integer not null,
   `comentarios_id_comentario`  integer not null,
  primary key (`anuncios_id_anuncio`, `comentarios_id_comentario`)
);
alter table `anuncios_comentarios`   add index fk_anuncios_comentarios_anunci (`anuncios_id_anuncio`), add constraint fk_anuncios_comentarios_anunci foreign key (`anuncios_id_anuncio`) references `anuncios` (`id_anuncio`);
alter table `anuncios_comentarios`   add index fk_anuncios_comentarios_coment (`comentarios_id_comentario`), add constraint fk_anuncios_comentarios_coment foreign key (`comentarios_id_comentario`) references `comentarios` (`id_comentario`);


