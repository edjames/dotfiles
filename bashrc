# .bashrc
# vim:syntax=sh

# Temporary utility function
function _source_if_exists {
  local file ;
  for file ; do
    [ -f "${file}" ] && source "${file}" ;
  done
}

#
# Common bash invocations...
#
# (1) interactive login shells
#     $- = himBH
#
# (2) non-interactive login shells
#     $- = hBc
#

case $- in *i* )

  # Source global definitions
  _source_if_exists "/etc/bashrc" ;

  # Before anything else
  _source_if_exists "${HOME}/.before_dotfiles" ;

  # This loads RVM into a shell session
  _source_if_exists "${HOME}/.rvm/scripts/rvm" ;

  # Load all relevant bash completion scripts
  _source_if_exists "${HOME}/.completion" ;

  # Settings for bash history
  _source_if_exists "${HOME}/.history" ;

  # Set the PS1 prompt for interactive shells
  _source_if_exists "${HOME}/.prompting" ;

  # User-specific aliases, functions and paths
  _source_if_exists "${HOME}/.aliases" "${HOME}/.functions" "${HOME}/.path" ;

  # After everything else
  _source_if_exists "${HOME}/.after_dotfiles" ;

esac

# Temporary utility function
unset _source_if_exists ;