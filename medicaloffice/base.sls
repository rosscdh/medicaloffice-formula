{% from "medicaloffice/map.jinja" import config with context %}
{% set settings = config.base %}

/tmp/medicaloffice.exe:
  file.managed:
    - source: {{ settings.get('source') }}
    - skip_verify: true
