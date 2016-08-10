{% set current_path = salt['environ.get']('PATH', '/bin:/usr/bin') %}

get_current_time:
  cmd.run:
    - name: echo 'tasks'+ $(date)
    - cwd: /home
    - env:
      - PATH: {{ [current_path, '/user/local/bin']|join(':') }}
    - require:
      - cmd: prepare

prepare:
  cmd.run:
    - name: echo 'tasks'+ $(date)
    - cwd: /home
    - env:
      - PATH: {{ [current_path, '/user/local/bin']|join(':') }}
