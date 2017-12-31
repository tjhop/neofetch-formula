# vim: ft=yaml
# Custom Pillar Data for neofetch

##########
# These settings are mostly the default values from the package provided config
# template (${installation_directory}/neofetch/config/config.conf). The only
# deviation from the default values is that all `info` fields have been configured
# within the `print_info` function, whereas the package template has some of the
# fields commented out.
# They're all being defined here simply so there's an explicit example of how.
##########

neofetch:
  enabled: true

  # Options specified here will control what is actually printed when running
  # the `neofetch` command.
  conf:
    info:
      # provide `key: value` pairs in the form of:
      # neofetch_option: subtitle
      distro: 'OS'
      model: 'Host'
      kernel: 'Kernel'
      uptime: 'Uptime'
      packages: 'Packages'
      shell: 'Shell'
      resolution: 'Resolution'
      de: 'DE'
      wm: 'WM'
      wm_theme: 'WM Theme'
      theme: 'Theme'
      icons: 'Icons'
      term: 'Terminal'
      term_font: 'Terminal Font'
      cpu: 'CPU'
      gpu: 'GPU'
      memory: 'Memory'
      gpu_driver: 'GPU Driver'
      cpu_usage: 'CPU Usage'
      disk: 'Disk'
      battery: 'Battery'
      font: 'Font'
      song: 'Song'
      local_ip: 'Local IP'
      public_ip: 'Public IP'
      users: 'Users'
      install_date: 'Install Date'
      locale: 'Locale'

    # These options will control the formatting of the specific options in the
    # below groups
    kernel:
      kernel_shorthand: 'on'

    distro:
      distro_shorthand: 'off'
      os_arch: 'on'

    uptime:
      uptime_shorthand: 'on'

    shell:
      shell_path: 'off'
      shell_version: 'on'

    cpu:
      speed_type: 'bios_limit'
      speed_shorthand: 'off'
      cpu_brand: 'on'
      cpu_speed: 'on'
      cpu_cores: 'logical'
      cpu_temp: 'off'

    gpu:
      gpu_brand: 'on'
      gpu_type: 'all'

    resolution:
      refresh_rate: 'off'

    theme:
      gtk_shorthand: 'off'
      gtk2: 'on'
      gtk3: 'on'

    ip:
      public_ip_host: 'http://ident.me'

    disk:
      disk_show: "('/')"
      disk_subtitle: 'mount'

    song:
      song_shorthand: 'off'

    install_date:
      install_time: 'on'
      install_time_format: '12h'

    text_colors:
      colors: '(distro)'

    text_options:
      bold: 'on'
      underline_enabled: 'on'
      underline_char: '-'

    color_blocks:
      block_range: '(0 7)'
      color_blocks: 'on'
      block_width: '3'
      block_height: '1'

    progress_bars:
      bar_char_elapsed: '-'
      bar_char_total: '='
      bar_border: 'on'
      bar_length: '15'
      bar_color_elapsed: 'distro'
      bar_color_total: 'distro'

    info_display:
      cpu_display: 'off'
      memory_display: 'off'
      battery_display: 'off'
      disk_display: 'off'

    backend_settings:
      image_backend: 'ascii'
      image_source: 'auto'

    ascii_options:
      ascii_distro: 'auto'
      ascii_colors: '(distro)'
      ascii_bold: 'on'

    image_options:
      image_loop: 'off'
      thumbnail_dir: '${XDG_CACHE_HOME:-${HOME}/.cache}/thumbnails/neofetch'
      crop_mode: 'normal'
      crop_offset: 'center'
      image_size: 'auto'
      gap: '3'
      yoffset: '0'
      xoffset: '0'
      background_color: ''

    scrot_options:
      scrot: 'off'
      scrot_cmd: 'auto'
      scrot_name: 'neofetch-$(date +%F-%I-%M-%S-${RANDOM}).png'
      image_host: 'teknik'

    misc_options:
      stdout: 'off'
