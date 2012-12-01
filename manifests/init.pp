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
class ccache ($ensure = undef) {
  class { 'ccache::params':
  }

  $ensure_real = $ensure ? {
    undef   => $ccache::params::ensure,
    default => $ensure
  }
  validate_re($ensure_real, [absent, present])

  package { 'ccache':
    ensure => $ensure_real
  }

}
