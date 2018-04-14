# export PYTHONSTARTUP=~/.pythonrc.py

# pyenvの設定
export PYENV_ROOT="${HOME}/.pyenv"
if [ -d "${PYENV_ROOT}"  ]; then
  export PATH=${PYENV_ROOT}/bin:${PYENV_ROOT}/shims:${PATH}
  eval "$(pyenv init -)"
fi
# pyenv-virtualenvの設定
if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi

# export PATH="$HOME"/miniconda3/bin:$PATH
export PATH="/Users/junji/.pyenv/versions/miniconda3-latest/bin:$PATH"
