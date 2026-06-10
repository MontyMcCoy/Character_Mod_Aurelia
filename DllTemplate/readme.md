# DllTemplate

English | [中文](readme.zh-CN.md)

C#-based hooks for mods.

## Environment Setup

- The project files are under `Dev`. They are not required when publishing the mod.
- Before building, edit `Dev/DllTemplate.csproj`:
  - Set `GamePath` to your game directory.
  - Set `AssemblyName` to `ModName.ModAuthor`, matching `ModConfig.json`. Do not leave it as a shared name such as `Entry`, or multiple DLL mods can conflict at runtime.

```xml
<AssemblyName>DllTemplate.YOURNAME</AssemblyName>
<GamePath>D:\Witch's Apocalyptic Journey</GamePath>
<DllPath>$(GamePath)\Witch's Apocalyptic Journey_Data\Managed</DllPath>
```

- Rider or VS Code is recommended for building.

## Features

- Attribute-based hooks: supports `HookBefore` and `HookAfter`.
- Full code completion.
- Better support for C# language features.
- Cross-platform is not supported.

## Getting Started

- Mark the mod entry method with `ModInitialize`.
- Add `HookBefore` or `HookAfter` to the methods you want to use as hooks.
- Patch methods must be static. When patching an instance method, the first parameter is the instance by default.
- Patch method parameters can be partial, but their order must match the target method.
- After running `dotnet build`, rename the built DLL to `Entry.dll` and place it in the `Scripts` folder. The file name is still `Entry.dll`, but the internal assembly name should remain `ModName.ModAuthor`.
