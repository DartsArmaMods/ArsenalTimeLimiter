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

params ["_display"];
TRACE_1("fnc_onArsenalOpen",_display);

private _unit = [] call CBA_fnc_currentUnit;
if (!GVAR(enabled) ||
    getPlayerUID player in GVAR(whitelist) ||
    _unit getVariable [QGVAR(ignoreTimer), false]
) exitWith {};

GVAR(handle) = [{
    params ["_args", "_handle"];
    _args params ["_display", "_unit"];

    private _timeInArsenal = _unit getVariable [QGVAR(timer), 0];
    private _timeRemaining = GVAR(timeLimit) - _timeInArsenal;

    private _exitCode = {
        _display closeDisplay 1;
        if (_message != "") then {
            hintSilent localize _message;
            [{ hintSilent "" }, [], 5] call CBA_fnc_waitAndExecute;
        };
        GVAR(handle) call CBA_fnc_removePerFrameHandler;
        GVAR(handle) = -1;
    };

    // If out of time
    if (_timeRemaining <= 0) exitWith {
        private _message = LSTRING(arsenalTimeout);
        call _exitCode
    };

    // Arsenals are locked by admin
    if (GVAR(lockArsenals)) exitWith {
        private _message = LSTRING(lockedMessage);
        call _exitCode;
    };

    private _time = [_timeRemaining, "M:SS"] call CBA_fnc_formatElapsedTime;
    private _color = "#FFFF00";
    if (_timeRemaining < 60) then {
        _color = "#FF0000";
    };
    cutText [
        format ["<t align='center' size='2' color='#FFFFFF'>%1 - <t color='%2'>%3</t>", LLSTRING(timerMessage), _color, _time],
        "PLAIN DOWN", 0.1, true, true, true
    ];

    _unit setVariable [QGVAR(timer), _timeInArsenal + 1];
}, 1, [_display, _unit]] call CBA_fnc_addPerFrameHandler;