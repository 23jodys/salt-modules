gitlab_deps:
  pkg.installed:
    - pkgs:
      - curl
      - policycoreutils 
      - openssh-server 
      - perl 
      - yum-utils

/etc/yum.repos.d/gitlab_gitlab-ee.repo:
  file.managed:
    - source: https://packages.gitlab.com/install/repositories/gitlab/gitlab-ee/config_file.repo?os=almalinux&dist=8&source=script


gitlab:
  pkg.installed:
    - refresh: True
    - pkgs:
      - gitlab-ee
