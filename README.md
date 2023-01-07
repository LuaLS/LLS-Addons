
# Lua Language Server Addons

![Addons count](https://img.shields.io/github/directory-file-count/carsakiller/LLS-Addons/addons?label=Addons&type=dir&color=097aba) ![Contributors count](https://img.shields.io/github/contributors/carsakiller/LLS-Addons?color=097aba&label=Contributors)

Welcome to the repository of addons for the [Lua Language Server][lls-github] by [sumneko](https://github.com/sumneko)!

This repository is a highly collaborative project, with the community contributing addons through pull requests. The goal is to provide a central location where the community can collaborate on creating definition files and plugins. The addons in this repository can be fetched by the addon manager in the [VS Code extension](https://github.com/sumneko/vscode-lua) that communicates with the Lua Language Server in VS Code.

## What is an Addon?
An addon is simply something that extends the functionality of the [Lua Language Server][lls-github]. An addon could be definition files for a library, a plugin that modifies how it works, or both! The definition files are written in Lua using the Lua Language Server's [LuaCATS annotation system](https://github.com/sumneko/lua-language-server/wiki/Annotations). Check the [example](https://github.com/carsakiller/LLS-Addons/tree/main/example) to see what an addon could look like.

### What should be an Addon?
- An [environment emulation](https://github.com/sumneko/lua-language-server/wiki/Libraries#environment-emulation) for a popular library/framework.
- A [plugin](https://github.com/sumneko/lua-language-server/wiki/Plugins) that alters the behaviour of the Lua Language Server.

### What should **NOT** be an Addon?
- Definitions for a personal project (use [`workspace.library`](https://github.com/sumneko/lua-language-server/wiki/Settings#workspacelibrary)).
- Definitions for proprietary software.

## Get Involved
As already said, this is a very collaborative project, so anyone is welcome to help out! To get started, please review the [contribution guidelines](CONTRIBUTING.md). Your contributions are greatly appreciated and will help to make this project a valuable resource for the Lua community ❤️.



[lls-github]: https://github.com/sumneko/lua-language-server

