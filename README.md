# Witch: The End Journey Mod Tutorial

English | [中文](README.zh-CN.md)

This repository collects mod templates, examples, and development notes for Witch: The End Journey. When creating a new mod, copy either `ModTemplate` or `DllTemplate` into your own mod folder, then edit the configuration and scripts by following the README in that template.

## Directory Guide

| Directory | Contents |
| --- | --- |
| `ModTemplate/` | Lua mod template with `ModConfig.json`, entry scripts, Data/Text sample tables, resource folders, and vanilla config references. Use it for most new cards, buffs, text, resource redirects, and Lua hooks. |
| `DllTemplate/` | C# DLL hook template with a development project, sample entry point, and the runtime `Scripts/Entry.dll` layout. Use it when you need C# language features or more complex hooks. |
| `Example/` | Completed sample mods. `Example/Defect` demonstrates how to organize config tables, a Lua entry script, and `ModResource` animation assets. |

## File Guide

| File | Contents |
| --- | --- |
| `LICENSE` | Repository license. |
| `.gitignore` | Git ignore rules. |

## Quick Start

1. Choose a template:
   - Lua mod: copy `ModTemplate`.
   - C# DLL hook mod: copy `DllTemplate`.
2. Rename the copied folder to your mod name, and keep the folder name consistent with `ModName` in `ModConfig.json`.
3. Edit `ModConfig.json`. At minimum, fill in `ModName`, `ModAuthor`, `ModVersion`, `ModDescription`, and `IconPath`.
4. Edit the parts you need:
   - Lua entry: `Scripts/Entry.lua`
   - Data configs: `Data/`
   - Text configs: `Text/`
   - Images, animations, and other assets: `ModResource/`
5. See the template-specific guides:
   - Lua template: [ModTemplate/README.md](ModTemplate/README.md)
   - C# DLL template: [DllTemplate/readme.md](DllTemplate/readme.md)
   - Sample mod: [Example/Defect/README.md](Example/Defect/README.md)

## Upload to Steam Workshop

After your mod is finished and tested locally, use the upload tool shipped with the game:

`D:\Witch's Apocalyptic Journey\Witch's Apocalyptic Journey_Data\StreamingAssets\Mod Upload Tool\WorkshopUploader.exe`

For detailed steps, see [ModTemplate/README.md#10-publish-your-mod](ModTemplate/README.md#10-publish-your-mod).
