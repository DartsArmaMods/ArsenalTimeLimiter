#include "..\script_component.hpp"
/*
 * Author: DartRuffian
 * Resets the time limit for all players.
 *
 * Arguments:
 * 0: Player to run <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * player call atl_timeLimiter_fnc_resetTimer;
 *
 * Public: Yes
 */

params [
    ["_player", objNull, [objNull]]
];
TRACE_1("fnc_resetTimer",_player);

if (isNull _player) exitWith {};

[QGVAR(resetTimer), [_player]] call CBA_fnc_globalEvent;