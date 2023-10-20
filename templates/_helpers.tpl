{{- define "parameters" }}
{{- range $key, $value := . }}
- name: {{ $key }}
  value: {{ $value | quote }}
{{- end }}
{{- end }}
