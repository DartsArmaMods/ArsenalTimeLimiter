<!-- If you want to make changes to this README, you need to also modify the README.md in the docs folder as well -->

<h1 align="center">Arsenal Time Limiter</h1>
<p align="center">
    <a href="https://github.com/DartsArmaMods/ArsenalTimeLimiter/releases/latest">
        <img src="https://img.shields.io/badge/Version-0.0.0-blue?style=flat-square" alt="Arsenal Time Limiter Version">
    </a>
    <a href="https://github.com/DartsArmaMods/ArsenalTimeLimiter/issues">
        <img src="https://img.shields.io/github/issues-raw/DartsArmaMods/ArsenalTimeLimiter.svg?style=flat-square&label=Issues" alt="Arsenal Time Limiter Issues">
    </a>
    <a href="https://steamcommunity.com/sharedfiles/filedetails/?id=MOD_ID">
        <img src="https://img.shields.io/steam/downloads/MOD_ID.svg?style=flat-square&label=Downloads" alt="Arsenal Time Limiter Downloads">
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

# Initial Project Setup!
Delete this section after the project has been initially set up:
1. Find and replace all instances of `Arsenal Time Limiter` with the mod's name.
2. Find and replace all instances of `ArsenalTimeLimiter` with the mod's name *and no spaces*.
   - This should be the name of the repository on GitHub.
3. Find and replace all instances of `atl` with the mod's prefix.
   - This should be all lowercase.
4. Find and replace all instances of `ATL` with the mod's acronym.
   - This should be all uppercase.
5. After the initial Steam upload, find and replace all instances of `MOD_ID` with the mod's Steam Workshop id.

**Arsenal Time Limiter** is an edit of [R. Gonzalez's mod of the same name](https://steamcommunity.com/sharedfiles/filedetails/?id=3407083413), but runs entirely unscheduled and uses CBA events for networking. I had offered to add these fixes to the original mod, to which the original author took offense to.

The project is entirely **open-source** and any contributions are welcome.

## Core Features
- Time Limiter
  - When opening an arsenal (vanilla or ACE) in multiplayer, a timer will be displayed on the screen. When the timer reaches 0, the arsenal will be automatically closed.
  - The time can be customized via a CBA setting, or modified on the arsenal directly via ACE Actions (Admin Only).
  - Individual units can bypass the timer by enabling the "Ignore Timer" option in their properties.
  - A whitelist setting is also included where a player's Steam ID can be added to always allow them to bypass the timer.

## Contributing
For new contributers, see the [Contributing Setup & Guidelines](./.github/CONTRIBUTING.md).

## License
Per the original mod:
> You can do whatever you want with this mod... pack it, squish it, burn it... Just remember to mention this original version if reuploading anywhere. Be happy.