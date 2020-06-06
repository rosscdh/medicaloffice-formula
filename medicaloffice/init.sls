{% from "medicaloffice/map.jinja" import config with context %}

/tmp/medicaloffice.exe:
  file.managed:
    - source: {{ config.source }}
    - skip_verify: true

/tmp/firebirddb.exe:
  file.managed:
    - source: {{ config.firebird_db.source }}
    - skip_verify: true
