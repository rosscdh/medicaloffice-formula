{% from "medicaloffice/map.jinja" import config with context %}
{% set settings = config.updates %}

c:/windows/temp/medicaloffice-update-{{ settings.version }}.exe:
  file.managed:
    - source: {{ settings.source }}
    - skip_verify: true

run_medicaloffice_update:
    cmd.run:
    - name: '.\medicaloffice-update-{{ settings.version }}.exe /S'
    - cwd: c:/windows/temp
    - shell: powershell
    - require:
      - file: c:/windows/temp/medicaloffice-update-{{ settings.version }}.exe
    #   - file: C:/INDAMED/convert.exe
    # - watch:
    #   - file: c:/windows/temp/medicaloffice-update-{{ settings.version }}.exe
