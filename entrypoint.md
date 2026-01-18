Charlotte Wailly
===

## ℹ️ Infos

- author:  "Matthias Morin" <mat@tangoman.io>
- version: 0.1.0
- link:    https://github.com/CharlotteWailly/charlotte_wailly


## 📑 Description

Page d'accueil professionnelle pour Charlotte Wailly,
avocate et médiatrice à Lorient, spécialisée en droit de la famille,
urbanisme et construction.

## 🔥 Usage

`sh charlotte.sh [command] (--domain 'charlottewailly.fr')`

## 🧱 Constants

1. **ALIAS**
> Script alias
  - Value: _charlotte_

## ⚙️ Options

1. **`--domain`**
> Domain name
  - 🧩 Constraint: `/^[a-z0-9_-]+$/`
  - 🚩 Default: _'charlottewailly.fr'_

## 🤖 Commands

### ⚡ APP

#### ⌨️ 1. `open` (public)

Open in default browser

> Synopsis:
> open

- ⚠️ Requires: `nohup`
- 🔗 Depends: `_echo_info`, `_open`

#### ⌨️ 2. `build` (public)

Build app to "dist" folder

> Synopsis:
> build

- ⚠️ Requires: `cp`, `git`, `mkdir`, `rm`
- 🔗 Depends: `_echo_info`

#### ⌨️ 3. `commit` (public)

Commit dist directory changes

> Synopsis:
> commit

- ⚠️ Requires: `git`
- 🔗 Depends: `_echo_info`

#### ⌨️ 4. `deploy` (public)

Deploy "build" folder to "gh-pages"

> Synopsis:
> deploy

- ⚠️ Requires: `git`
- 🔗 Depends: `_echo_info`, `build`, `cname`, `commit`

#### ⌨️ 5. `reset` (public)

Delete "gh-pages" and rebuild branch from "build" folder

> Synopsis:
> reset

- ⚠️ Requires: `git`
- 🔗 Depends: `_echo_info`, `build`, `cname`

#### ⌨️ 6. `cname` (public)

Dump CNAME file

> Synopsis:
> cname

- ⚠️ Requires: `printf`

### ⚡ INSTALL

#### ⌨️ 1. `requirements` (public)

Check requirements

> Synopsis:
> requirements

- 🔗 Depends: `_check_installed`

#### ⌨️ 2. `self_install` (public)

Install script and enable autocompletion

> Synopsis:
> self_install

- 🔗 Depends: `_install`

#### ⌨️ 3. `self_uninstall` (public)

Uninstall script from system

> Synopsis:
> self_uninstall

- 🔗 Depends: `_uninstall`

### ⚡ HELP

#### ⌨️ 1. `help` (public)

Print this help

> Synopsis:
> help

- 🔗 Depends: `_help`

