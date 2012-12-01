# == Class: ccache
#
# Install ccache on machine
#
# === Actions:
# - Install ccache
#
# === Usage Example:
#
#   include ccache
#
class ccache {
  package { 'ccache':
    ensure => present
  }
}
