🔍 Loki Connection Troubleshooting Guide 🔍

Based on the logs, there's no explicit error, but here are potential issues:

1. 🌐 DNS Resolution Problem:
   ```
   ts=2024-10-21T16:19:46.382833572Z caller=memberlist_logger.go:74 level=warn msg="Failed to resolve loki-memberlist: lookup loki-memberlist on 10.96.0.10:53: no such host"
   ```
   🧠 This suggests the cluster is having trouble finding the Loki service internally.

2. 🖧 Network Configuration:
   ```
   level=info ts=2024-10-21T16:19:46.359049513Z caller=server.go:288 http=[::]:3100 grpc=[::]:9095 msg="server listening on addresses"
   ```
   🧠 Loki is listening on ports 3100 (HTTP) and 9095 (gRPC). Ensure Grafana is using the correct port.

3. 🔎 Service Discovery:
   🧠 If using Kubernetes service discovery, check Loki service labels.

4. 🧱 Firewall/Network Policies:
   🧠 Verify no policies are blocking Grafana-Loki communication.

5. 🚦 Loki Readiness:
   🧠 Loki started, but might not be fully ready for connections.

🛠️ Troubleshooting Steps:

1. 📊 Check Loki service:
   ```
   kubectl get services -n loki
   ```

2. 🐞 Debug from within cluster:
   ```
   kubectl run tmp-shell --rm -i --tty --image nicolaka/netshoot -- /bin/bash
   curl http://loki-service:3100/ready
   ```

3. 📜 Check Grafana logs for Loki connection errors

4. ⚙️ Verify Grafana's Loki data source configuration

5. 🚪 If using Ingress, check Loki's Ingress config

💡 These steps will help identify where the connection is failing in your setup!