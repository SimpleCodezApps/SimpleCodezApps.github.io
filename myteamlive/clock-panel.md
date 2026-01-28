---
layout: myteamlive
title: "Clock Panel"
section_logo: /images/MyTeamLive.png
section_name: MyTeamLive
section_url: /myteamlive/index
---

# Clock Panel

<p style="text-align:center;">
  <img src="/images/Clock.png" alt="Control bar zoomed view" style="max-width:100%;height:auto;border-radius:12px;">
</p>

Only available when using the Ribbon scorebug with Hockey.

Manage the game clock, player advantage, and penalties on the scorebug.


## Clock
- **Start Clock** starts the game clock.
- **Stop Clock** stops the game clock.

The Game Clock can only be changed when the clock is stopped. Enter minutes and seconds directly in the text fields, then tap **Update Clock**.

The Game Clock runs down to 0. If you reset the Game Clock and there are active penalties, use the **Update penalties** toggle to keep the penalties in sync with the Game Clock.

## Advantage Mode

Controls how the player advantage (5v5, 5v4, etc.) is determined:

- **Manual**: You select the player advantage directly using the Player Advantage picker.
- **Automatic**: The player advantage is calculated automatically based on active penalties, empty net status, and the skaters setting.

## Player Advantage Controls

- **Player Advantage** select the on-ice strength (only editable in Manual mode).
- **Empty Net** indicates which team (if any) has pulled their goalie. An empty net adds an extra skater for that team.
- **Skaters** sets the base number of skaters (5v5, 4v4, or 3v3). Use 3v3 for overtime periods that use 3-on-3 rules.

## Penalties

List of active penalties; each can be edited or cleared.
- **Add Penalty** add a new penalty.

Penalty clocks run with the game clock. A penalty clock that goes to 0 expires and is removed. If a side has multiple penalties, a **+** will indicate that there are other penalties counting down.

Use the double minor toggle to indicate a double minor. When the double minor expires or is cleared, it starts a second time to cover both minors.

In Automatic mode, penalties affect the calculated player advantage. For example, one home penalty changes 5v5 to 5v4 (away power play).