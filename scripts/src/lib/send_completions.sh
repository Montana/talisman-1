## [@bashly-upgrade completions send_completions]
send_completions() {
  echo $'# cli completion                                           -*- shell-script -*-'
  echo $''
  echo $'# This bash completions script was generated by'
  echo $'# completely (https://github.com/dannyben/completely)'
  echo $'# Modifying it manually is not recommended'
  echo $''
  echo $'_cli_completions_filter() {'
  echo $'  local words="$1"'
  echo $'  local cur=${COMP_WORDS[COMP_CWORD]}'
  echo $'  local result=()'
  echo $''
  echo $'  if [[ "${cur:0:1}" == "-" ]]; then'
  echo $'    echo "$words"'
  echo $'  '
  echo $'  else'
  echo $'    for word in $words; do'
  echo $'      [[ "${word:0:1}" != "-" ]] && result+=("$word")'
  echo $'    done'
  echo $''
  echo $'    echo "${result[*]}"'
  echo $''
  echo $'  fi'
  echo $'}'
  echo $''
  echo $'_cli_completions() {'
  echo $'  local cur=${COMP_WORDS[COMP_CWORD]}'
  echo $'  local compwords=("${COMP_WORDS[@]:1:$COMP_CWORD-1}")'
  echo $'  local compline="${compwords[*]}"'
  echo $''
  echo $'  case "$compline" in'
  echo $'    \'configure hooks\'*\'--hook\')'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_cli_completions_filter "pre-commit pre-push")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'configure search-repos\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_cli_completions_filter "--help --path --verbose -h -p -v")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'config search-repos\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_cli_completions_filter "--help --path --verbose -h -p -v")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'config hooks\'*\'--hook\')'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_cli_completions_filter "pre-commit pre-push")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'configure download\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_cli_completions_filter "--help --repo-org --verbose -h -r -v")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'configure hooks\'*\'-H\')'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_cli_completions_filter "pre-commit pre-push")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'configure hooks\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_cli_completions_filter "--help --hook --verbose -H -h -v")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'config hooks\'*\'-H\')'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_cli_completions_filter "pre-commit pre-push")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'config download\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_cli_completions_filter "--help --repo-org --verbose -h -r -v")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'config hooks\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_cli_completions_filter "--help --hook --verbose -H -h -v")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'run\'*\'--hook\')'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_cli_completions_filter "pre-commit pre-push")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'configure\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_cli_completions_filter "--help -h download hooks search-repos")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'run\'*\'-H\')'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_cli_completions_filter "pre-commit pre-push")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'config\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_cli_completions_filter "--help -h download hooks search-repos")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    \'run\'*)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_cli_completions_filter "--help --hook -H -h")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'    *)'
  echo $'      while read -r; do COMPREPLY+=( "$REPLY" ); done < <( compgen -W "$(_cli_completions_filter "--help --version -h -v config configure run")" -- "$cur" )'
  echo $'      ;;'
  echo $''
  echo $'  esac'
  echo $'} &&'
  echo $'complete -F _cli_completions cli'
  echo $''
  echo $'# ex: filetype=sh'
}