{% from "medicaloffice/map.jinja" import config with context %}
{%- set kernel = grains.kernel|lower %}
{%- if kernel ==  'windows' %}
include:
# - .base
- .updates
{%- endif %}