{{/* vim: set filetype=mustache: */}}
{{/*
Expand the name of the chart.
*/}}
{{- define "vcluster.name" -}}
{{- default .Chart.Name .Values.name | trunc 63 | trimSuffix "-" -}}
{{- end -}}

{{/*
Create a default fully qualified internal name.
*/}}
{{- define "vcluster.internalName" -}}
{{- printf "vcluster--%s--%s.svc.cluster.local" .Values.host.namespace .Values.guest.name -}}
{{- end -}}

{{/*
Create the default sniHost
*/}}
{{- define "vcluster.sniHost" -}}
{{- printf "%s.%s" .Values.host.namespace .Values.host.domain -}}
{{- end -}}

