private ["_PARAM_Rain","_randomNum","_rain","_windDir","_windStr","_overcast"];

_PARAM_Rain = "PARAM_Rain" call BIS_fnc_getParamValue;
_randomNum = (random 10) / 10;

//initial weather setting
switch (_PARAM_Rain) do
	{   
		case 0:
		{
			//random weather and no rain
			_overcast = _randomNum;
			_rain = 0;
		};
		case 1:
		{
			//random weather and rain
			_overcast = _randomNum;
			if ((_overcast > 0.7) and (random 10) > 7) then {
				_rain = _randomNum;
			} else {
				_rain = 0;
			};
		};
		case 90:
		{
			//stormy heavy rain
			_overcast = 1;
			_rain = 1;
		};
		case 99:
		{
			//stormy no rain
			_overcast = 1;
			_rain = 0;
		};
		default
		{
			//set rain random weather
			_overcast = _randomNum;
			if (_overcast > 0.7) then {
				_rain = _PARAM_Rain / 10;
			} else {
				_rain = 0;
			};
		};
	};

_windDir = round(random 360);
_windStr = floor(random 6) / 10;

//send weather info to clients
missionNamespace setVariable ["_weather", [_overcast, _rain, _windDir, _windStr]];
publicVariable "_weather";

_delay = 86400;
skipTime -24;
skipTime 24;
sleep 1;

simulWeatherSync;

//looping dynamic weather
while {true} do {
	private ["_weather","_overcastNext","_rainNext","_windDirNext","_windStrNext","_rain","_windDir","_windStr","_overcast"];

	sleep 1200 + round(random 1200);
		
	_weather = missionNamespace getVariable "_weather";

	_overcast = _weather select 0;
	_rain = _weather select 1;
	_windDir = _weather select 2;
	_windStr = _weather select 3;
	
	//get random weather
	_overcastNext = (_overcast + (round((random(0.2)-0.1) * 100)) / 100);
	if (_overcastNext > 1) then {_overcastNext = 1;};
	if (_overcastNext < 0.2) then {_overcastNext = 0.2;};
	if ((_overcastNext > 0.7) and (random 10) > 7) then {
		_rainNext = (_rain + (round((random(0.2)-0.1) * 100)) / 100);
	} else {
		_rainNext = 0;
	};
	if (_rainNext > 1) then {_rainNext = 1;};
	if (_rainNext < 0) then {_rainNext = 0;};
	if ((_PARAM_Rain == 0) or (_PARAM_Rain == 99)) then {_rainNext = 0;};
	_windDirNext = _windDir;
	_windStrNext = (_windStr + (round((random(0.2)-0.1) * 100)) / 100);
	if (_windStrNext > 0.7) then {_windStrNext = 0.7;};
	if (_windStrNext < 0) then {_windStrNext = 0;};

	missionNamespace setVariable ["_weather", [_overcastNext, _rainNext, _windDirNext, _windStrNext]];
	publicVariable "_weather";
	
	sleep 10;
	
	[900] remoteExec ["fnc_UpdateWeather"];
	
};