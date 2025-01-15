class Cfg3DEN {
    class Object {
        class AttributeCategories {
            class ADDON {
                displayName = QUOTE(MOD_NAME);
                collapsed = 0;

                class Attributes {
                    class GVAR(ignoreTimer) {
                        displayName = CSTRING(ignoreTimer_name);
                        tooltip = CSTRING(ignoreTimer_tooltip);
                        condition = "objectControllable";

                        control = "Checkbox";
                        property = QGVAR(ignoreTimer);
                        typeName = "BOOL";
                        defaultValue = "false";
                        expression = "_this setVariable ['%s', _value, true]";
                    };
                };
            };
        };
    };
};