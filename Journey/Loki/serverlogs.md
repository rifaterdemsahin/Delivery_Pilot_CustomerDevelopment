how do i check Unable to connect with Loki. Please check the server logs for more details.

loki            loki-0                                     1/1     Running     0             37m
loki            loki-promtail-rxhcv                        1/1     Running     0             37m
loki            promtail-d4c9g                             1/1     Running     0             34m

```sh
# Check logs for loki-0 pod
kubectl logs loki-0 -n loki

# Check logs for loki-promtail-rxhcv pod
kubectl logs loki-promtail-rxhcv -n loki

# Check logs for promtail-d4c9g pod
kubectl logs promtail-d4c9g -n loki
```