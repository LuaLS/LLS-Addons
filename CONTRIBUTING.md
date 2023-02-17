
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
> It is important to look for already open issues as it keeps things organized and duplicate issues will be closed.


### Creating an addon
To create your own addon, you will want to first create an issue explaining what you are creating. This will help prevent multiple people working on their own versions of the same thing. Then you will need to create a GitHub repository to store your addon. Definition files will need to placed in a `library/` directory. Take a look at some of the pre-existing addons as an example and take a look at [environment emulations][environment-emulation-wiki].


### Testing Changes
Making sure that definitions are accurate is very important. Receiving help with testing changes is equally significant. There are too many libraries and frameworks for even a small team of people to test and have knowledge about.

To test changes from a pull request, you will have to clone that repository and checkout the branch being merged.

Once you have the changes locally on your computer, you can [test the changes with the Lua Language Server](https://github.com/sumneko/lua-language-server/wiki/Libraries#link-to-workspace).

### Adding an addon
1. Fork the repository to get your own copy of the project.
2. Create a branch where you can make your changes. Try to name the branch something related to what you are doing, e.g. `issue-58` or `busted-addon`.
3. Commit your addon as a submodule to your fork
> **Warning**
> Make sure to commit the submodule and not just the updates to `.submodules`

When an addon is updated, the submodule in LLS-Addons will have to be updated to the latest commit.


### Contributing Changes
Now it is time to contribute your changes back to this project for all to enjoy! Note that your changes will be added under the [license](LICENSE) of this project.

1. [Open a pull request](https://github.com/carsakiller/LLS-Addons/pulls)
2. [Link any issues](https://docs.github.com/en/issues/tracking-your-work-with-issues/linking-a-pull-request-to-an-issue) resolved by this PR
3. Make sure you have [allowed edits from maintainers](https://docs.github.com/en/pull-requests/collaborating-with-pull-requests/working-with-forks/allowing-changes-to-a-pull-request-branch-created-from-a-fork) in case some tweaks need to be made.

Thank you for helping us improve! ❤️

[environment-emulation-wiki]: https://github.com/sumneko/lua-language-server/wiki/Libraries#environment-emulation
