TYPE=VIEW
query=select `a`.`objectif_id` AS `objectif_id`,max(`s`.`effectif_date`) AS `effectif_date`,sum(`s`.`budget_depense`) AS `budget_depense`,sum(`s`.`budget_engage`) AS `budget_engage`,sum(`s`.`budget_total`) AS `budget_total` from ((`cbwebca_bd01`.`objectif_budget` `a` join `cbwebca_bd01`.`source_financement` `sf` on(`sf`.`source_financement_id` = `a`.`source_financement_id`)) join `cbwebca_bd01`.`objectif_budget` `s` on(`s`.`objectif_budget_id` = `a`.`objectif_budget_id` and `s`.`objectif_budget_id` = (select `cbwebca_bd01`.`objectif_budget`.`objectif_budget_id` from `cbwebca_bd01`.`objectif_budget` where `cbwebca_bd01`.`objectif_budget`.`objectif_id` = `a`.`objectif_id` and `cbwebca_bd01`.`objectif_budget`.`source_financement_id` = `a`.`source_financement_id` order by `cbwebca_bd01`.`objectif_budget`.`effectif_date` desc limit 1))) group by `a`.`objectif_id`
md5=4d64dafa99edac9c3797d74a93beef1c
updatable=0
algorithm=0
definer_user=root
definer_host=localhost
suid=2
with_check_option=0
timestamp=2021-11-22 19:39:26
create-version=2
source=SELECT		A.objectif_id\n                ,MAX( S.effectif_date ) AS effectif_date\n                ,SUM( S.budget_depense ) AS budget_depense\n				,SUM( S.budget_engage ) AS budget_engage\n				,SUM( S.budget_total ) AS budget_total\n	FROM		objectif_budget A\n	JOIN 	    source_financement SF   ON  SF.source_financement_id = A.source_financement_id\n    JOIN   		objectif_budget S  		ON  S.objectif_budget_id = A.objectif_budget_id AND\n                                            S.objectif_budget_id = (  	SELECT      objectif_budget.objectif_budget_id\n																		FROM        objectif_budget\n																		WHERE       objectif_budget.objectif_id = A.objectif_id\n																		AND         objectif_budget.source_financement_id = A.source_financement_id\n																		ORDER BY    objectif_budget.effectif_date DESC\n																		LIMIT       1 )\n	GROUP BY	A.objectif_id
client_cs_name=utf8mb4
connection_cl_name=utf8mb4_unicode_ci
view_body_utf8=select `a`.`objectif_id` AS `objectif_id`,max(`s`.`effectif_date`) AS `effectif_date`,sum(`s`.`budget_depense`) AS `budget_depense`,sum(`s`.`budget_engage`) AS `budget_engage`,sum(`s`.`budget_total`) AS `budget_total` from ((`cbwebca_bd01`.`objectif_budget` `a` join `cbwebca_bd01`.`source_financement` `sf` on(`sf`.`source_financement_id` = `a`.`source_financement_id`)) join `cbwebca_bd01`.`objectif_budget` `s` on(`s`.`objectif_budget_id` = `a`.`objectif_budget_id` and `s`.`objectif_budget_id` = (select `cbwebca_bd01`.`objectif_budget`.`objectif_budget_id` from `cbwebca_bd01`.`objectif_budget` where `cbwebca_bd01`.`objectif_budget`.`objectif_id` = `a`.`objectif_id` and `cbwebca_bd01`.`objectif_budget`.`source_financement_id` = `a`.`source_financement_id` order by `cbwebca_bd01`.`objectif_budget`.`effectif_date` desc limit 1))) group by `a`.`objectif_id`
mariadb-version=100508
