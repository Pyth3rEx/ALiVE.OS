#include "\x\alive\addons\amb_civ_command\script_component.hpp"
SCRIPT(cc_idle);

/* ----------------------------------------------------------------------------
Function: ALIVE_fnc_cc_idle

Description:
Idle command for civilians

Parameters:
Profile - profile
Args - array

Returns:

Examples:
(begin example)
//
_result = [_agent, []] call ALIVE_fnc_cc_idle;
(end)

See Also:

Author:
ARJay
---------------------------------------------------------------------------- */

params ["_agentData","_commandState","_commandName","_args","_state","_debug"];

private _agentID = _agentData select 2 select 3;
private _agent = _agentData select 2 select 5;

private _nextState = _state;
private _nextStateArgs = [];


// DEBUG -------------------------------------------------------------------------------------
if(_debug) then {
    ["ALiVE Managed Script Command - [%1] called args: %2",_agentID,_args] call ALIVE_fnc_dump;
};
// DEBUG -------------------------------------------------------------------------------------

switch (_state) do {

    case "init":{

        // DEBUG -------------------------------------------------------------------------------------
        if(_debug) then {
            ["ALiVE Managed Script Command - [%1] state: %2",_agentID,_state] call ALIVE_fnc_dump;
        };
        // DEBUG -------------------------------------------------------------------------------------

        _agent setVariable ["ALIVE_agentBusy", true, false];

        _args params ["_minTimeout","_maxTimeout"];

        _agent action ["SITDOWN",_agent];

        private _timeout = _minTimeout + floor(random _maxTimeout);
        private _timer = 0;

        _nextState = "idling";
        _nextStateArgs = [_timeout, _timer];

        [_commandState, _agentID, [_agentData, [_commandName,"managed",_args,_nextState,_nextStateArgs]]] call ALIVE_fnc_hashSet;

    };

    case "idling":{

        // DEBUG -------------------------------------------------------------------------------------
        if(_debug) then {
            ["ALiVE Managed Script Command - [%1] state: %2",_agentID,_state] call ALIVE_fnc_dump;
        };
        // DEBUG -------------------------------------------------------------------------------------

        _args params ["_timeout","_timer"];

        private _dayState = (call ALIVE_fnc_getEnvironment) select 0;

        if(_dayState == "EVENING" || {_dayState == "DAY"}) then {

            private _homePosition = _agentData select 2 select 10;

            if([_homePosition, 30] call ALiVE_fnc_anyPlayersInRange > 0 && random 1 > 0.4) then {
                if!(_agent getVariable ["ALIVE_agentHouseMusicOn",false]) then {
                    private _building = _homePosition nearestObject "House";
                    private _music = [_building, faction _agent] call ALIVE_fnc_addAmbientRoomMusic;
                    _agent setVariable ["ALIVE_agentHouseMusic", _music, false];
                    _agent setVariable ["ALIVE_agentHouseMusicOn", true, false];
                };
            };

        };

        if(_dayState == "EVENING" || {_dayState == "NIGHT"}) then {

            private _homePosition = _agentData select 2 select 10;

            if!(_agent getVariable ["ALIVE_agentHouseLightOn",false]) then {
                private _building = _homePosition nearestObject "House";
                private _light = [_building] call ALIVE_fnc_addAmbientRoomLight;
                _agent setVariable ["ALIVE_agentHouseLight", _light, false];
                _agent setVariable ["ALIVE_agentHouseLightOn", true, false];
            };
        };

        if(_timer > _timeout) then
        {
            _agent playMove "";
            _nextState = "done";
            [_commandState, _agentID, [_agentData, [_commandName,"managed",_args,_nextState,_nextStateArgs]]] call ALIVE_fnc_hashSet;
        }else{
            _timer = _timer + 1;

            _nextStateArgs = [_timeout, _timer];

            [_commandState, _agentID, [_agentData, [_commandName,"managed",_args,_nextState,_nextStateArgs]]] call ALIVE_fnc_hashSet;
        };

    };

    case "done":{

        // DEBUG -------------------------------------------------------------------------------------
        if(_debug) then {
            ["ALiVE Managed Script Command - [%1] state: %2",_agentID,_state] call ALIVE_fnc_dump;
        };
        // DEBUG -------------------------------------------------------------------------------------

        _agent setVariable ["ALIVE_agentBusy", false, false];

        _nextState = "complete";
        _nextStateArgs = [];

        [_commandState, _agentID, [_agentData, [_commandName,"managed",_args,_nextState,_nextStateArgs]]] call ALIVE_fnc_hashSet;
    };

};