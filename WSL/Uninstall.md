# [Uninstall WSL](https://learn.microsoft.com/en-us/windows/wsl/faq#how-do-i-uninstall-a-wsl-distribution-)
To remove a distribution from WSL and delete all of the data associated with that Linux distribution, run `wsl --unregister <distroName>` where `<distroName>` is the name of your Linux distro, which can be seen from the list in the `wsl -l` command.

Additionally, you can then uninstall the Linux distro app on your machine just like any other store application.