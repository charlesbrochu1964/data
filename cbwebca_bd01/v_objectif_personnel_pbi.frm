TYPE=VIEW
query=select `cbwebca_bd01`.`objectif_personnel`.`objectif_id` AS `objectif_id`,`cbwebca_bd01`.`personnel`.`nom` AS `nom`,`cbwebca_bd01`.`personnel`.`prenom` AS `prenom`,concat(`cbwebca_bd01`.`personnel`.`nom`,\', \',`cbwebca_bd01`.`personnel`.`prenom`) AS `responsable`,`cbwebca_bd01`.`departement`.`code` AS `departement_code`,`cbwebca_bd01`.`direction`.`code` AS `direction_code`,case when `cbwebca_bd01`.`objectif_personnel`.`responsabilite` = \'R\' then \'R-Responsable\' when `cbwebca_bd01`.`objectif_personnel`.`responsabilite` = \'C\' then \'C-Contributeur\' else \'S-Support\' end AS `responsabilite` from (((`cbwebca_bd01`.`objectif_personnel` join `cbwebca_bd01`.`personnel` on(`cbwebca_bd01`.`personnel`.`personnel_id` = `cbwebca_bd01`.`objectif_personnel`.`personnel_id`)) join `cbwebca_bd01`.`departement` on(`cbwebca_bd01`.`departement`.`departement_id` = `cbwebca_bd01`.`personnel`.`departement_id`)) join `cbwebca_bd01`.`direction` on(`cbwebca_bd01`.`direction`.`direction_id` = `cbwebca_bd01`.`departement`.`direction_id`))
md5=55d5c42c76d4d5c6abc2d8d7b9b24ba9
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2021-11-22 19:39:26
create-version=2
source=SELECT		objectif_personnel.objectif_id
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `cbwebca_bd01`.`objectif_personnel`.`objectif_id` AS `objectif_id`,`cbwebca_bd01`.`personnel`.`nom` AS `nom`,`cbwebca_bd01`.`personnel`.`prenom` AS `prenom`,concat(`cbwebca_bd01`.`personnel`.`nom`,\', \',`cbwebca_bd01`.`personnel`.`prenom`) AS `responsable`,`cbwebca_bd01`.`departement`.`code` AS `departement_code`,`cbwebca_bd01`.`direction`.`code` AS `direction_code`,case when `cbwebca_bd01`.`objectif_personnel`.`responsabilite` = \'R\' then \'R-Responsable\' when `cbwebca_bd01`.`objectif_personnel`.`responsabilite` = \'C\' then \'C-Contributeur\' else \'S-Support\' end AS `responsabilite` from (((`cbwebca_bd01`.`objectif_personnel` join `cbwebca_bd01`.`personnel` on(`cbwebca_bd01`.`personnel`.`personnel_id` = `cbwebca_bd01`.`objectif_personnel`.`personnel_id`)) join `cbwebca_bd01`.`departement` on(`cbwebca_bd01`.`departement`.`departement_id` = `cbwebca_bd01`.`personnel`.`departement_id`)) join `cbwebca_bd01`.`direction` on(`cbwebca_bd01`.`direction`.`direction_id` = `cbwebca_bd01`.`departement`.`direction_id`))
mariadb-version=100508