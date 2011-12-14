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
   `username`  varchar(255),
   `password`  varchar(255),
   `email`  varchar(255),
  primary key (`oid`)
);


-- Anuncios [ent1]
create table `anuncios` (
   `id_anuncio`  integer  not null,
   `data`  date,
   `marca`  varchar(255),
   `modelo`  varchar(255),
   `descricao`  varchar(255),
   `titulo`  varchar(255),
   `cilindrada`  varchar(255),
   `cor`  varchar(255),
   `tipo`  varchar(255),
   `carrocaria`  varchar(255),
   `combustivel`  varchar(255),
  primary key (`id_anuncio`)
);


-- Utilizadores [ent2]
create table `utilizadores` (
   `id_utilizador`  integer  not null,
   `nome`  varchar(255),
   `email`  varchar(255),
   `telemovel`  integer,
   `estado`  bit,
  primary key (`id_utilizador`)
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
   `comentario`  varchar(255),
   `estado`  bit,
  primary key (`id_comentario`)
);


-- Tipo de Utilizador [ent5]
create table `tipo_de_utilizador` (
   `id_tipo`  integer  not null,
   `descricao`  varchar(255),
  primary key (`id_tipo`)
);


-- Permissoes [ent7]
create table `permissoes` (
   `id_permissao`  integer  not null,
   `nome`  varchar(255),
  primary key (`id_permissao`)
);


-- Group_DefaultModule [Group2DefaultModule_DefaultModule2Group]
alter table `group`  add column  `module_oid`  integer;
alter table `group`   add index fk_group_module (`module_oid`), add constraint fk_group_module foreign key (`module_oid`) references `module` (`oid`);


-- Group_Module [Group2Module_Module2Group]
create table `group_module` (
   `group_oid`  integer not null,
   `module_oid`  integer not null,
  primary key (`group_oid`, `module_oid`)
);
alter table `group_module`   add index fk_group_module_group (`group_oid`), add constraint fk_group_module_group foreign key (`group_oid`) references `group` (`oid`);
alter table `group_module`   add index fk_group_module_module (`module_oid`), add constraint fk_group_module_module foreign key (`module_oid`) references `module` (`oid`);


-- User_DefaultGroup [User2DefaultGroup_DefaultGroup2User]
alter table `user`  add column  `group_oid`  integer;
alter table `user`   add index fk_user_group (`group_oid`), add constraint fk_user_group foreign key (`group_oid`) references `group` (`oid`);


-- User_Group [User2Group_Group2User]
create table `user_group` (
   `user_oid`  integer not null,
   `group_oid`  integer not null,
  primary key (`user_oid`, `group_oid`)
);
alter table `user_group`   add index fk_user_group_user (`user_oid`), add constraint fk_user_group_user foreign key (`user_oid`) references `user` (`oid`);
alter table `user_group`   add index fk_user_group_group (`group_oid`), add constraint fk_user_group_group foreign key (`group_oid`) references `group` (`oid`);


-- Users_Anuncios [rel1]
alter table `utilizadores`  add column  `anuncios_id_anuncio`  integer;
alter table `utilizadores`   add index fk_utilizadores_anuncios (`anuncios_id_anuncio`), add constraint fk_utilizadores_anuncios foreign key (`anuncios_id_anuncio`) references `anuncios` (`id_anuncio`);


-- Anuncios_Fotografias [rel2]
alter table `anuncios`  add column  `fotografias_id_foto`  integer;
alter table `anuncios`   add index fk_anuncios_fotografias (`fotografias_id_foto`), add constraint fk_anuncios_fotografias foreign key (`fotografias_id_foto`) references `fotografias` (`id_foto`);


-- Anuncios_Comentarios [rel3]
alter table `anuncios`  add column  `comentarios_id_comentario`  integer;
alter table `anuncios`   add index fk_anuncios_comentarios (`comentarios_id_comentario`), add constraint fk_anuncios_comentarios foreign key (`comentarios_id_comentario`) references `comentarios` (`id_comentario`);


-- Users_Comentarios [rel4]
alter table `utilizadores`  add column  `comentarios_id_comentario`  integer;
alter table `utilizadores`   add index fk_utilizadores_comentarios (`comentarios_id_comentario`), add constraint fk_utilizadores_comentarios foreign key (`comentarios_id_comentario`) references `comentarios` (`id_comentario`);


-- Utilizadores_Permissoes [rel5]
alter table `tipo_de_utilizador`  add column  `utilizadores_id_utilizador`  integer;
alter table `tipo_de_utilizador`   add index fk_tipo_de_utilizador_utilizad (`utilizadores_id_utilizador`), add constraint fk_tipo_de_utilizador_utilizad foreign key (`utilizadores_id_utilizador`) references `utilizadores` (`id_utilizador`);


-- Tipo de Utilizador_Permissoes [rel7]
create table `tipo_de_utilizador_permissoes` (
   `tipo_de_utilizador_id_tipo`  integer not null,
   `permissoes_id_permissao`  integer not null,
  primary key (`tipo_de_utilizador_id_tipo`, `permissoes_id_permissao`)
);
alter table `tipo_de_utilizador_permissoes`   add index fk_tipo_de_utilizador_permisso (`tipo_de_utilizador_id_tipo`), add constraint fk_tipo_de_utilizador_permisso foreign key (`tipo_de_utilizador_id_tipo`) references `tipo_de_utilizador` (`id_tipo`);
alter table `tipo_de_utilizador_permissoes`   add index fk_tipo_de_utilizador_permis_2 (`permissoes_id_permissao`), add constraint fk_tipo_de_utilizador_permis_2 foreign key (`permissoes_id_permissao`) references `permissoes` (`id_permissao`);

