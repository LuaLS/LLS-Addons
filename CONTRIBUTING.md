
# Contributing
Hello! Thank you for taking the time to learn how you can help improve this project. Make sure you have read the [README](README.md) to get an understanding of the project first.


## New Git User Guide
New to Git/GitHub? Here are some guides that will help you get started:

- [Setting up Git](https://docs.github.com/en/get-started/quickstart/set-up-git)
- [Pull request workflow](https://docs.github.com/en/get-started/quickstart/github-flow)
- [Pull request detailed guide](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/getting-started/about-collaborative-development-models)
- [Git submodules](https://www.atlassian.com/git/tutorials/git-submodule)


## How To Contribute
There are many ways to contribute to this project, you can, for example, add your own addon or help someone maintain an addon that has already been added. Tasks can range from spelling corrections to translations to programming.


### Reporting Issues
Found an issue with an addon, like incorrect definitions or a malfunctioning plugin? Head to the repository for that addon and open an issue there. Make sure to read the `CONTRIBUTING.md` over there as well!

> **Note**
> Please make sure to look for already open issues to keep things organized and make sure your issue is not closed as a duplicate.

### Testing Changes
Making sure that definitions are accurate is very important. Receiving help with testing changes is equally significant. There are too many libraries and frameworks for even a team of people to test and have knowledge about.

To test changes from a pull request, you will have to clone that repository and checkout the branch being merged.

Once you have the changes locally on your computer, you can [test the changes with the Lua Language Server](https://github.com/sumneko/lua-language-server/wiki/Libraries#link-to-workspace).

### Adding an addon
There are a few steps to adding your own addon. The process is still being worked on to try and make it as easy as possible.

#### Creating the addon
1. [Create an issue](https://github.com/LuaLS/LLS-Addons/issues/new?template=new_addon.yml) explaining what you are creating. This helps prevent multiple people working on their own versions of the same thing.
2. Use the [addon template](https://github.com/LuaLS/addon-template) or create your own repository (GitHub/GitLab) to store your addon.
3. Read ["Creating an Addon" in the Lua Language Server wiki to learn more](https://github.com/LuaLS/lua-language-server/wiki/Addons#creating-an-addon)

#### Publishing the Addon
1. Fork [LLS-Addons](https://github.com/LuaLS/LLS-Addons) to get your own copy.
2. Create a branch where you can make your changes. Try to name the branch something related to what you are doing, e.g. `issue-58`, `add-busted`, `update-luassert`, etc.
3. Create an `info.json` file that lives in your addon's directory (e.g. `addons/myAddon/info.json`. You can copy an `info.json` from [an already included addon](https://github.com/LuaLS/LLS-Addons/blob/main/addons/cc-tweaked/info.json) as a template.
4. In your `info.json`, specify a `name` (display name) and `description`. The `size` and `hasPlugin` values will be generated automatically.
5. Run [StyLua](https://github.com/JohnnyMorganz/StyLua) on your addon to apply the proper code style to the definition files.
6. Commit your addon as a submodule to your fork.
   - Your git command should look like `git submodule add $HTTP_CLONE_URL addons/myAddon/module`.
   - If you have many miscellaneous/config files in your addon repository, please create a new branch (e.g. `publish`) where you can include the minimum number of files (`LICENSE` is fine). You can then use `git submodule add -b $BRANCH_NAME $HTTP_CLONE_URL addons/myAddon/module` to add your addon.

> ❗ **Warning** ❗
> Make sure to commit the submodule and not **just** the updates to `.submodules`

When an addon is updated, the submodule in LLS-Addons will have to be updated to the latest commit through a pull request.


### Contributing Changes
Now it is time to contribute your changes back to this project for all to enjoy! Note that your changes will be added under the [license](LICENSE) of this project.

1. [Open a pull request](https://github.com/carsakiller/LLS-Addons/pulls)
2. [Link any issues](https://docs.github.com/en/issues/tracking-your-work-with-issues/linking-a-pull-request-to-an-issue) resolved by this PR
3. Make sure you have [allowed edits from maintainers](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/allowing-changes-to-a-pull-request-branch-created-from-a-fork) in case some tweaks need to be made.

Thank you for helping us improve! ❤️

[addons-wiki]: https://github.com/LuaLS/lua-language-server/wiki/Addons#vs-code-addon-manager
