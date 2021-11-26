TYPE=VIEW
query=select `cbwebca_bd01`.`objectif_reddition`.`objectif_reddition_id` AS `objectif_reddition_id`,`cbwebca_bd01`.`objectif_reddition`.`objectif_id` AS `objectif_id`,`cbwebca_bd01`.`objectif_reddition`.`reddition_date` AS `reddition_date`,`cbwebca_bd01`.`objectif_reddition`.`debut_date` AS `debut_date`,`cbwebca_bd01`.`objectif_reddition`.`fin_date` AS `fin_date`,`cbwebca_bd01`.`objectif_reddition`.`completion_pourcent` AS `completion_pourcent`,`cbwebca_bd01`.`objectif_reddition`.`ind_termine` AS `ind_termine`,`cbwebca_bd01`.`objectif_reddition`.`ind_annule` AS `ind_annule`,`cbwebca_bd01`.`objectif_reddition`.`note` AS `note`,`cbwebca_bd01`.`objectif_reddition`.`auteur_personnel_id` AS `auteur_personnel_id`,`cbwebca_bd01`.`objectif_reddition`.`code_reddition_ids` AS `code_reddition_ids`,`cbwebca_bd01`.`objectif_reddition`.`statut_id` AS `statut_id`,`cbwebca_bd01`.`objectif_reddition`.`phase_id` AS `phase_id`,`cbwebca_bd01`.`objectif_reddition`.`z_statut_id` AS `z_statut_id`,`cbwebca_bd01`.`objectif`.`libelle` AS `objectif_libelle`,concat(\'[\',(select group_concat(json_object(\'code\',`cbwebca_bd01`.`code_reddition`.`code`,\'css\',`cbwebca_bd01`.`code_reddition`.`css`) separator \',\') from (`cbwebca_bd01`.`objectif_reddition_code` join `cbwebca_bd01`.`code_reddition` on(`cbwebca_bd01`.`code_reddition`.`code_reddition_id` = `cbwebca_bd01`.`objectif_reddition_code`.`code_reddition_id`)) where `cbwebca_bd01`.`objectif_reddition_code`.`objectif_reddition_id` = `cbwebca_bd01`.`objectif_reddition`.`objectif_reddition_id`),\']\') AS `codes_reddition_codes`,concat(rtrim(`cbwebca_bd01`.`personnel`.`nom`),\', \',`cbwebca_bd01`.`personnel`.`prenom`) AS `auteur_personnel_libelle`,`cbwebca_bd01`.`statut`.`libelle` AS `statut_libelle`,`cbwebca_bd01`.`statut`.`css` AS `statut_css`,`cbwebca_bd01`.`statut`.`icone` AS `statut_icone`,`cbwebca_bd01`.`phase`.`libelle` AS `phase_libelle`,`cbwebca_bd01`.`phase`.`code` AS `phase_code`,`cbwebca_bd01`.`phase`.`css` AS `phase_css`,concat(\'[\',(select group_concat(json_object(\'objectif_reddition_document_id\',`cbwebca_bd01`.`objectif_reddition_document`.`objectif_reddition_document_id`,\'document\',`cbwebca_bd01`.`objectif_reddition_document`.`document`) separator \',\') from `cbwebca_bd01`.`objectif_reddition_document` where `cbwebca_bd01`.`objectif_reddition_document`.`objectif_reddition_id` = `cbwebca_bd01`.`objectif_reddition`.`objectif_reddition_id`),\']\') AS `documents`,(select count(0) from `cbwebca_bd01`.`objectif_reddition_document` where `cbwebca_bd01`.`objectif_reddition_document`.`objectif_reddition_id` = `cbwebca_bd01`.`objectif_reddition`.`objectif_reddition_id`) AS `document_decompte` from ((((`cbwebca_bd01`.`objectif_reddition` left join `cbwebca_bd01`.`objectif` on(`cbwebca_bd01`.`objectif`.`objectif_id` = `cbwebca_bd01`.`objectif_reddition`.`objectif_id`)) left join `cbwebca_bd01`.`personnel` on(`cbwebca_bd01`.`personnel`.`personnel_id` = `cbwebca_bd01`.`objectif_reddition`.`auteur_personnel_id`)) left join `cbwebca_bd01`.`statut` on(`cbwebca_bd01`.`statut`.`statut_id` = `cbwebca_bd01`.`objectif_reddition`.`z_statut_id`)) left join `cbwebca_bd01`.`phase` on(`cbwebca_bd01`.`phase`.`phase_id` = `cbwebca_bd01`.`objectif_reddition`.`phase_id`))
md5=d6b16969088e55215bb59ecd3c6d5ce4
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2021-11-22 20:20:56
create-version=2
source=SELECT		objectif_reddition.*\n				,objectif.libelle AS objectif_libelle\n				,CONCAT( \'[\', (	SELECT		GROUP_CONCAT( JSON_OBJECT( \'code\', code_reddition.code, \'css\', code_reddition.css ) )\n								FROM		objectif_reddition_code\n                    			JOIN        code_reddition ON code_reddition.code_reddition_id = objectif_reddition_code.code_reddition_id\n								WHERE		objectif_reddition_code.objectif_reddition_id = objectif_reddition.objectif_reddition_id ), \']\' ) AS codes_reddition_codes\n				,CONCAT( RTRIM( personnel.nom ), \', \', personnel.prenom ) AS auteur_personnel_libelle\n				,statut.libelle AS statut_libelle\n				,statut.css AS statut_css\n				,statut.icone AS statut_icone\n				,phase.libelle AS phase_libelle\n				,phase.code AS phase_code\n				,phase.css AS phase_css\n				,CONCAT( \'[\', (	SELECT		GROUP_CONCAT( \n												JSON_OBJECT( 	\n													\'objectif_reddition_document_id\', objectif_reddition_document_id\n													,\'document\', document \n												) \n											)\n								FROM		objectif_reddition_document\n								WHERE		objectif_reddition_document.objectif_reddition_id = objectif_reddition.objectif_reddition_id ), \']\' ) AS documents\n				,( 	SELECT 	COUNT(*) \n					FROM	objectif_reddition_document\n					WHERE	objectif_reddition_document.objectif_reddition_id = objectif_reddition.objectif_reddition_id ) AS document_decompte\n	FROM		objectif_reddition\n	LEFT JOIN	objectif ON objectif.objectif_id = objectif_reddition.objectif_id\n	LEFT JOIN	personnel ON personnel.personnel_id = objectif_reddition.auteur_personnel_id\n	LEFT JOIN	statut ON statut.statut_id = objectif_reddition.z_statut_id\n	LEFT JOIN	phase ON phase.phase_id = objectif_reddition.phase_id
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `cbwebca_bd01`.`objectif_reddition`.`objectif_reddition_id` AS `objectif_reddition_id`,`cbwebca_bd01`.`objectif_reddition`.`objectif_id` AS `objectif_id`,`cbwebca_bd01`.`objectif_reddition`.`reddition_date` AS `reddition_date`,`cbwebca_bd01`.`objectif_reddition`.`debut_date` AS `debut_date`,`cbwebca_bd01`.`objectif_reddition`.`fin_date` AS `fin_date`,`cbwebca_bd01`.`objectif_reddition`.`completion_pourcent` AS `completion_pourcent`,`cbwebca_bd01`.`objectif_reddition`.`ind_termine` AS `ind_termine`,`cbwebca_bd01`.`objectif_reddition`.`ind_annule` AS `ind_annule`,`cbwebca_bd01`.`objectif_reddition`.`note` AS `note`,`cbwebca_bd01`.`objectif_reddition`.`auteur_personnel_id` AS `auteur_personnel_id`,`cbwebca_bd01`.`objectif_reddition`.`code_reddition_ids` AS `code_reddition_ids`,`cbwebca_bd01`.`objectif_reddition`.`statut_id` AS `statut_id`,`cbwebca_bd01`.`objectif_reddition`.`phase_id` AS `phase_id`,`cbwebca_bd01`.`objectif_reddition`.`z_statut_id` AS `z_statut_id`,`cbwebca_bd01`.`objectif`.`libelle` AS `objectif_libelle`,concat(\'[\',(select group_concat(json_object(\'code\',`cbwebca_bd01`.`code_reddition`.`code`,\'css\',`cbwebca_bd01`.`code_reddition`.`css`) separator \',\') from (`cbwebca_bd01`.`objectif_reddition_code` join `cbwebca_bd01`.`code_reddition` on(`cbwebca_bd01`.`code_reddition`.`code_reddition_id` = `cbwebca_bd01`.`objectif_reddition_code`.`code_reddition_id`)) where `cbwebca_bd01`.`objectif_reddition_code`.`objectif_reddition_id` = `cbwebca_bd01`.`objectif_reddition`.`objectif_reddition_id`),\']\') AS `codes_reddition_codes`,concat(rtrim(`cbwebca_bd01`.`personnel`.`nom`),\', \',`cbwebca_bd01`.`personnel`.`prenom`) AS `auteur_personnel_libelle`,`cbwebca_bd01`.`statut`.`libelle` AS `statut_libelle`,`cbwebca_bd01`.`statut`.`css` AS `statut_css`,`cbwebca_bd01`.`statut`.`icone` AS `statut_icone`,`cbwebca_bd01`.`phase`.`libelle` AS `phase_libelle`,`cbwebca_bd01`.`phase`.`code` AS `phase_code`,`cbwebca_bd01`.`phase`.`css` AS `phase_css`,concat(\'[\',(select group_concat(json_object(\'objectif_reddition_document_id\',`cbwebca_bd01`.`objectif_reddition_document`.`objectif_reddition_document_id`,\'document\',`cbwebca_bd01`.`objectif_reddition_document`.`document`) separator \',\') from `cbwebca_bd01`.`objectif_reddition_document` where `cbwebca_bd01`.`objectif_reddition_document`.`objectif_reddition_id` = `cbwebca_bd01`.`objectif_reddition`.`objectif_reddition_id`),\']\') AS `documents`,(select count(0) from `cbwebca_bd01`.`objectif_reddition_document` where `cbwebca_bd01`.`objectif_reddition_document`.`objectif_reddition_id` = `cbwebca_bd01`.`objectif_reddition`.`objectif_reddition_id`) AS `document_decompte` from ((((`cbwebca_bd01`.`objectif_reddition` left join `cbwebca_bd01`.`objectif` on(`cbwebca_bd01`.`objectif`.`objectif_id` = `cbwebca_bd01`.`objectif_reddition`.`objectif_id`)) left join `cbwebca_bd01`.`personnel` on(`cbwebca_bd01`.`personnel`.`personnel_id` = `cbwebca_bd01`.`objectif_reddition`.`auteur_personnel_id`)) left join `cbwebca_bd01`.`statut` on(`cbwebca_bd01`.`statut`.`statut_id` = `cbwebca_bd01`.`objectif_reddition`.`z_statut_id`)) left join `cbwebca_bd01`.`phase` on(`cbwebca_bd01`.`phase`.`phase_id` = `cbwebca_bd01`.`objectif_reddition`.`phase_id`))
mariadb-version=100508
