    #Example for Export the Metrics to Pushgateway.
    
    $metrics1 = "ps_otds_available_backup_total{env=""TEST"",hostname=""$letter""} $file_countOTDS_Backup`n"
    $metrics = "ps_otds_available_backup_total_last_2_days{env=""TEST"",hostname=""$letter""} $file_countOTDS_Backup_2dayold`n"
    Invoke-WebRequest -Uri "http://<fqdn>:9091/metrics/job/$letter/instance/otds" -Method Post -Body $metrics1
    Invoke-WebRequest -Uri "http://<fqdn>:9091/metrics/job/$letter/instance/otds" -Method Post -Body $metrics