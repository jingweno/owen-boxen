class people::jingweno {
  include projects::all

  package {
    'coreutils':
      ensure => latest;
    'vim':
      ensure => latest;
    'tmux':
      ensure => latest;
    'zsh-completions':
      ensure => latest;
    'hg':
      ensure => latest;
    'reattach-to-user-namespace':
      ensure => latest;
    'go':
      ensure => latest;
  }

  $home       = "/Users/${::luser}"
  $dotfiles   = "${home}/.dotfiles"

  repository {
    $dotfiles:
      source => 'jingweno/dotfiles',
      path   => $dotfiles;
  }
}
