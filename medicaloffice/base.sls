{% from "medicaloffice/map.jinja" import config with context %}
{% set settings = config.base %}

c:/windows/temp/medicaloffice.exe:
  file.managed:
    - source: {{ settings.get('source') }}
    - skip_verify: true
