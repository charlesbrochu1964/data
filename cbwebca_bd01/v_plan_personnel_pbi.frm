TYPE=VIEW
query=select `cbwebca_bd01`.`plan`.`plan_id` AS `plan_id`,`cbwebca_bd01`.`objectif_personnel`.`responsabilite` AS `responsabilite`,`cbwebca_bd01`.`personnel`.`nom` AS `nom`,`cbwebca_bd01`.`personnel`.`prenom` AS `prenom`,`cbwebca_bd01`.`departement`.`code` AS `departement_code` from (((`cbwebca_bd01`.`plan` join `cbwebca_bd01`.`objectif_personnel` on(`cbwebca_bd01`.`objectif_personnel`.`objectif_id` = `cbwebca_bd01`.`plan`.`objectif_id`)) join `cbwebca_bd01`.`personnel` on(`cbwebca_bd01`.`personnel`.`personnel_id` = `cbwebca_bd01`.`objectif_personnel`.`personnel_id`)) join `cbwebca_bd01`.`departement` on(`cbwebca_bd01`.`departement`.`departement_id` = `cbwebca_bd01`.`personnel`.`departement_id`))
md5=00c1b995ae231d8336d65b666703eafd
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2021-11-22 23:35:41
create-version=2
source=SELECT		plan.plan_id
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `cbwebca_bd01`.`plan`.`plan_id` AS `plan_id`,`cbwebca_bd01`.`objectif_personnel`.`responsabilite` AS `responsabilite`,`cbwebca_bd01`.`personnel`.`nom` AS `nom`,`cbwebca_bd01`.`personnel`.`prenom` AS `prenom`,`cbwebca_bd01`.`departement`.`code` AS `departement_code` from (((`cbwebca_bd01`.`plan` join `cbwebca_bd01`.`objectif_personnel` on(`cbwebca_bd01`.`objectif_personnel`.`objectif_id` = `cbwebca_bd01`.`plan`.`objectif_id`)) join `cbwebca_bd01`.`personnel` on(`cbwebca_bd01`.`personnel`.`personnel_id` = `cbwebca_bd01`.`objectif_personnel`.`personnel_id`)) join `cbwebca_bd01`.`departement` on(`cbwebca_bd01`.`departement`.`departement_id` = `cbwebca_bd01`.`personnel`.`departement_id`))
mariadb-version=100508