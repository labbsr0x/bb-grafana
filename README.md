# BB-Grafana
A repository to define valid Big-Brother Dashboards for Grafana

# Example

At the `example` folder you'll find a simple example using the provided `docker-compose.yml` file.

By running `docker-compose up --build` you'll setup a [metrics generator service](https://github.com/abilioesteves/metrics-generator) that speaks the [Big Brother protocol](https://github.com/labbsr0x/big-brother), a [BB Promster](https://github.com/labbsr0x/bb-promster) and a custom Grafana that points by default to the example BB Promster.

After the example is up and running, you can import the dashboards that exist in the `dashbaords` folder and see for yourself how they behave.

# Dashboards

At this moment we only have one dashboard, `overview.json`.

## Health Overview

It exists at the Grafana.com dashboards marketplace with the ID `11544`. [Go check it out!](https://grafana.com/grafana/dashboards/11544)

It provides 3 different rows: 

1. `Dependency Status`: to check weather there is a failling dependency;
2. `Overall Health`: an aggregated view of reponse time, error rate, error proportion and important Top 10s;
3. `Per address`: a more granular view for each selected address;

Bellow is a preview:
![Health Overview](https://raw.githubusercontent.com/labbsr0x/bb-grafana/assets/screenshot.jpg "Health Overview")

# Big Brother

This is part of a more large application called [Big Brother](https://github.com/labbsr0x/big-brother).
