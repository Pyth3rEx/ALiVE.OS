#include "\x\alive\addons\mil_logistics\script_component.hpp"
SCRIPT(MLSaveData);

/* ----------------------------------------------------------------------------
Function: ALIVE_fnc_MLSaveData

Description:
Save mil logistics persistence state via sys_data

Parameters:

Returns:
Boolean

Examples:
(begin example)
// save logistics data
_result = call ALIVE_fnc_MLSaveData;
(end)

See Also:
ALIVE_fnc_MLLoadData

Author:
ARJay
---------------------------------------------------------------------------- */

private ["_result","_data","_async","_missionName","_message","_messages","_saveResult"];

if !(isServer && {!(isNil "ALIVE_sys_data")} && {!(ALIVE_sys_data_DISABLED)}) exitwith {false};

if(ALiVE_SYS_DATA_DEBUG_ON) then {
    [true, "ALiVE MIL LOGISTICS - Saving data", "mlper"] call ALIVE_fnc_timer;
};

_async = false;
_missionName = [missionName, "%20","-"] call CBA_fnc_replace;
_missionName = format["%1_%2_FORCE_POOL", ALIVE_sys_data_GROUP_ID, _missionName];

_data = ALIVE_globalForcePool;

// Check whether there's at least 1 mil_logistics module with persistence set to true
//
// TODO(marcel): This can probably be done in a more fancy way, e.g. check which factions
// are or aren't persisted and remove them from a copy of ALIVE_globalForcePool and pass
// that to ALiVE_fnc_Data.
private _isPersistent = false;

{
    private _opcom = _x;
    private _module = [_opcom, "module"] call CBA_fnc_hashGet;

    {
        private _object = _x;

        if (_object isKindOf "alive_mil_logistics") then {
            private _persistent = [_object, "persistent"] call ALiVE_fnc_ML;

            if (_persistent) exitWith {
                _isPersistent = true;
            };
        };
    } forEach (synchronizedObjects _module);

    if (_isPersistent) exitWith {};
} forEach OPCOM_instances;

if (!_isPersistent || count (_data select 1) == 0) exitwith {
    //[["ALiVE_LOADINGSCREEN"],"BIS_fnc_endLoadingScreen",true,false] call BIS_fnc_MP;
};

_result = [false,[]];

_message = format["ALiVE Military Logistics - Preparing to save %1 forcepools..",count(_data select 1)];
_messages = _result select 1;
_messages pushback _message;

if(ALiVE_SYS_DATA_DEBUG_ON) then {
    ["ALiVE SAVE MIL LOGISTICS DATA NOW - MISSION NAME: %1! PLEASE WAIT...",_missionName] call ALIVE_fnc_dump;
    _data call ALIVE_fnc_inspectHash;
};


if (isNil QGVAR(DATAHANDLER)) then {

    if(ALiVE_SYS_DATA_DEBUG_ON) then {
        ["SAVE MIL LOGISTICS, CREATE DATA HANDLER!"] call ALIVE_fnc_dump;
    };

    GVAR(DATAHANDLER) = [nil, "create"] call ALIVE_fnc_Data;
    [GVAR(DATAHANDLER),"storeType",true] call ALIVE_fnc_Data;
};

_saveResult = [GVAR(DATAHANDLER), "write", ["mil_logistics", _data, _async, _missionName]] call ALIVE_fnc_Data;
_result set [0,_saveResult];

_message = format["ALiVE Military Logistics - Save Result: %1",_saveResult];
_messages = _result select 1;
_messages pushback _message;


if(ALiVE_SYS_DATA_DEBUG_ON) then {
    [false, "ALiVE MIL LOGISTICS - Save data complete","mlper"] call ALIVE_fnc_timer;
    ["ALiVE MIL LOGISTICS SAVE DATA RESULT: %1",_saveResult] call ALiVE_fnc_Dump;
};

_result
