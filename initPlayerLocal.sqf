// Support Requester created By ryd3v 2018, Updated 2024
_this select 0 synchronizeObjectsAdd [SupportRequester];
SupportRequester synchronizeObjectsAdd [_this select 0];
BIS_supp_refresh = TRUE;
publicVariable "BIS_supp_refresh";

private _player = _this select 0;

// Check if the synchronized player is actually a player
if (typeOf _player isEqualTo "player") then {
    {
        _x params ["_supportType", "_providerVar"];
        private _result = [_player, SupportRequester, _providerVar] call BIS_fnc_addSupportLink;
        if (_result isEqualTo false) then {
            diag_log format ["Failed to add support link for %1 with provider %2", _supportType, _providerVar];
        };
    } forEach [
        ["Artillery", ArtilleryProvider],
        ["CAS", CasProvider],
        ["Ammo", AmmoProvider],
        ["Helicas", HelicasProvider]
    ];
};

// Initialize dynamic groups if not already in one
if (isNull (group _player) || {count (units (group _player)) == 1}) then {
    ["InitializePlayer", [_player]] call BIS_fnc_dynamicGroups;
};
// Add a UAV support request action manually
player addAction ["Request UAV Surveillance", { execVM "functions\callUAV.sqf"; }];