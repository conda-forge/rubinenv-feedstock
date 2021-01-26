# Syntax should be compatible with bash and zsh
if [[ -n "$RUBIN_EUPS_PATH" ]]; then
  # push RUBIN_EUPS_PATH onto the front of EUPS_PATH if it's not already there
  if [[ -z "$EUPS_PATH" ]]; then
    export EUPS_PATH="${RUBIN_EUPS_PATH}"
  else
    export CONDA_RUBINENV_BACKUP_EUPS_PATH="${EUPS_PATH}"
    export EUPS_PATH="${RUBIN_EUPS_PATH}:${EUPS_PATH#$RUBIN_EUPS_PATH}"
  fi
fi
