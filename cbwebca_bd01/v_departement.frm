TYPE=VIEW
query=select concat(rtrim(`cbwebca_bd01`.`direction`.`code`),\' - \',`cbwebca_bd01`.`direction`.`libelle`) AS `direction_libelle`,`cbwebca_bd01`.`direction`.`code` AS `direction_code`,`cbwebca_bd01`.`departement`.`departement_id` AS `departement_id`,`cbwebca_bd01`.`departement`.`code` AS `code`,`cbwebca_bd01`.`departement`.`libelle` AS `libelle`,`cbwebca_bd01`.`departement`.`descr` AS `descr`,`cbwebca_bd01`.`departement`.`direction_id` AS `direction_id`,`cbwebca_bd01`.`departement`.`z_objectif_decompte` AS `z_objectif_decompte`,`cbwebca_bd01`.`departement`.`z_indicateur_decompte` AS `z_indicateur_decompte`,`cbwebca_bd01`.`departement`.`z_action_struct_decompte` AS `z_action_struct_decompte`,`cbwebca_bd01`.`departement`.`z_personnel_decompte` AS `z_personnel_decompte` from (`cbwebca_bd01`.`departement` join `cbwebca_bd01`.`direction` on(`cbwebca_bd01`.`direction`.`direction_id` = `cbwebca_bd01`.`departement`.`direction_id`))
md5=d17078291e45881dc20e411f333954ae
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2021-11-22 19:39:24
create-version=2
source=SELECT		CONCAT( RTRIM( direction.code ), \' - \', direction.libelle ) AS direction_libelle\n                ,direction.code AS direction_code\n				,departement.*\n	FROM		departement\n    JOIN 		direction ON direction.direction_id = departement.direction_id
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select concat(rtrim(`cbwebca_bd01`.`direction`.`code`),\' - \',`cbwebca_bd01`.`direction`.`libelle`) AS `direction_libelle`,`cbwebca_bd01`.`direction`.`code` AS `direction_code`,`cbwebca_bd01`.`departement`.`departement_id` AS `departement_id`,`cbwebca_bd01`.`departement`.`code` AS `code`,`cbwebca_bd01`.`departement`.`libelle` AS `libelle`,`cbwebca_bd01`.`departement`.`descr` AS `descr`,`cbwebca_bd01`.`departement`.`direction_id` AS `direction_id`,`cbwebca_bd01`.`departement`.`z_objectif_decompte` AS `z_objectif_decompte`,`cbwebca_bd01`.`departement`.`z_indicateur_decompte` AS `z_indicateur_decompte`,`cbwebca_bd01`.`departement`.`z_action_struct_decompte` AS `z_action_struct_decompte`,`cbwebca_bd01`.`departement`.`z_personnel_decompte` AS `z_personnel_decompte` from (`cbwebca_bd01`.`departement` join `cbwebca_bd01`.`direction` on(`cbwebca_bd01`.`direction`.`direction_id` = `cbwebca_bd01`.`departement`.`direction_id`))
mariadb-version=100508
