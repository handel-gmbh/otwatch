echo "Installation Prometheus"
D:\otx\sw\otwatch\nssm.exe install otwatch_prometheus "E:\otx\prometheus\prometheus.exe"
D:\otx\sw\otwatch\nssm.exe set otwatch_prometheus AppDirectory "E:\otx\prometheus"
D:\otx\sw\otwatch\nssm.exe set otwatch_prometheus AppParameters "--web.enable-admin-api   --web.external-url=https://otwatch.<domain>/prometheus  --web.route-prefix="/prometheus"  --storage.tsdb.retention.time="365d"  --log.level=debug --web.enable-lifecycle"
D:\otx\sw\otwatch\nssm.exe set otwatch_prometheus DisplayName OTwatch Prometheus
D:\otx\sw\otwatch\nssm.exe set otwatch_prometheus Description Prometheus database-service for storing monitoring metrics
D:\otx\sw\otwatch\nssm.exe set otwatch_prometheus Start SERVICE_AUTO_START
net start otwatch_prometheus
pause

echo "Installation Prometheus Blackbox Exporter"
D:\otx\sw\otwatch\nssm.exe install otwatch_blackbox "D:\otx\sw\otwatch\prometheus_blackbox_exporter\blackbox_exporter.exe"
D:\otx\sw\otwatch\nssm.exe set otwatch_blackbox AppDirectory "D:\otx\sw\otwatch\prometheus_blackbox_exporter"
D:\otx\sw\otwatch\nssm.exe set otwatch_blackbox AppParameters "--config.file=D:\otx\sw\otwatch\prometheus_blackbox_exporter\blackbox.yml"
D:\otx\sw\otwatch\nssm.exe set otwatch_blackbox DisplayName OTwatch Blackbox
D:\otx\sw\otwatch\nssm.exe set otwatch_blackbox Description Prometheus Blackbox Exporter-service
D:\otx\sw\otwatch\nssm.exe set otwatch_blackbox Start SERVICE_AUTO_START
net start otwatch_blackbox
pause

echo "Installation Prometheus Alert Manager"
D:\otx\sw\otwatch\nssm.exe install otwatch_alertmanager "D:\otx\sw\otwatch\prometheus_alertmanager\alertmanager.exe"
D:\otx\sw\otwatch\nssm.exe set otwatch_alertmanager AppDirectory "D:\otx\sw\otwatch\prometheus_alertmanager"
D:\otx\sw\otwatch\nssm.exe set otwatch_alertmanager AppParameters "--config.file=D:\otx\sw\otwatch\prometheus_alertmanager\alertmanager.yml"
D:\otx\sw\otwatch\nssm.exe set otwatch_alertmanager DisplayName OTwatch Alertmanager
D:\otx\sw\otwatch\nssm.exe set otwatch_alertmanager Description Alertmanager-service for Prometheus monitoring
D:\otx\sw\otwatch\nssm.exe set otwatch_alertmanager Start SERVICE_AUTO_START
net start otwatch_alertmanager
pause

echo "Installation Prometheus Pushgateway" 
D:\otx\sw\otwatch\nssm.exe install otwatch_pushgateway "D:\otx\sw\otwatch\prometheus_pushgateway\pushgateway.exe"
D:\otx\sw\otwatch\nssm.exe set otwatch_pushgateway AppDirectory "D:\otx\sw\otwatch\prometheus_pushgateway"
D:\otx\sw\otwatch\nssm.exe set otwatch_pushgateway AppParameters "--persistence.file="D:\otx\sw\otwatch\prometheus_pushgateway\memory.txt" --persistence.interval=5m  --web.route-prefix="/pushgateway""
D:\otx\sw\otwatch\nssm.exe set otwatch_pushgateway DisplayName OTwatch Pushgateway
D:\otx\sw\otwatch\nssm.exe set otwatch_pushgateway Description Prometheus Pushgateway-service
D:\otx\sw\otwatch\nssm.exe set otwatch_pushgateway Start SERVICE_AUTO_START
net start otwatch_pushgateway 
pause


echo "Installation Prometheus Proxy"
D:\otx\sw\otwatch\nssm.exe install otwatch_proxy "D:\otx\sw\otwatch\nginx\nginx.exe"
D:\otx\sw\otwatch\nssm.exe set otwatch_proxy AppDirectory "D:\otx\sw\otwatch\nginx"
D:\otx\sw\otwatch\nssm.exe set otwatch_proxy DisplayName OTwatch Nginx Proxy
D:\otx\sw\otwatch\nssm.exe set otwatch_proxy Description Nginx Proxy Server-service
D:\otx\sw\otwatch\nssm.exe set otwatch_proxy Start SERVICE_AUTO_START
net start otwatch_proxy
pause


echo "Installation Prometheus SNMP Exporter"
D:\otx\sw\otwatch\nssm.exe install otwatch_snmp_exporter "D:\otx\sw\otwatch\prometheus_snmp_exporter\snmp_exporter.exe"
D:\otx\sw\otwatch\nssm.exe set otwatch_snmp_exporter AppDirectory "D:\otx\sw\otwatch\prometheus_snmp_exporter"
D:\otx\sw\otwatch\nssm.exe set otwatch_snmp_exporter DisplayName OTwatch SNMP Exporter
D:\otx\sw\otwatch\nssm.exe set otwatch_snmp_exporter Description Prometheus SNMP Exporter-service
D:\otx\sw\otwatch\nssm.exe set otwatch_snmp_exporter Start SERVICE_AUTO_START
net start otwatch_snmp_exporter
pause
