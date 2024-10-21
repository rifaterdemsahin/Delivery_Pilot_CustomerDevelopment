10.96.25.185:3100/metrics

To add the metrics from `10.96.25.185:3100/metrics` to Grafana, follow these steps:

1. **Open Grafana**: Log in to your Grafana instance.
2. **Add Data Source**:
    - Go to the Grafana sidebar and click on **Configuration** (gear icon).
    - Select **Data Sources**.
    - Click on **Add data source**.
3. **Select Prometheus**:
    - Choose **Prometheus** from the list of available data sources.
4. **Configure Prometheus**:
    - Set the **URL** to `http://10.96.25.185:3100/metrics`.
    - Configure other settings as needed.
    - Click **Save & Test** to verify the connection.

Once the data source is added, you can create dashboards and panels to visualize the metrics.

For more detailed instructions, refer to the [Grafana documentation](https://grafana.com/docs/grafana/latest/getting-started/getting-started-prometheus/).



