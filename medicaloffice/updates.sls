{% from "medicaloffice/map.jinja" import config with context %}
{% set settings = config.update %}

c:/windows/temp/medicaloffice-update.exe:
  file.managed:
    - source: {{ settings.get('source') }}
    - skip_verify: true

run_medicaloffice_update:
    cmd.run:
    - name: '.\medicaloffice-update.exe -S'
    - cwd: c:/windows/temp
    - shell: powershell
    - require:
      - file: c:/windows/temp/medicaloffice-update.exe
      - file: C:/INDAMED/convert.exe
    - watch:
      - file: c:/windows/temp/medicaloffice-update.exe
