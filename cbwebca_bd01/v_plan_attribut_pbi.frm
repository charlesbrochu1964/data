TYPE=VIEW
query=select `cbwebca_bd01`.`plan`.`plan_id` AS `plan_id`,`cbwebca_bd01`.`objectif_attribut`.`objectif_attribut_id` AS `objectif_attribut_id`,`cbwebca_bd01`.`objectif_attribut`.`objectif_id` AS `objectif_id`,`cbwebca_bd01`.`objectif_attribut`.`attribut_id` AS `attribut_id`,`cbwebca_bd01`.`objectif_attribut`.`note` AS `note`,`cbwebca_bd01`.`attribut`.`code` AS `code`,`cbwebca_bd01`.`attribut`.`libelle` AS `libelle`,`cbwebca_bd01`.`attribut`.`css` AS `css` from ((`cbwebca_bd01`.`plan` join `cbwebca_bd01`.`objectif_attribut` on(`cbwebca_bd01`.`objectif_attribut`.`objectif_id` = `cbwebca_bd01`.`plan`.`objectif_id`)) join `cbwebca_bd01`.`attribut` on(`cbwebca_bd01`.`attribut`.`attribut_id` = `cbwebca_bd01`.`objectif_attribut`.`attribut_id`))
md5=637e915d30bb01f3aa765812171df5a1
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2021-11-22 23:35:41
create-version=2
source=SELECT		plan.plan_id\n				,objectif_attribut.*\n				,attribut.code\n                ,attribut.libelle\n                ,attribut.css\n	FROM		plan\n	JOIN		objectif_attribut ON objectif_attribut.objectif_id = plan.objectif_id\n	JOIN 	    attribut ON attribut.attribut_id = objectif_attribut.attribut_id
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `cbwebca_bd01`.`plan`.`plan_id` AS `plan_id`,`cbwebca_bd01`.`objectif_attribut`.`objectif_attribut_id` AS `objectif_attribut_id`,`cbwebca_bd01`.`objectif_attribut`.`objectif_id` AS `objectif_id`,`cbwebca_bd01`.`objectif_attribut`.`attribut_id` AS `attribut_id`,`cbwebca_bd01`.`objectif_attribut`.`note` AS `note`,`cbwebca_bd01`.`attribut`.`code` AS `code`,`cbwebca_bd01`.`attribut`.`libelle` AS `libelle`,`cbwebca_bd01`.`attribut`.`css` AS `css` from ((`cbwebca_bd01`.`plan` join `cbwebca_bd01`.`objectif_attribut` on(`cbwebca_bd01`.`objectif_attribut`.`objectif_id` = `cbwebca_bd01`.`plan`.`objectif_id`)) join `cbwebca_bd01`.`attribut` on(`cbwebca_bd01`.`attribut`.`attribut_id` = `cbwebca_bd01`.`objectif_attribut`.`attribut_id`))
mariadb-version=100508
