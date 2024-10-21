## AFTER UPDATING CONTENT
`cd /workspaces/deliverypilot/SymbolsCode/helloworld && docker build -t pexabo/nginx-helloworld . && docker push pexabo/nginx-helloworld`

To find and delete the pod, you can use the following script:

```bash
#!/bin/bash

# Get the pod name
POD_NAME=$(kubectl get pods --no-headers -o custom-columns=":metadata.name" | grep nginx-helloworld)

# Check if the pod exists
if [ -z "$POD_NAME" ]; then
    echo "Pod not found."
else
    # Delete the pod
    kubectl delete pod $POD_NAME
    echo "Pod $POD_NAME deleted."
fi
```

Save this script to a file, for example `delete_pod.sh`, and run it with:

```bash
cd /workspaces/deliverypilot/Journey/Docker
chmod +x delete_pod.sh
./delete_pod.sh
```
