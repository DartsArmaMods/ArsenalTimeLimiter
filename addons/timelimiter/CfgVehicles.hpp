class CfgVehicles {
    class Man;
    class CAManBase: Man {
        class ACE_SelfActions {
            class ADDON {
                displayName = QUOTE(MOD_NAME);
                condition = QUOTE(GVAR(enabled) && (isServer || {([] call BIS_fnc_admin) in [ARR_2(1,2)]}));
                statement = "";

                class GVAR(lockArsenals) {
                    displayName = CSTRING(lockArsenals);
                    condition = QUOTE(!GVAR(lockArsenals));
                    statement = QUOTE([ARR_2(_player,true)] call FUNC(lockArsenals));
                };

                class GVAR(unlockArsenals) {
                    displayName = CSTRING(unlockArsenals);
                    condition = QUOTE(GVAR(lockArsenals));
                    statement = QUOTE([ARR_2(_player,false)] call FUNC(lockArsenals));
                };

                class GVAR(resetTimers) {
                    displayName = CSTRING(resetTimers);
                    condition = QUOTE(true);
                    statement = "";

                    class GVAR(confirm) {
                        displayName = CSTRING(confirm);
                        condition = QUOTE(true);
                        statement = QUOTE([_player] call FUNC(resetTimers));
                    };
                };
            };
        };
    };
};