TYPE=VIEW
query=select 1 AS `ordre`,0 AS `champ_type`,\'code_wbs\' AS `champ` union select 2 AS `2`,1 AS `1`,\'type_element\' AS `type_element` union select 3 AS `3`,1 AS `1`,\'attribut\' AS `attribut` union select 4 AS `4`,0 AS `0`,\'completion\' AS `completion` union select 5 AS `5`,2 AS `2`,\'derniere_reddition\' AS `derniere_reddition` union select 7 AS `7`,2 AS `2`,\'debut_date\' AS `debut_date` union select 8 AS `8`,2 AS `2`,\'fin_date\' AS `fin_date` union select 9 AS `9`,1 AS `1`,\'responsable\' AS `responsable` union select 10 AS `10`,1 AS `1`,\'departement\' AS `departement` union select 11 AS `11`,1 AS `1`,\'direction\' AS `direction` union select 12 AS `12`,1 AS `1`,\'phase\' AS `phase` union select 13 AS `13`,0 AS `0`,\'libelle\' AS `libelle` union select 14 AS `14`,1 AS `1`,\'statut\' AS `statut`
md5=c6e39d5beb38d430b3513511fb1c48f4
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2021-11-22 19:39:31
create-version=2
source=/* champ_type: 0-text, 1-picklist, 2-date */\n\n	SELECT	 1 AS ordre, 0 AS champ_type, \'code_wbs\' AS champ	UNION\n	SELECT	 2, 1, \'type_element\' 	UNION\n	SELECT	 3, 1, \'attribut\' 		UNION\n	SELECT	 4, 0, \'completion\' 	UNION\n	SELECT	 5, 2, \'derniere_reddition\' 			UNION\n	SELECT	 7, 2, \'debut_date\' 	UNION\n	SELECT	 8, 2, \'fin_date\' 		UNION\n	SELECT	 9, 1, \'responsable\' 	UNION\n	SELECT	10, 1, \'departement\' 	UNION\n	SELECT	11, 1, \'direction\' 		UNION\n	SELECT	12, 1, \'phase\' 			UNION\n	SELECT	13, 0, \'libelle\'		UNION\n	SELECT	14, 1, \'statut\'
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select 1 AS `ordre`,0 AS `champ_type`,\'code_wbs\' AS `champ` union select 2 AS `2`,1 AS `1`,\'type_element\' AS `type_element` union select 3 AS `3`,1 AS `1`,\'attribut\' AS `attribut` union select 4 AS `4`,0 AS `0`,\'completion\' AS `completion` union select 5 AS `5`,2 AS `2`,\'derniere_reddition\' AS `derniere_reddition` union select 7 AS `7`,2 AS `2`,\'debut_date\' AS `debut_date` union select 8 AS `8`,2 AS `2`,\'fin_date\' AS `fin_date` union select 9 AS `9`,1 AS `1`,\'responsable\' AS `responsable` union select 10 AS `10`,1 AS `1`,\'departement\' AS `departement` union select 11 AS `11`,1 AS `1`,\'direction\' AS `direction` union select 12 AS `12`,1 AS `1`,\'phase\' AS `phase` union select 13 AS `13`,0 AS `0`,\'libelle\' AS `libelle` union select 14 AS `14`,1 AS `1`,\'statut\' AS `statut`
mariadb-version=100508
