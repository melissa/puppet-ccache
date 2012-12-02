# == Node: default
#
# Example default node for testing module
#
# === Example Usage
#
#   puppet apply --confdir . --logdir ~/.puppet/tmp --rundir ~/.puppet/run test/site.pp
#
node default {
  include ccache
}
