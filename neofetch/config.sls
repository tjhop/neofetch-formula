# vim: ft=sls
# How to configure neofetch
{%- from "neofetch/map.jinja" import neofetch with context %}

# implant template config file from this formula over the
# package's template config file so that all invocations of
# `neofetch` inherit from it (and create their own local config file
# under `$HOME/.config/neofetch/config.conf`)

# grab config_version from the default config file so it's available in the template
{% set config_version = salt['file.grep']('/opt/neofetch/config/config.conf', 'config_version')['stdout'] %}

# leave copy of original package config
neofetch_make_config_backup:
  file.copy:
    - name: {{ neofetch.config_file }}.original
    - source: {{ neofetch.config_file }}
    - force: True
    - preserve: True

neofetch_config:
  file.managed:
    - name: {{ neofetch.config_file }}
    - source: salt://neofetch/files/neofetch_config.j2
    - user: root
    - group: root
    - mode: 0644
    - template: jinja
    - show_changes: False
    - require:
      - file: neofetch_make_config_backup
