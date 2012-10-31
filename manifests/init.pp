# Define: ccache
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
define ccache (
  $ensure => installed
){

	package { 'ccache':
		ensure => $ensure
	}
}
