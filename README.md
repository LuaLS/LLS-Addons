
# Lua Language Server Addons

![Addons count](https://img.shields.io/github/directory-file-count/carsakiller/LLS-Addons/addons?label=Addons&type=dir&color=097aba)

Welcome to the repository of addons for the [Lua Language Server][lls-github] by [sumneko](https://github.com/sumneko)!

This repository is a highly collaborative project, with the community contributing addons through pull requests. The goal is to provide a central location where the community can collaborate on creating addons. Addons are added to this repository as a git module, allowing each project to have its own fork-able repo. The addons in this repository can be fetched by the addon manager in the [VS Code extension](https://github.com/sumneko/vscode-lua) that communicates with the Lua Language Server in VS Code.

## What is an Addon?
An addon is simply something that extends the functionality of the [Lua Language Server][lls-github]. An addon could for example be definition files and settings that function very similarly to [environment emulations](https://github.com/LuaLS/lua-language-server/wiki/Libraries#environment-emulation). The definition files are written in Lua using the Lua Language Server's [LuaCATS annotation system](https://github.com/sumneko/lua-language-server/wiki/Annotations).

### What should be an Addon?
- An [environment emulation](https://github.com/sumneko/lua-language-server/wiki/Libraries#environment-emulation) for a popular library/framework.

### What should **NOT** be an Addon?
- Definitions for a personal project (use [`workspace.library`](https://github.com/sumneko/lua-language-server/wiki/Settings#workspacelibrary)).
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
The `info.json` file contains some details about the addon such as the name and description. It also contains some additional metadata such as `size` and `hasPlugin`, but these values are generated automatically by the [LLS-Addons-Action](https://github.com/LuaLS/LLS-Addons-Action).

#### `module`
The module folder is the submodule that contains all the definition files and `config.lua` file - basically an [environment emulation](https://github.com/sumneko/lua-language-server/wiki/Libraries#environment-emulation).

## Get Involved
As already said, this is a very collaborative project, so anyone is welcome to help out! To get started, please review the [contribution guidelines](CONTRIBUTING.md). Your contributions are greatly appreciated and will help to make this project a valuable resource for the Lua community ❤️.



[lls-github]: https://github.com/sumneko/lua-language-server

