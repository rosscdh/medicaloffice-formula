{% from "medicaloffice/map.jinja" import config with context %}
{% set settings = config.base %}

c:/windows/temp/medicaloffice-{{ settings.version }}.exe:
  file.managed:
    - source: {{ settings.source }}
    - skip_verify: true
