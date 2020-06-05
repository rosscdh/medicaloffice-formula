{% from "medicaloffice/map.jinja" import config with context %}

/tmp/medicaloffice.exe:
  file.managed:
    - source: {{ config.source }}
      source_hash: {{ config.source_hash }}

# test_file:
#   file.serialize:
#   - name: /medicaloffice.yml
#   - dataset_pillar: medicaloffice

# mosetupV_9703.exe