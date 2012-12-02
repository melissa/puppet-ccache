# == Class: ccache
#
# Install ccache on machine
#
# === Parameters
# [*ensure*]
#   present or absent, defaults to present
#
# === Usage Example
#
#   include ccache
#
class ccache ($ensure = undef) {
  include ccache::params

  $ensure_real = $ensure ? {
    undef   => $ccache::params::ensure,
    default => $ensure
  }
  validate_re($ensure_real, [absent, present])

  package { 'ccache':
    ensure => $ensure_real
  }

}
