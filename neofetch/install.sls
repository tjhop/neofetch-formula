# vim: ft=sls
# How to install neofetch
{%- from "neofetch/map.jinja" import neofetch with context %}

neofetch_pkg:
  pkg.installed:
    - name: {{ neofetch.pkg }}

