# Aurelia, the Merchant Witch — Open Tab

A mod for *Witch's Apocalyptic Journey*, built from the [apocalyptic-journey-mod-tutorial](https://github.com/meowalive/apocalyptic-journey-mod-tutorial) `ModTemplate`.

**Concept:** Aurelia treats every action like a transaction. Nothing is free — Gold is the same currency used for shop purchases between fights, spent and gained live during combat, so a big turn now can mean a poorer shop later.

## What's built

- **`Liquidate`** (`Data/Card/aurelia_skills.csv`) — sell selected cards from hand for Gold. Uses the confirmed in-combat `SelectCardToAction` UI function.
- **`Insurance Policy`** (`Data/Card/aurelia_skills.csv`) — grants Shelter (vanilla `chrysalis` buff) and scaling Impregnable, capped at 10 stacks (100% damage reduction), based on Gold spent this turn.
- **`aurelia_goldspent`** (`Data/Buff/aurelia_buffs.csv`) — hidden tracking buff, reset every `StartRound`, used by Insurance Policy to read how much Gold was spent this turn.
- **`aurelia` career** (`Data/Career/aurelia_career.csv`) — the `Open Tab` passive's confirmable half: +2 Gold on the `Action` event (assumed to mean "whenever you play a card" — see Open Questions below), plus the `StartRound` reset for the tracking buff.

## Not yet built

- **The rest of her card pool**

- **The "go into debt" half of Open Tab** — there's no confirmed generic hook to intercept an arbitrary future Gold-spend across any card. In practice, each Gold-spending card will need its own affordability check + debt fallback written into its own script;

- Art, animations, `Icon.png`. Currently `ModResource/` is empty.
- Full splash art
- Round avatar icon
- Diamond avatar icon
- Emojis

## Open questions / needs verification in-engine

- **Does the `Action` fight event fire specifically on card plays, or more broadly?** Open Tab's passive assumes "card play" — if `Action` fires on other things too, the +2 Gold trickle would over-trigger.
- **`SelectCardToAction`'s exact parameters** (the `Type` string argument, "hand" used here, is a guess based on context, not directly confirmed from a working example).

## Setup

1. Copy the `Aurelia` folder into your game's `Mods/` directory as-is — the folder is named `Aurelia` to match `ModName`.
2. Fill in `ModAuthor` and add art to `ModResource/`.
3. Resolve the two open questions above through actual in-game testing before building out the rest of the card pool.
4. Publish with the game's `WorkshopUploader.exe` — see the tutorial repo's README §10.

## Reference

- Full authoring guide: https://github.com/meowalive/apocalyptic-journey-mod-tutorial/blob/main/ModTemplate/README.md
- Vanilla data/effect reference: https://github.com/meowalive/apocalyptic-journey-mod-tutorial/blob/main/ModTemplate/Scripts/Lib/DataConfigs
