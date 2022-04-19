{% from "medicaloffice/map.jinja" import config with context %}
{% set settings = config.update %}

/tmp/medicaloffice-update.exe:
  file.managed:
    - source: {{ settings.get('source') }}
    - skip_verify: true

run_medicaloffice_update:
    cmd.run:
    - name: '.\medicaloffice-update.exe -S'
    - cwd: /tmp/
    - shell: powershell
    - require:
      - file: /tmp/medicaloffice-update.exe
      - file: C:/INDAMED/convert.exe
    - watch:
      - file: /tmp/medicaloffice-update.exe