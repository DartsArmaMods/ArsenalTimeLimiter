#include "..\script_component.hpp"
/*
 * Author: DartRuffian
 * Locks all arsenals for all clients.
 *
 * Arguments:
 * 0: True to lock arsenals, false to unlock (optional, default: false) <BOOL>
 * 1: Player responsible (optional, default: null) <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [true, player] call atl_timeLimiter_fnc_lockArsenals;
 *
 * Public: Yes
 */

params [
    ["_locked", false, [false]],
    ["_player", objNull, [objNull]]
];
TRACE_2("fnc_lockArsenals",_locked,_player);

missionNamespace setVariable [QGVAR(lockArsenals), _locked, true];
[QGVAR(arsenalLockChanged), [_locked, _player]] call CBA_fnc_globalEvent;