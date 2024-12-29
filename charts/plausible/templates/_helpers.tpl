{{/*
Expand the name of the chart.
*/}}
{{- define "plausible.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "plausible.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- printf "%s" $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}

{{/*
Create chart name and version as used by the chart label.
*/}}
{{- define "plausible.chart" -}}
{{- printf "%s-%s" .Chart.Name .Chart.Version | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "plausible.labels" -}}
helm.sh/chart: {{ include "plausible.chart" . }}
{{ include "plausible.selectorLabels" . }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "plausible.selectorLabels" -}}
app.kubernetes.io/name: {{ include "plausible.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
ClickHouse common labels
*/}}
{{- define "plausible.clickhouse.labels" -}}
helm.sh/chart: {{ include "plausible.chart" . }}
{{ include "plausible.clickhouse.selectorLabels" . }}
app.kubernetes.io/version: {{ .Values.clickhouse.image.tag | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
ClickHouse selector labels
*/}}
{{- define "plausible.clickhouse.selectorLabels" -}}
app.kubernetes.io/name: {{ include "plausible.name" . }}-clickhouse
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }} 