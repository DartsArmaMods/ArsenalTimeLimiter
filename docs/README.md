<!-- If you want to make changes to this README, you need to also modify the README.md in the docs folder as well -->

<h1 align="center">Arsenal Time Limiter</h1>
<p align="center">
    <a href="https://github.com/DartsArmaMods/ArsenalTimeLimiter/releases/latest">
        <img src="https://img.shields.io/badge/Version-0.0.0-blue?style=flat-square" alt="Arsenal Time Limiter Version">
    </a>
    <a href="https://github.com/DartsArmaMods/ArsenalTimeLimiter/issues">
        <img src="https://img.shields.io/github/issues-raw/DartsArmaMods/ArsenalTimeLimiter.svg?style=flat-square&label=Issues" alt="Arsenal Time Limiter Issues">
    </a>
    <a href="https://steamcommunity.com/sharedfiles/filedetails/?id=3408041319">
        <img src="https://img.shields.io/steam/downloads/3408041319.svg?style=flat-square&label=Downloads" alt="Arsenal Time Limiter Downloads">
    </a>
    <a href="https://github.com/DartsArmaMods/ArsenalTimeLimiter/blob/master/LICENSE">
        <img src="https://img.shields.io/badge/License-APL ND-red?style=flat-square" alt="Arsenal Time Limiter License">
    </a>
    <br>
    <img src="https://img.shields.io/github/actions/workflow/status/DartsArmaMods/ArsenalTimeLimiter/hemtt.yml?style=flat-square&label=HEMTT" alt="HEMTT">
    <img src="https://img.shields.io/github/actions/workflow/status/DartsArmaMods/ArsenalTimeLimiter/arma.yml?style=flat-square&label=Validate" alt="Validate">
</p>

<p align="center">
    <b>Requires the latest version of <a href="https://github.com/CBATeam/CBA_A3/releases/latest">CBA A3</a></b>
</p>

**Arsenal Time Limiter** is an edit of [R. Gonzalez's mod of the same name](https://steamcommunity.com/sharedfiles/filedetails/?id=3407083413), but runs entirely unscheduled and uses CBA events for networking. I had offered to add these fixes to the original mod, to which the original author took offense to. So I took it upon myself to fix and improve their mod.

The project is entirely **open-source** and any contributions are welcome.

## Core Features
- Time Limiter
  - When opening an arsenal (vanilla or ACE) in multiplayer, a timer will be displayed on the screen. When the timer reaches 0, the arsenal will be automatically closed.
  - The time can be customized via a CBA setting, or modified on the arsenal directly via ACE Actions (Admin Only).
  - Individual units can bypass the timer by enabling the "Ignore Timer" option in their properties.
  - A whitelist setting is also included where a player's Steam ID can be added to always allow them to bypass the timer.
- Arsenal Locks
  - All arsenals can also be locked by an admin, preventing any non-whitelisted player from opening an arsenal at all.
  - This is only natively available through ACE self interactions, but can be done by a script by running:
```sqf
// This affects all machines! Only run once.
_isLocked call atl_timeLimiter_fnc_lockArsenals; // true to lock, false to unlock
```

## Contributing
For new contributers, see the [Contributing Setup & Guidelines](./.github/CONTRIBUTING.md).

## License
Per the original mod:
> You can do whatever you want with this mod... pack it, squish it, burn it... Just remember to mention this original version if reuploading anywhere. Be happy