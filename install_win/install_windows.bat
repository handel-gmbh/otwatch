
D:\otx\sw\otwatch\nssm.exe set otwatch_client AppDirectory "D:\otx\sw\otwatch\prometheus_node_exporter"
D:\otx\sw\otwatch\nssm.exe set otwatch_client AppParameters "--config.file=D:\otx\sw\otwatch\prometheus_node_exporter\config.yml"
D:\otx\sw\otwatch\nssm.exe set otwatch_client DisplayName otwatch_client
D:\otx\sw\otwatch\nssm.exe set otwatch_client Description otwatch client node exporter for prometheus
D:\otx\sw\otwatch\nssm.exe set otwatch_client Start SERVICE_AUTO_START
net start otwatch_client
pause
 
echo Installation Prometheus
D:\otx\sw\otwatch\nssm.exe install otwatch_prometheus "D:\otx\sw\otwatch\prometheus\prometheus.exe"
D:\otx\sw\otwatch\nssm.exe set otwatch_prometheus AppDirectory "D:\otx\sw\otwatch\prometheus"
D:\otx\sw\otwatch\nssm.exe set otwatch_prometheus AppParameters "--config.file=D:\otx\sw\otwatch\prometheus\prometheus.yml --web.enable-admin-api --web.external-url=https://<fqdn>/prometheus --web.route-prefix="/prometheus" --storage.tsdb.retention.time="365d""
D:\otx\sw\otwatch\nssm.exe set otwatch_prometheus DisplayName otwatch_prometheus
D:\otx\sw\otwatch\nssm.exe set otwatch_prometheus Description otwatch prometheus Metics Database
D:\otx\sw\otwatch\nssm.exe set otwatch_prometheus Start SERVICE_AUTO_START
net start otwatch_prometheus
pause
 
echo Installation Prometheus Blackbox Exporter
D:\otx\sw\otwatch\nssm.exe install otwatch_blackbox "D:\otx\sw\otwatch\prometheus_blackbox_exporter\blackbox_exporter.exe"
D:\otx\sw\otwatch\nssm.exe set otwatch_blackbox AppDirectory "D:\otx\sw\otwatch\prometheus_blackbox_exporter"
D:\otx\sw\otwatch\nssm.exe set otwatch_blackbox AppParameters "--config.file=D:\otx\sw\otwatch\prometheus_blackbox_exporter\blackbox.yml"
D:\otx\sw\otwatch\nssm.exe set otwatch_blackbox DisplayName otwatch_blackbox
D:\otx\sw\otwatch\nssm.exe set otwatch_blackbox Description otwatch blackbox exporter for prometheus
D:\otx\sw\otwatch\nssm.exe set otwatch_blackbox Start SERVICE_AUTO_START
net start otwatch_blackbox
pause
 
echo Installation Prometheus Alert Manager
D:\otx\sw\otwatch\nssm.exe install otwatch_alertmanager "D:\otx\sw\otwatch\prometheus_alertmanager\alertmanager.exe"
D:\otx\sw\otwatch\nssm.exe set otwatch_alertmanager AppDirectory "D:\otx\sw\otwatch\prometheus_alertmanager"
D:\otx\sw\otwatch\nssm.exe set otwatch_alertmanager AppParameters "--config.file=D:\otx\sw\otwatch\prometheus_alertmanager\alertmanager.yml"
D:\otx\sw\otwatch\nssm.exe set otwatch_alertmanager DisplayName otwatch_alertmanager
D:\otx\sw\otwatch\nssm.exe set otwatch_alertmanager Description otwatch Alert Manager for prometheus
D:\otx\sw\otwatch\nssm.exe set otwatch_alertmanager Start SERVICE_AUTO_START
net start otwatch_alertmanager
pause

echo Installation Prometheus Pushgateway 
D:\otx\sw\otwatch\nssm.exe install otwatch_pushgateway "D:\otx\sw\otwatch\prometheus_alertmanager\alertmanager.exe"
D:\otx\sw\otwatch\nssm.exe set otwatch_pushgateway AppDirectory "D:\otx\sw\otwatch\prometheus_pushgateway"
D:\otx\sw\otwatch\nssm.exe set otwatch_pushgateway DisplayName otwatch_pushgateway
D:\otx\sw\otwatch\nssm.exe set otwatch_pushgateway Description otwatch Pushgateway for prometheus
D:\otx\sw\otwatch\nssm.exe set otwatch_pushgateway Start SERVICE_AUTO_START
net start otwatch_pushgateway 
pause