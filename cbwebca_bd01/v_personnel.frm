TYPE=VIEW
query=select `cbwebca_bd01`.`personnel`.`personnel_id` AS `personnel_id`,`cbwebca_bd01`.`personnel`.`nom` AS `nom`,`cbwebca_bd01`.`personnel`.`prenom` AS `prenom`,`cbwebca_bd01`.`personnel`.`titre_emploi` AS `titre_emploi`,`cbwebca_bd01`.`personnel`.`courriel` AS `courriel`,`cbwebca_bd01`.`personnel`.`mot_passe` AS `mot_passe`,`cbwebca_bd01`.`personnel`.`departement_id` AS `departement_id`,`cbwebca_bd01`.`personnel`.`note` AS `note`,`cbwebca_bd01`.`personnel`.`ind_inactif` AS `ind_inactif`,`cbwebca_bd01`.`personnel`.`role_id` AS `role_id`,concat(rtrim(`cbwebca_bd01`.`personnel`.`nom`),\', \',`cbwebca_bd01`.`personnel`.`prenom`) AS `personnel`,concat(rtrim(`cbwebca_bd01`.`direction`.`code`),\' \\\\ \',rtrim(`cbwebca_bd01`.`departement`.`code`),\' - \',`cbwebca_bd01`.`departement`.`libelle`) AS `departement_libelle`,`cbwebca_bd01`.`role`.`libelle` AS `role_libelle` from (((`cbwebca_bd01`.`personnel` join `cbwebca_bd01`.`departement` on(`cbwebca_bd01`.`departement`.`departement_id` = `cbwebca_bd01`.`personnel`.`departement_id`)) join `cbwebca_bd01`.`direction` on(`cbwebca_bd01`.`direction`.`direction_id` = `cbwebca_bd01`.`departement`.`direction_id`)) join `cbwebca_bd01`.`role` on(`cbwebca_bd01`.`role`.`role_id` = `cbwebca_bd01`.`personnel`.`role_id`))
md5=89e1da59f90de9e9132babc3d1ca00c7
updatable=1
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2021-11-22 19:39:28
create-version=2
source=SELECT		personnel.*
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `cbwebca_bd01`.`personnel`.`personnel_id` AS `personnel_id`,`cbwebca_bd01`.`personnel`.`nom` AS `nom`,`cbwebca_bd01`.`personnel`.`prenom` AS `prenom`,`cbwebca_bd01`.`personnel`.`titre_emploi` AS `titre_emploi`,`cbwebca_bd01`.`personnel`.`courriel` AS `courriel`,`cbwebca_bd01`.`personnel`.`mot_passe` AS `mot_passe`,`cbwebca_bd01`.`personnel`.`departement_id` AS `departement_id`,`cbwebca_bd01`.`personnel`.`note` AS `note`,`cbwebca_bd01`.`personnel`.`ind_inactif` AS `ind_inactif`,`cbwebca_bd01`.`personnel`.`role_id` AS `role_id`,concat(rtrim(`cbwebca_bd01`.`personnel`.`nom`),\', \',`cbwebca_bd01`.`personnel`.`prenom`) AS `personnel`,concat(rtrim(`cbwebca_bd01`.`direction`.`code`),\' \\\\ \',rtrim(`cbwebca_bd01`.`departement`.`code`),\' - \',`cbwebca_bd01`.`departement`.`libelle`) AS `departement_libelle`,`cbwebca_bd01`.`role`.`libelle` AS `role_libelle` from (((`cbwebca_bd01`.`personnel` join `cbwebca_bd01`.`departement` on(`cbwebca_bd01`.`departement`.`departement_id` = `cbwebca_bd01`.`personnel`.`departement_id`)) join `cbwebca_bd01`.`direction` on(`cbwebca_bd01`.`direction`.`direction_id` = `cbwebca_bd01`.`departement`.`direction_id`)) join `cbwebca_bd01`.`role` on(`cbwebca_bd01`.`role`.`role_id` = `cbwebca_bd01`.`personnel`.`role_id`))
mariadb-version=100508