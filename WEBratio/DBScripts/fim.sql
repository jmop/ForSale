-- Group [Group]
create table `group` (
   `oid`  integer  not null,
   `groupname`  varchar(255),
  primary key (`oid`)
);


-- Module [Module]
create table `module` (
   `oid`  integer  not null,
   `moduleid`  varchar(255),
   `modulename`  varchar(255),
  primary key (`oid`)
);


-- User [User]
create table `user` (
   `oid`  integer  not null,
   `email`  varchar(255),
   `password`  varchar(255),
   `nome_2`  varchar(255),
   `telemovel_2`  integer,
   `estado_2`  bit,
   `username`  varchar(255),
  primary key (`oid`)
);


-- Anuncios [ent1]
create table `anuncios` (
   `id_anuncio`  integer  not null,
   `cor`  varchar(255),
   `tipo`  varchar(255),
   `carrocaria`  varchar(255),
   `combustivel`  varchar(255),
   `km`  double precision,
   `ano`  integer,
   `data`  date,
   `preco`  double precision,
   `marca`  varchar(255),
   `modelo`  varchar(255),
   `descricao`  varchar(255),
   `titulo`  varchar(255),
   `cilindrada`  varchar(255),
  primary key (`id_anuncio`)
);


-- Fotografias [ent3]
create table `fotografias` (
   `id_foto`  integer  not null,
   `nome`  varchar(255),
   `foto`  varchar(255),
  primary key (`id_foto`)
);


-- Comentarios [ent4]
create table `comentarios` (
   `id_comentario`  integer  not null,
   `username`  varchar(255),
   `comentario`  varchar(255),
   `estado`  bit,
  primary key (`id_comentario`)
);


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table `group`  add column  `module_oid`  integer;
alter table `group`   add index fk_group_module (`module_oid`), add constraint fk_group_module foreign key (`module_oid`) references `module` (`oid`);
create index `idx_group_module` on `group`(`module_oid`);


-- Group_Module [Group2Module_Module2Group]
create table `group_module` (
   `group_oid`  integer not null,
   `module_oid`  integer not null,
  primary key (`group_oid`, `module_oid`)
);
alter table `group_module`   add index fk_group_module_group (`group_oid`), add constraint fk_group_module_group foreign key (`group_oid`) references `group` (`oid`);
alter table `group_module`   add index fk_group_module_module (`module_oid`), add constraint fk_group_module_module foreign key (`module_oid`) references `module` (`oid`);
create index `idx_group_module_group` on `group_module`(`group_oid`);
create index `idx_group_module_module` on `group_module`(`module_oid`);


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table `user`  add column  `group_oid`  integer;
alter table `user`   add index fk_user_group (`group_oid`), add constraint fk_user_group foreign key (`group_oid`) references `group` (`oid`);
create index `idx_user_group` on `user`(`group_oid`);


-- User_Group [User2Group_Group2User]
create table `user_group` (
   `user_oid`  integer not null,
   `group_oid`  integer not null,
  primary key (`user_oid`, `group_oid`)
);
alter table `user_group`   add index fk_user_group_user (`user_oid`), add constraint fk_user_group_user foreign key (`user_oid`) references `user` (`oid`);
alter table `user_group`   add index fk_user_group_group (`group_oid`), add constraint fk_user_group_group foreign key (`group_oid`) references `group` (`oid`);
create index `idx_user_group_user` on `user_group`(`user_oid`);
create index `idx_user_group_group` on `user_group`(`group_oid`);


-- Anuncios_Fotografias [rel10]
create table `anuncios_fotografias` (
   `anuncios_id_anuncio`  integer not null,
   `fotografias_id_foto`  integer not null,
  primary key (`anuncios_id_anuncio`, `fotografias_id_foto`)
);
alter table `anuncios_fotografias`   add index fk_anuncios_fotografias_anunci (`anuncios_id_anuncio`), add constraint fk_anuncios_fotografias_anunci foreign key (`anuncios_id_anuncio`) references `anuncios` (`id_anuncio`);
alter table `anuncios_fotografias`   add index fk_anuncios_fotografias_fotogr (`fotografias_id_foto`), add constraint fk_anuncios_fotografias_fotogr foreign key (`fotografias_id_foto`) references `fotografias` (`id_foto`);
create index `idx_anuncios_fotografias_anunc` on `anuncios_fotografias`(`anuncios_id_anuncio`);
create index `idx_anuncios_fotografias_fotog` on `anuncios_fotografias`(`fotografias_id_foto`);


-- Anuncios_Comentarios [rel11]
create table `anuncios_comentarios` (
   `anuncios_id_anuncio`  integer not null,
   `comentarios_id_comentario`  integer not null,
  primary key (`anuncios_id_anuncio`, `comentarios_id_comentario`)
);
alter table `anuncios_comentarios`   add index fk_anuncios_comentarios_anunci (`anuncios_id_anuncio`), add constraint fk_anuncios_comentarios_anunci foreign key (`anuncios_id_anuncio`) references `anuncios` (`id_anuncio`);
alter table `anuncios_comentarios`   add index fk_anuncios_comentarios_coment (`comentarios_id_comentario`), add constraint fk_anuncios_comentarios_coment foreign key (`comentarios_id_comentario`) references `comentarios` (`id_comentario`);
create index `idx_anuncios_comentarios_anunc` on `anuncios_comentarios`(`anuncios_id_anuncio`);
create index `idx_anuncios_comentarios_comen` on `anuncios_comentarios`(`comentarios_id_comentario`);


-- Anuncios_User [rel9]
alter table `anuncios`  add column  `user_oid`  integer;
alter table `anuncios`   add index fk_anuncios_user (`user_oid`), add constraint fk_anuncios_user foreign key (`user_oid`) references `user` (`oid`);
create index `idx_anuncios_user` on `anuncios`(`user_oid`);


