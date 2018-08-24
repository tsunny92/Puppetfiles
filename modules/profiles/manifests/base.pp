class profiles::base (
  String $username,
  Enum['absent','present'] $state,
  ){
#  lookup('users', Array[String]).each | String $username |
#  {
#    user { $username:
#    ensure => absent
#    }
#   }

  user { $username:
    ensure => $state
  }
}
