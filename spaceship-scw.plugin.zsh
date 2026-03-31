#
# Scaleway CLI (scw)
#
# Shows the current active Scaleway CLI profile
# Link: https://github.com/scaleway/scaleway-cli

# ------------------------------------------------------------------------------
# Configuration
# ------------------------------------------------------------------------------

SPACESHIP_SCW_SHOW="${SPACESHIP_SCW_SHOW=true}"
SPACESHIP_SCW_ASYNC="${SPACESHIP_SCW_ASYNC=true}"
SPACESHIP_SCW_PREFIX="${SPACESHIP_SCW_PREFIX="$SPACESHIP_PROMPT_DEFAULT_PREFIX"}"
SPACESHIP_SCW_SUFFIX="${SPACESHIP_SCW_SUFFIX="$SPACESHIP_PROMPT_DEFAULT_SUFFIX"}"
SPACESHIP_SCW_SYMBOL="${SPACESHIP_SCW_SYMBOL="☁️ "}"
SPACESHIP_SCW_COLOR="${SPACESHIP_SCW_COLOR="magenta"}"

# ------------------------------------------------------------------------------
# Section
# ------------------------------------------------------------------------------

# Show current Scaleway CLI profile
# spaceship_ prefix before section's name is required!
# Otherwise this section won't be loaded.
spaceship_scw() {
  # If SPACESHIP_SCW_SHOW is false, don't show scw section
  [[ $SPACESHIP_SCW_SHOW == false ]] && return

  # Check if scw command is available for execution
  spaceship::exists scw || return

  # Get the current profile name
  local scw_profile
  scw_profile="$(scw config info -o template='{{ .ProfileName }}' 2>/dev/null)"

  # If profile is empty, don't show section
  [[ -z "$scw_profile" ]] && return

  # Display scw section
  # spaceship::section utility composes sections. Flags are optional
  spaceship::section::v4 \
    --color "$SPACESHIP_SCW_COLOR" \
    --prefix "$SPACESHIP_SCW_PREFIX" \
    --suffix "$SPACESHIP_SCW_SUFFIX" \
    --symbol "$SPACESHIP_SCW_SYMBOL" \
    "$scw_profile"
}
