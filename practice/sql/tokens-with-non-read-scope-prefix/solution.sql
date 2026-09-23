
WITH cte_violates_policy AS (

 SELECT owner_id,
        scope,
        CASE WHEN LOWER(scope) NOT LIKE 'read%'
           THEN 1 ELSE 0 END AS violates_policy
 
 FROM api_tokens
 )
 
 
 
 SELECT COUNT(DISTINCT owner_id)
 FROM cte_violates_policy
 where violates_policy = 1
