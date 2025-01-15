#include "..\script_component.hpp"
/*
 * Authors: DartRuffian
 * Handles the arsenal display (BIS/ACE)
 *
 * Arguments:
 * 0: Display to add timer to <DISPLAY>
 *
 * Return Value:
 * None
 *
 * Example:
 * _display call atl_timeLimiter_fnc_onArsenalOpen
 *
 * Public: No
 */

private _unit = [] call CBA_fnc_currentUnit;
if (!GVAR(enabled)) exitWith {};

GVAR(handle) call CBA_fnc_removePerFrameHandler;
GVAR(handle) = -1;