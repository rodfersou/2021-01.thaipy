# ThaiPy presentation on 14/01/2021

## Intro to Pytest + AssertPy + Factory Boy


### How to run

* Install nix https://nixos.org/download.html

* Install direnv

```bash
nix-env -i direnv
```

* Configure direnv

.direnvrc
```
export CURRENT_DIR=$PWD
ENV_DIR=$(find_up ".envrc")
export ENV_DIR=${ENV_DIR%/*}

cd $ENV_DIR
use_nix
# direnv_load sh -c "nix-shell --run \"DIRENV_DUMP_FILE_PATH=\$DIRENV_DUMP_FILE_PATH $direnv dump\""
# direnv_load sh -c "nix-shell --pure --run \"DIRENV_DUMP_FILE_PATH=\$DIRENV_DUMP_FILE_PATH $direnv dump\""
cd $CURRENT_DIR

alias_dir=$ENV_DIR/.direnv/aliases
rm -rf "$alias_dir"

export_alias() {
  local name=$1
  shift
  local target="$alias_dir/$name"
  mkdir -p "$alias_dir"
  PATH_rm "$alias_dir"
  PATH_add "$alias_dir"
  echo "#!/bin/bash -e" > "$target"
  echo "$@" >> "$target"
  chmod +x "$target"
}
```

* Enter in the project directory and run `I` alias to start jupyter notebook
