{% from "medicaloffice/map.jinja" import config with context %}

{%- if kernel ==  'windows' %}
include:
# - .base
- .updates
{%- endif %}