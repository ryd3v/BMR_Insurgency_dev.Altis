Host_Unit = player;
_Host_Group = group Host_Unit;
_New_Position = [position Host_Unit, 1, 20, 5, 1, 1.5, 0] call BIS_fnc_findSafePos;
_New_Unit = [_New_Position, 0, "B_UAV_01_F", west] call BIS_fnc_spawnVehicle;


if (!isNull (_New_Unit select 0)) then {
    private _uav = (_New_Unit select 0);
    _uav setDir getDir Host_Unit;
    _uav setBehaviour "Combat";
    _uav flyInHeight 200;
    hint "UAV has been successfully deployed.";
} else {
    hint "Failed to deploy UAV.";
}
