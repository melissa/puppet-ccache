# Class: ccache
#
# Install ccache on machine
#
# Parameters:
# - $ensure
#
# Actions:
# - Install ccache
#
# Usage Example:
#
#   ccache{ 'ccache':; }
#
class ccache ($ensure = installed) {
  package { 'ccache': ensure => $ensure }
}