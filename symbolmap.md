    # Goal
    The goal is to create a basic Docker "Hello World" application in Minikube and perform the deployments.
    
    ## Diagram
    


flowchart TD
    A["👤 end user (Nihat)"] -->|🌐 Public Network| B[🛒 Go shopping]
    B["💻 codespaces"] --> C{💭 Let me think}
    C -->|🔹 OneTask| D[👋 Hello World] -->|📜 App Logs| n1
    C -->|🔸 ThreeTask| E[📊 Grafana] --> F
    C{"🔀 loadbalancer"} -->|⚙️ TwoTask| F[🚗 Prometheus]
    E[📊 Grafana] --> n1
    n1["📦 Loki"]

B "https://fictional-space-fiesta-675v46v6q35vpw-9090.app.github.dev/" "my code space url"
