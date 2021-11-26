TYPE=VIEW
query=select `cbwebca_bd01`.`objectif_reddition_code`.`objectif_reddition_code_id` AS `objectif_reddition_code_id`,`cbwebca_bd01`.`objectif_reddition_code`.`objectif_reddition_id` AS `objectif_reddition_id`,`cbwebca_bd01`.`objectif_reddition_code`.`code_reddition_id` AS `code_reddition_id`,`cbwebca_bd01`.`objectif_reddition`.`objectif_id` AS `objectif_id`,`cbwebca_bd01`.`code_reddition`.`code` AS `code_reddition_code`,`cbwebca_bd01`.`code_reddition`.`libelle` AS `code_reddition_libelle` from ((`cbwebca_bd01`.`objectif_reddition_code` join `cbwebca_bd01`.`objectif_reddition` on(`cbwebca_bd01`.`objectif_reddition`.`objectif_reddition_id` = `cbwebca_bd01`.`objectif_reddition_code`.`objectif_reddition_id`)) left join `cbwebca_bd01`.`code_reddition` on(`cbwebca_bd01`.`code_reddition`.`code_reddition_id` = `cbwebca_bd01`.`objectif_reddition_code`.`code_reddition_id`))
md5=5e4535011e11a0bf312edf146c94ecac
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2021-11-22 20:20:56
create-version=2
source=SELECT		objectif_reddition_code.*\n				,objectif_reddition.objectif_id\n				,code_reddition.code AS code_reddition_code\n				,code_reddition.libelle AS code_reddition_libelle\n	FROM		objectif_reddition_code\n	JOIN		objectif_reddition ON objectif_reddition.objectif_reddition_id = objectif_reddition_code.objectif_reddition_id\n	LEFT JOIN	code_reddition ON code_reddition.code_reddition_id = objectif_reddition_code.code_reddition_id
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `cbwebca_bd01`.`objectif_reddition_code`.`objectif_reddition_code_id` AS `objectif_reddition_code_id`,`cbwebca_bd01`.`objectif_reddition_code`.`objectif_reddition_id` AS `objectif_reddition_id`,`cbwebca_bd01`.`objectif_reddition_code`.`code_reddition_id` AS `code_reddition_id`,`cbwebca_bd01`.`objectif_reddition`.`objectif_id` AS `objectif_id`,`cbwebca_bd01`.`code_reddition`.`code` AS `code_reddition_code`,`cbwebca_bd01`.`code_reddition`.`libelle` AS `code_reddition_libelle` from ((`cbwebca_bd01`.`objectif_reddition_code` join `cbwebca_bd01`.`objectif_reddition` on(`cbwebca_bd01`.`objectif_reddition`.`objectif_reddition_id` = `cbwebca_bd01`.`objectif_reddition_code`.`objectif_reddition_id`)) left join `cbwebca_bd01`.`code_reddition` on(`cbwebca_bd01`.`code_reddition`.`code_reddition_id` = `cbwebca_bd01`.`objectif_reddition_code`.`code_reddition_id`))
mariadb-version=100508
