# Syntax should be compatible with bash and zsh
if [ -n "$RUBIN_EUPS_PATH" ]; then
  if [ -n "$CONDA_RUBINENV_BACKUP_EUPS_PATH" ]; then
    export EUPS_PATH="$CONDA_RUBINENV_BACKUP_EUPS_PATH"
    unset CONDA_RUBINENV_BACKUP_EUPS_PATH
  else
    unset EUPS_PATH
  fi
fi
