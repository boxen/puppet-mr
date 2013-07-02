# Install mr from homebrew
#
# Usage:
#
#     include mr
class mr {
  include homebrew
  include homebrew::config

  package {'mr':
  }
}
