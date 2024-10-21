    # Goal
    The goal is to create a basic Docker "Hello World" application in Minikube and perform the deployments.

    ## Diagram

    ```mermaid
        flowchart TD
            A["end user(nihat)"] -->|Public
            Network| B(Go shopping)
            B("codespaces") --> C{Let me think}
            C -->|One| D[Hello World]
            C -->|Two| E[Grafana]
            C{"loadbalancer"} -->|Three| F[fa:fa-car Prometheus]
    ```
