#include "..\script_component.hpp"
/*
 * Author: DartRuffian
 * Handles a unit respawning
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * player call atl_timeLimiter_fnc_onUnitRespawn.
 *
 * Public: Yes
 */

params ["_unit"];
TRACE_1("fnc_onUnitRespawn",_unit);

if (!local _unit) exitWith {};

// Variables are transferred from old unit to new, so manually reset timer
_unit setVariable [QGVAR(timer), 0];