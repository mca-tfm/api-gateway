{{/*
API Gateway
*/}}
{{- define "apigw.name" -}}
{{- printf "%s-%s" .Release.Name "apigw" | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "apigw.deploy" -}}
{{- printf "%s-%s-%s"  .Release.Name "apigw" "deploy" | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "apigw.service" -}}
{{- printf "%s-%s-%s"  .Release.Name "apigw" "service" | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "apigw.port" -}}
{{- printf "%s-%s-%s"  .Release.Name "apigw" "port" | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Users API
*/}}
{{- define "users.service" -}}
{{- printf "%s-%s-%s"  .Values.users.release "users" "service" | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "users.url" -}}
{{- printf "%s://%s:%d/%s"  "https" (include "users.service" .) (int .Values.users.port) "api/v1" }}
{{- end }}


{{/*
Ingress
*/}}
{{- define "ingress.name" -}}
{{- printf "%s-%s" .Release.Name "ingress" | replace "+" "_" | trunc 63 | trimSuffix "-" }}
{{- end }}
