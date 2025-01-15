#include "script_component.hpp"

if !(isMultiplayer) exitWith {};

["CBA_settingsInitialized", {
    GVAR(lockArsenals) = false;

    [QGVAR(arsenalsLocked), {
        params ["_player", "_locked"];
        INFO_2("All arsenals were %1 by %2.",[ARR_2("locked","unlocked")] select _locked,name _player);

        private _message = [LSTRING(unlockedMessage), LSTRING(lockedMessage)] select _locked;
        hintSilent localize _message;
    }] call CBA_fnc_addEventHandler;

    [QGVAR(resetTimer), {
        params ["_player"];
        INFO_1("Arsenal time limits reset by %1.",name _player);
        private _unit = [] call CBA_fnc_currentUnit;
        _unit setVariable [QGVAR(timer), 0];
    }] call CBA_fnc_addEventHandler;

    if (!hasInterface) exitWith {};

    // ACE Arsenal
    if (isClass (configFile >> "CfgPatches" >> "ace_arsenal")) then {
        ["ace_arsenal_displayOpened", LINKFUNC(onArsenalOpen)] call CBA_fnc_addEventHandler;
        ["ace_arsenal_displayClosed", LINKFUNC(onArsenalClose)] call CBA_fnc_addEventHandler;
    };

    // Vanilla arsenal
    [missionNamespace, "arsenalOpened", LINKFUNC(onArsenalOpen)] call BIS_fnc_addScriptedEventHandler;
    [missionNamespace, "arsenalClosed", LINKFUNC(onArsenalClose)] call BIS_fnc_addScriptedEventHandler;
}] call CBA_fnc_addEventHandler;