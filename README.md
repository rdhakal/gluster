# gluster

# gluster volume set <VOL Name> network.ping-timeout <Value>
#kubectl create configmap gluster-entrypoint-cm --from-file=entrypoint.sh
kubectl create configmap gluster-entrypoint-cm --from-file=cert/
/var/lib/glusterd/secure-access



for teams 


{
  "@type": "MessageCard",
  "@context": "http://schema.org/extensions",
  "themeColor": "{{ if eq .Status \"firing\" }}8e24aa{{ else }}44bb66{{ end }}",
  "summary": "{{ template \"__subject\" . }}",
  "sections": [
    {
      "activityTitle": "{{ .Status }}: {{ template \"__subject\" . }}",
      "activitySubtitle": "{{ range .Alerts.Firing }}{{ .Labels.alertname }} @ {{ .Labels.instance }} {{ end }}{{ range .Alerts.Resolved }}{{ .Labels.alertname }} @ {{ .Labels.instance }} {{ end }}",
      "activityImage": "{{ if eq .Status \"firing\" }}https://grafana.com/static/assets/img/blog/microsoft-teams-alerting.png{{ else }}https://grafana.com/static/assets/img/blog/microsoft-teams-resolved.png{{ end }}",
      "facts": [
        {
          "name": "Description",
          "value": "{{ template \"__description\" . }}"
        },
        {
          "name": "Details",
          "value": "{{ range .Alerts.Firing }}{{ .Annotations.summary }}\nSeverity: {{ .Labels.severity }}\n{{ end }}{{ range .Alerts.Resolved }}{{ .Annotations.summary }}\nSeverity: {{ .Labels.severity }}\n{{ end }}"
        }
      ],
      "markdown": true
    }
  ],
  "potentialAction": [
    {
      "@type": "OpenUri",
      "name": "View Rule",
      "targets": [
        {
          "os": "default",
          "uri": "{{ template \"__alertmanagerURL\" . }}"
        }
      ]
    }
  ]
}

