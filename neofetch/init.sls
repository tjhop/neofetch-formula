# vim: ft=sls
# Init neofetch
{%- from "neofetch/map.jinja" import neofetch with context %}
{# Below is an example of having a toggle for the state #}

{% if neofetch.enabled %}
include:
  - neofetch.install
  {%- if neofetch.conf is defined %}
  - neofetch.config
  {%- endif %}
{% else %}
'neofetch-formula disabled':
  test.succeed_without_changes
{% endif %}
