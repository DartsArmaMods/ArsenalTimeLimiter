[
    QGVAR(enabled), "CHECKBOX",
    [LSTRING(enabled_name), LSTRING(enabled_tooltip)],
    _category, true, true
] call CBA_fnc_addSetting;

[
    QGVAR(timeLimit), "TIME",
    [LSTRING(timeLimit_name), LSTRING(timeLimit_tooltip)],
    _category, [0, 3600, 600], true
] call CBA_fnc_addSetting;

[
    QGVAR(closeDelay), "TIME",
    [LSTRING(closeDelay_name), LSTRING(closeDelay_tooltip)],
    _category, [0, 3600, 600], true
] call CBA_fnc_addSetting;

[
    QGVAR(whitelist), "EDITBOX",
    [LSTRING(whitelist_name), LSTRING(whitelist_tooltip)],
    _category, "", true
] call CBA_fnc_addSetting;