# Getting Started with Lua

The following will help you set up your project to use VSCode as a Lua development environment.

## Installing Dependencies

You will need to install the following, following the vendors' instructions for your individual operating system:

1. A working [CCK Project](../setup.md) in Unity
1. [Visual Studio Code](https://code.visualstudio.com/)
    * [sumneko.lua](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) extension

## Configure the project

This only needs to be done once.

1. Close all VSCode windows to avoid weird bugs from editing things VSCode has open.
1. In the Unity Editor, run *ChilloutVR* &gt; *Scripting* &gt; *Set Up VSCode*

Your project is now ready for VSCode! You will now get syntax highlighting and auto-complete in Lua files.

!!! Note
    Remember to always open the project folder (above Assets) in VSCode rather than individual `*.lua` files, otherwise LuaLS autocomplete and linting will not work properly.
