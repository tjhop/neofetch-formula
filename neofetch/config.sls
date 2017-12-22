# vim: ft=sls
# How to configure neofetch
{%- from "neofetch/map.jinja" import neofetch with context %}

neofetch_config:
  file.managed:
    - name: '/tmp/config.conf'
    - source: salt://neofetch/files/config.conf
    - user: root
    - group: root
    - mode: 0600
    - template: jinja
    - local_string: 'test string please ignore'

