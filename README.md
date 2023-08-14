# Windows subsystem config

Configurando subsistema linux, do início.

1. Ativando modo desenvolvedor no Windows

- Configurações > Atualização e Segurança > Para Desenvolvedores
- Ative o modo desenvolvedor

2. Instalando subsistema wsl2

- Clique no menu iniciar com o botão direito
- Abra Windows PowerShell (Admin)

  `$ wsl --install`

- Aguarde a instalação e siga os comandos do terminal

  Em caso de dúvidas [Leia a documentação oficial](https://learn.microsoft.com/pt-br/windows/wsl/install)

3. Instalando Hyper Terminal

- Download disponível em [Hyper.is](https://hyper.is/)
- Faça a instalação do pacote

4. Configurando bash como padrão no Hyper

- No terminal
- Menu > Edit > Preferences ou ctrl+,
- Busque por _shell: ''_ se preferir use ctrl+f e faça a busca
- Dentro das aspas '' coloque: _'C:\\\Windows\\\System32\\\bash.exe'_

5. Instalando **nvm** para usar o Node.js

- No terminal
- Atualize o apt-get

  `$ sudo apt-get update`

- Instale o curl

  `$ sudo apt-get install curl`

- Instale o nvm

  `$ curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.4/install.sh | bash`

- Verifique se foi instalado

  `$ nvm --version`

Em caso de dúvidas [leia a documentação](https://github.com/nvm-sh/nvm)

## Agora vamos personalizar o terminal

1. Instalando o Zsh

- No terminal

  `$ apt install zsh`

- Verifique se foi instalado

  `$ zsh --version`

Em caso de dúvidas [leia a documentação](https://github.com/ohmyzsh/ohmyzsh/wiki/Installing-ZSH)

2. Instalando Oh My Zsh

- No terminal

  `$ sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"`

3. Utilizando tema Spaceship

- No terminal

  `$ git clone https://github.com/denysdovhan/spaceship-prompt.git "$ZSH_CUSTOM/themes/spaceship-prompt"`

- Em seguida

  `$ ln -s "$ZSH_CUSTOM/themes/spaceship-prompt/spaceship.zsh-theme" "$ZSH_CUSTOM/themes/spaceship.zsh-theme"`

- Usando um editor de texto: nano, vim, vs code... abra o arquivo _~/.zshrc_ e modifique o **ZSH_THEME** ficando

  ```
  ZSH_THEME="spaceship"
  ```

- Crie um arquivo

  `$ touch ~/.spaceshiprc.zsh`

- Abra o arquivo e cole

  ```
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

  ```

Para fazer sua própria configuração de tema [leia a documentação](https://spaceship-prompt.sh/getting-started/)

4. Instalando o ZInit

- No terminal

  `$ bash -c "$(curl --fail --show-error --silent --location https://raw.githubusercontent.com/zdharma-continuum/zinit/HEAD/scripts/install.sh)"`

- Abra o arquivo _~/.zshrc_ utilizando um editor de texto e adicione ao final do documento:

  ```
  zplugin light zdharma/fast-syntax-highlighting
  zplugin light zsh-users/zsh-autosuggestions
  zplugin light zsh-users/zsh-history-substring-search
  zplugin light zsh-users/zsh-completions
  zplugin light buonomo/yarn-completion
  ```

- Aproveitando o momento adicione no corpo do documento a configuração do nvm instalado anteriormente:

  ```
  export NVM_DIR="$HOME/.nvm"
  [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
  [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

  ```

## Usando essas configurações no VS Code

1. No vs code

- Abra as configurações _ctrl+,_ abra o arquivo json
- No arquivo localize a chave:

  ```
    "terminal.integrated.profiles.windows":{ }
  ```

- Adicione dentro das chaves:

  ```
    "Bash": {
      "path": "C:\\Windows\\System32\\bash.exe"
    },
  ```

- Localize a chave:

  ```
  "terminal.integrated.defaultProfile.windows",
  ```

- Altere para:

  ```
  "terminal.integrated.defaultProfile.windows": "Bash"
  ```

### Pronto, seu subsistema está pronto para uso.

**Good coding!**
