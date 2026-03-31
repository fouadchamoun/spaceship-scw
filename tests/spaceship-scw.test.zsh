#!/usr/bin/env zsh

# Required for shunit2 to run correctly
CWD="${${(%):-%x}:A:h}"
setopt shwordsplit
SHUNIT_PARENT=$0

# Use system Spaceship or fallback to Spaceship Docker on CI
typeset -g SPACESHIP_ROOT="${SPACESHIP_ROOT:=/spaceship}"

# Mocked scw CLI
mocked_profile="default"
scw() {
  if [[ "$1" == "config" && "$2" == "info" ]]; then
    # Check if -o template option is present
    if [[ "$3" == "-o" && "$4" == template=* ]]; then
      echo "$mocked_profile"
    fi
  fi
}

# ------------------------------------------------------------------------------
# SHUNIT2 HOOKS
# ------------------------------------------------------------------------------

setUp() {
  # Enter the test directory
  cd $SHUNIT_TMPDIR
}

oneTimeSetUp() {
  export TERM="xterm-256color"

  source "$SPACESHIP_ROOT/spaceship.zsh"
  source "$(dirname $CWD)/spaceship-scw.plugin.zsh"

  SPACESHIP_PROMPT_ASYNC=false
  SPACESHIP_PROMPT_FIRST_PREFIX_SHOW=true
  SPACESHIP_PROMPT_ADD_NEWLINE=false
  SPACESHIP_PROMPT_ORDER=(scw)

  echo "Spaceship version: $(spaceship --version)"
}

oneTimeTearDown() {
  unset SPACESHIP_PROMPT_ASYNC
  unset SPACESHIP_PROMPT_FIRST_PREFIX_SHOW
  unset SPACESHIP_PROMPT_ADD_NEWLINE
  unset SPACESHIP_PROMPT_ORDER
}

# ------------------------------------------------------------------------------
# TEST CASES
# ------------------------------------------------------------------------------

test_no_scw_installed() {
  # Temporarily hide scw command
  unfunction scw 2>/dev/null

  local expected=""
  local actual="$(spaceship::testkit::render_prompt)"

  assertEquals "do not render when scw is not installed" "$expected" "$actual"

  # Restore scw mock
  scw() {
    if [[ "$1" == "config" && "$2" == "info" ]]; then
      # Check if -o template option is present
      if [[ "$3" == "-o" && "$4" == template=* ]]; then
        echo "$mocked_profile"
      fi
    fi
  }
}

test_no_profile_configured() {
  # Set empty profile
  mocked_profile=""

  local expected=""
  local actual="$(spaceship::testkit::render_prompt)"

  assertEquals "do not render when no profile is configured" "$expected" "$actual"

  # Restore profile
  mocked_profile="default"
}

test_profile_displayed() {
  # Prepare the environment
  mocked_profile="production"

  local prefix="%{%B%}$SPACESHIP_SCW_PREFIX%{%b%}"
  local content="%{%B%F{$SPACESHIP_SCW_COLOR}%}$SPACESHIP_SCW_SYMBOL$mocked_profile%{%b%f%}"
  local suffix="%{%B%}$SPACESHIP_SCW_SUFFIX%{%b%}"

  local expected="$prefix$content$suffix"
  local actual="$(spaceship::testkit::render_prompt)"

  assertEquals "render profile name" "$expected" "$actual"
}

test_default_profile() {
  # Prepare the environment
  mocked_profile="default"

  local prefix="%{%B%}$SPACESHIP_SCW_PREFIX%{%b%}"
  local content="%{%B%F{$SPACESHIP_SCW_COLOR}%}$SPACESHIP_SCW_SYMBOL$mocked_profile%{%b%f%}"
  local suffix="%{%B%}$SPACESHIP_SCW_SUFFIX%{%b%}"

  local expected="$prefix$content$suffix"
  local actual="$(spaceship::testkit::render_prompt)"

  assertEquals "render default profile" "$expected" "$actual"
}

# ------------------------------------------------------------------------------
# SHUNIT2
# Run tests with shunit2
# ------------------------------------------------------------------------------

source "$SPACESHIP_ROOT/tests/shunit2/shunit2"
