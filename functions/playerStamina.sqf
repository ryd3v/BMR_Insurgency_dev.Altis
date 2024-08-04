//Stamina
// Ryan Collins
if (hasinterface) then
    {
    waitUntil {!isnull player};
    player enableStamina false;
    player setCustomAimCoef 0;
    player addEventHandler ["Respawn", {player enableStamina  false}];
    player addEventHandler ["Respawn", {player setCustomAimCoef  0}];
    };