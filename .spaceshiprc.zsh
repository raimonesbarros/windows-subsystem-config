  SPACESHIP_PROMPT_ORDER=(
  user # Username section
  dir # Current directory section
  host # Hostname section
  git # Git section (git_branch + git_status)
  hg # Mercurial section (hg_branch + hg_status)
  exec_time # Execution time
  line_sep # Line break
  jobs # Background jobs indicator
  exit_code # Exit code section
  char # Prompt character
  )

  # USER STYLE
  SPACESHIP_USER_SHOW=always
  SPACESHIP_PROMPT_ADD_NEWLINE=false
  SPACESHIP_CHAR_SYMBOL="🚀"
  SPACESHIP_CHAR_SUFFIX=" "

  # PACKAGE
  SPACESHIP_PACKAGE_PREFIX="via·"
  SPACESHIP_PACKAGE_SUFFIX=" "
  SPACESHIP_PACKAGE_COLOR="green"

  # DIRECTORY
  SPACESHIP_DIR_TRUNC=1

  # EXEC TIME
  SPACESHIP_EXEC_TIME_PREFIX="🕒"
  SPACESHIP_EXEC_TIME_ELAPSED=1
  SPACESHIP_EXEC_TIME_PRECISION=0
