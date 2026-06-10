# DllTemplate

[English](readme.md) | 中文

基于C#的的Hook

## 环境配置

- 项目文件在Dev文件夹下，发布时不需要留

- 编译时，修改 `Dev/DllTemplate.csproj`：
  - 将 **GamePath** 改为你的游戏目录。
  - 将 **AssemblyName** 改为 `ModName.ModAuthor`，并与 `ModConfig.json` 保持一致。不要使用 `Entry` 这类所有 Mod 共用的程序集名，否则多个 DLL Mod 容易在运行时冲突。

```xml
<AssemblyName>DllTemplate.YOURNAME</AssemblyName>
<GamePath>D:\Witch's Apocalyptic Journey</GamePath>
<DllPath>$(GamePath)\Witch's Apocalyptic Journey_Data\Managed</DllPath>
```

- 建议使用Rider或者VSCODE进行编译



## 特性

- 基于属性的**Hook**：支持**HookBefore**与**HookAfter**

- 完整的代码补全

- 更好的C#语言特性支持

- **不支持跨平台**

## 开始使用

- 在mod的入口处方法标记**ModInitialize**

- 在你想要作为Hook的方法上加上属性**HookBefore**或**HookAfter**

- Patch的方法必须为静态，若要Patch实例方法，第一个参数默认为其实例。

- Patch的方法参数可以不全，但必须保证顺序

- 使用方式：**dotnet build** 后将编译出的 dll 改名为 `Entry.dll` 拖入 `Scripts` 文件夹下。文件名仍然是 `Entry.dll`，但内部程序集名应保持为 `ModName.ModAuthor`。
