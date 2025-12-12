
# Lua Language Server Addons

![Addons count](https://img.shields.io/github/directory-file-count/LuaLS/LLS-Addons/addons?label=Addons&type=dir&color=097aba)
![Contributors](https://img.shields.io/github/contributors/LuaLS/LLS-Addons?label=Contributors)

Welcome to the repository of [addons][addon-wiki] for the [Lua Language Server][lls-github] by [sumneko](https://github.com/sumneko)!

This repository is a highly collaborative project, with the community contributing addons through pull requests. The goal is to provide a central location where the community can collaborate on creating addons. Addons are added to this repository as a git submodule, allowing each project to have its own issues, pull requests, and fork-able repo - they can even live on GitLab. The addons in this repository can be fetched by the [addon manager](https://luals.github.io/wiki/addons#addon-manager) in the [VS Code extension](https://github.com/sumneko/vscode-lua) that communicates with the Lua Language Server in VS Code.

## What is an Addon?
An [addon][addon-wiki], simply put, is something that extends the functionality of the [Lua Language Server][lls-github]. An addon could, for example, include definitions for an API, and apply settings. [Definition files](https://luals.github.io/wiki/definition-files) are written in Lua using the Lua Language Server's [LuaCATS annotation system](https://luals.github.io/wiki/annotations).

### What should be an Addon?
- An [addon][addon-wiki] for a popular library/framework.
- Definitions for an API

### What should **NOT** be an Addon?
- Definitions for a personal project (use [`workspace.library`](https://luals.github.io/wiki/settings#workspacelibrary)).
- Definitions for proprietary software.

### Anatomy of an Addon
Here is an example of what an addon could look like:
```
📂 MySnazzyAddon/
    ├──📜 info.json
    └── 📁 module/
        ├── 📁 library/
        └── 📜 config.lua
```
#### `info.json`
The `info.json` file contains some details about the addon such as the name and description. It also contains some additional metadata such as `size` and `hasPlugin`, but these values are generated automatically by the [LLS-Addons-Action](https://github.com/LuaLS/LLS-Addons-Action). This file is used by the [addon manager](https://luals.github.io/wiki/addons#addon-manager) to retrieve some data about each addon without having to install them all first.

#### `module`
The module folder is the submodule that contains the [addon][addon-wiki]'s definition files and `config.json`.

## Get Involved
As already said, this is a very collaborative project, so anyone is welcome to help out! To get started, please review the [contribution guidelines](CONTRIBUTING.md). Your contributions are greatly appreciated and will help to make this project a valuable resource for the Lua community ❤️.



[lls-github]: https://github.com/LuaLS/lua-language-server
[addon-wiki]: https://luals.github.io/wiki/addons

