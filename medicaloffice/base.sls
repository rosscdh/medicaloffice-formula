{% from "medicaloffice/map.jinja" import config with context %}

/tmp/medicaloffice.exe:
  file.managed:
    - source: {{ config.base.source }}
    - skip_verify: true
