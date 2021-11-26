TYPE=VIEW
query=select `cbwebca_bd01`.`objectif_attribut`.`objectif_attribut_id` AS `objectif_attribut_id`,`cbwebca_bd01`.`objectif_attribut`.`objectif_id` AS `objectif_id`,`cbwebca_bd01`.`objectif_attribut`.`attribut_id` AS `attribut_id`,`cbwebca_bd01`.`objectif_attribut`.`note` AS `note`,`cbwebca_bd01`.`attribut`.`code` AS `code`,`cbwebca_bd01`.`attribut`.`libelle` AS `libelle`,`cbwebca_bd01`.`attribut`.`css` AS `css`,concat(`cbwebca_bd01`.`attribut`.`code`,\'-\',`cbwebca_bd01`.`attribut`.`libelle`) AS `attribut_libelle` from (`cbwebca_bd01`.`objectif_attribut` join `cbwebca_bd01`.`attribut` on(`cbwebca_bd01`.`attribut`.`attribut_id` = `cbwebca_bd01`.`objectif_attribut`.`attribut_id`))
md5=f9617d966edcfddfa50224794df5991e
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2021-11-22 19:39:26
create-version=2
source=SELECT		objectif_attribut.*\n				,attribut.code\n                ,attribut.libelle\n                ,attribut.css\n				,CONCAT( attribut.code, \'-\', attribut.libelle ) AS attribut_libelle\n	FROM		objectif_attribut\n	JOIN 	    attribut ON attribut.attribut_id = objectif_attribut.attribut_id
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `cbwebca_bd01`.`objectif_attribut`.`objectif_attribut_id` AS `objectif_attribut_id`,`cbwebca_bd01`.`objectif_attribut`.`objectif_id` AS `objectif_id`,`cbwebca_bd01`.`objectif_attribut`.`attribut_id` AS `attribut_id`,`cbwebca_bd01`.`objectif_attribut`.`note` AS `note`,`cbwebca_bd01`.`attribut`.`code` AS `code`,`cbwebca_bd01`.`attribut`.`libelle` AS `libelle`,`cbwebca_bd01`.`attribut`.`css` AS `css`,concat(`cbwebca_bd01`.`attribut`.`code`,\'-\',`cbwebca_bd01`.`attribut`.`libelle`) AS `attribut_libelle` from (`cbwebca_bd01`.`objectif_attribut` join `cbwebca_bd01`.`attribut` on(`cbwebca_bd01`.`attribut`.`attribut_id` = `cbwebca_bd01`.`objectif_attribut`.`attribut_id`))
mariadb-version=100508
