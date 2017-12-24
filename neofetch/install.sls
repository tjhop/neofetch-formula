# vim: ft=sls
# How to install neofetch
{%- from "neofetch/map.jinja" import neofetch with context %}

neofetch_install_prerequisite_pkgs:
  pkg.installed:
    - pkgs: {{ neofetch.prerequisite_pkgs }}

neofetch_pkg_directory:
  file.directory:
    - name: {{ neofetch.install_dir }}
    - user: root
    - group: root
    - dir_mode: 755
    - file_mode: 644

neofetch_pkg:
  git.latest:
    - name: {{ neofetch.git_url }}
    - target: {{ neofetch.install_dir }}
    - rev: master
    - force_clone: True
    - require:
      - pkg: neofetch_install_prerequisite_pkgs
      - file: neofetch_pkg_directory

neofetch_install:
  cmd.run:
    - name: 'make install'
    - cwd: {{ neofetch.install_dir }}
    - onchanges:
      - git: neofetch_pkg
    - reload_modules: True
