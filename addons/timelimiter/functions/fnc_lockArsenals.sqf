#include "..\script_component.hpp"
/*
 * Author: DartRuffian
 * Locks all arsenals for all clients.
 *
 * Arguments:
 * 0: Player to run <OBJECT>
 * 1: True to lock arsenals, false to unlock (optional, default: false) <BOOL>
 *
 * Return Value:
 * None
 *
 * Example:
 * [player, true] call atl_timeLimiter_fnc_lockArsenals;
 *
 * Public: Yes
 */

params [
    ["_player", objNull, [objNull]],
    ["_locked", false, [false]]
];
TRACE_2("fnc_lockArsenals",_player,_locked);

if (isNull _player) exitWith {};

missionNamespace setVariable [QGVAR(lockArsenals), _locked, true];
[QGVAR(arsenalLockChanged), [_player, _locked]] call CBA_fnc_globalEvent;