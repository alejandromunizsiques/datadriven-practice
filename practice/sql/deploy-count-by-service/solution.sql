SELECT svc_name,
        COUNT(deploy_at) as deploy_count
FROM deploy_logs
GROUP BY svc_name
