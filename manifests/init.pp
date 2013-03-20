# Install mr from homebrew
#
# Usage:
#
#     include mr

class mr {
  include homebrew
  include homebrew::config

  $version = '1.13'

  homebrew::formula{ 'mr':
    before => Package['boxen/brews/mr']
  }
  package {'boxen/brews/mr':
    ensure => $version
  }
}
