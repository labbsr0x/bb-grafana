FROM grafana/grafana:6.5.2

#PANELS
# RUN grafana-cli plugins install mtanda-histogram-panel #doesnt work on Grafana 5.x
RUN grafana-cli plugins install mtanda-heatmap-epoch-panel
RUN grafana-cli plugins install grafana-worldmap-panel
RUN grafana-cli plugins install grafana-piechart-panel
RUN grafana-cli plugins install petrslavotinek-carpetplot-panel
RUN grafana-cli plugins install neocat-cal-heatmap-panel
RUN grafana-cli plugins install briangann-gauge-panel
RUN grafana-cli plugins install jdbranham-diagram-panel
RUN grafana-cli plugins install citilogics-geoloop-panel
RUN grafana-cli plugins install natel-plotly-panel 
RUN grafana-cli plugins install bessler-pictureit-panel
RUN grafana-cli plugins install grafana-clock-panel
RUN grafana-cli plugins install novalabs-annotations-panel
RUN grafana-cli plugins install digrich-bubblechart-panel
RUN grafana-cli plugins install briangann-datatable-panel
RUN grafana-cli plugins install natel-discrete-panel
RUN grafana-cli plugins install savantly-heatmap-panel
RUN grafana-cli plugins install blackmirror1-statusbygroup-panel
RUN grafana-cli plugins install vonage-status-panel
RUN grafana-cli plugins install zuburqan-parity-report-panel

#DATASOURCES
RUN grafana-cli plugins install camptocamp-prometheus-alertmanager-datasource

#### ARGS ####
ARG useradmin
ARG userpassword

#### ENVS ####
ENV GF_SECURITY_ADMIN_USER ${useradmin}
ENV GF_SECURITY_ADMIN_PASSWORD ${userpassword}

#### CONFIG ####

USER root

RUN chmod -R 777 /etc/grafana/provisioning/datasources/
ADD /example/datasource.yml /etc/grafana/provisioning/datasources/

VOLUME [ "/data" ]
EXPOSE 3000








