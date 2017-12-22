# vim: ft=sls
# Manage service for service neofetch
{%- from "neofetch/map.jinja" import neofetch with context %}

'neofetch-service not configured':
  test.succeed_without_changes

#neofetch_service:
#  service.running:
#    - name: neofetch
#    - enable: True
#    - watch:
#        - file: neofetch_config

