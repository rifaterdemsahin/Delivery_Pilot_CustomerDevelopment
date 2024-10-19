# Implementing Loki to Collect Logs from Nginx Application

## Prerequisites
- Kubernetes cluster
- Helm installed
- Nginx application deployed

## Steps

### 1. Add Loki Helm Repository
```sh
helm repo add grafana https://grafana.github.io/helm-charts
helm repo update
```

### 2. Install Loki
```sh
helm install loki grafana/loki-stack
```

### 3. Configure Nginx to Send Logs to Loki
Edit the Nginx configuration to include the following log format:
```nginx
log_format json_combined escape=json
    '{'
        '"time_local":"$time_local",'
        '"remote_addr":"$remote_addr",'
        '"request":"$request",'
        '"status":"$status",'
        '"body_bytes_sent":"$body_bytes_sent",'
        '"http_referer":"$http_referer",'
        '"http_user_agent":"$http_user_agent"'
    '}';
access_log /var/log/nginx/access.log json_combined;
```

### 4. Deploy Promtail
Create a `promtail-config.yaml` file:
```yaml
server:
  http_listen_port: 9080
  grpc_listen_port: 0

positions:
  filename: /tmp/positions.yaml

clients:
  - url: http://loki:3100/loki/api/v1/push

scrape_configs:
- job_name: nginx
  static_configs:
  - targets:
      - localhost
    labels:
      job: nginx
      __path__: /var/log/nginx/access.log
```

Install Promtail using Helm:
```sh
helm install promtail grafana/promtail -f promtail-config.yaml
```

### 5. Verify Logs in Grafana
- Access Grafana dashboard.
- Add Loki as a data source.
- Query logs from the Nginx application.

## Conclusion
You have successfully set up Loki to collect logs from your Nginx application.
