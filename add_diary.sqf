player createDiaryRecord ["Diary", ["3rd Party Credits","
	<br/>Original insurgency by pogoman, Fireball, and Kol9yN.
	<br/>Insurgency is based off the game mode created by the Project
	<br/>	Reality team, originally released for
	<br/>	Arma 2 Operation Arrowhead.
	<br/>
	<br/>----------------------------- Scripts -----------------------------
	<br/>EOS v1.98 by BangaBob (H8erMaker)
	<br/>=BTC=_revive v.98, =BTC= Logistics,
	<br/>=BTC= Quick Revive and =BTC=_TK_punishment
	<br/>	by BTC Giallustio
	<br/>TAW view Distance v1.4 by Tonic
	<br/>randomWeather2.sqf by Meatball.
	<br/>real_weather.sqf v1.3 Original Release by team code34
	<br/>	nicolas_boiteux@yahoo.fr.
	<br/>vehRespawn.sqf, and ICE_HUD by Iceman77
	<br/>repetitive_cleanup.sqf v1.7, player_markers.sqf v2.6,
	<br/>JW Custom Close Air Support v0.1b by JW Custom
	<br/>Traffic by MAD T.
	<br/>Randomly generated roadside IED's by brians200
	<br/>v1g Fast Rope by [STELS]Zealot
	<br/>x_reload by Xeno
	<br/>ghst_PutinBuild.sqf and ghst_PutinBuildIntel.sqf cores by Ghost
	<br/>ghst_ugvsupport.sqf by Ghost
	<br/>T-Helmetcam by Tajin
	<br/>HuntIR script v1.0 by Bardosy
	<br/>tky_evo_performance report by GITS Tankbuster
	<br/>SHK_buildingpos.sqf v0.12 and shk_taskmaster v0.44 by Shuko
	<br/>BTK Cargo Drop v1.92 by sxp2high
	<br/>zbe_cache_script_v4.6a by zorrobyte
	<br/>Bon's Infantry Recruitment Redux -- by Moser
	<br/>Mine Detector Script version alpha 0.6 by Lala14
	<br/>Fog script v1.62 by Rockhount[BAfH]
	<br/>ASOR Vehicle Selector v1.4 by Lecks
	<br/>INS_SuicideBomber.sqf recruit civilian modification by SupahG33K
	<br/>fn_Battle.sqf by Mikey74
	<br/>ADF_helipadLights.sqf by Whiztler
	<br/>Advanced Sling Loading by Duda
	<br/>
	<br/>-------------------------- Functions ----------------------------
	<br/>remove_carcass_fnc code by BIS
	<br/>Ambient radio chatter code by TPW
	<br/>BTC_m_fnc_only_server, BTC_AI_init and BTC_repair_wreck,
	<br/>	by BTC Giallustio
	<br/>fnc_ghst_build_positions and fnc_ghst_rand_position by Ghost
	<br/>X_fnc_returnVehicleTurrets by Joris-Jan van 't Land
	<br/>find_west_target_fnc inspired/based on example by Mattar_Tharkari in
	<br/>	BIS Community Forums
	<br/>rej_fnc_bezier by Rejenorst
	<br/>Boat push - v0.1  by BearBison
	<br/>find_civ_bomber_fnc by SupahG33K
	<br/>killed_ss_bmbr_fnc modified by SupahG33K
	<br/>INS_Brighter_Nights code by Ralian
	<br/>
	<br/>------------------------ Development --------------------------
	<br/>Thanks to BIS for such a great platform.
	<br/>Thanks to BIS Community and BIS Community Forums
	<br/>AJAX and Onion Gamers for hosting, testing and feedback.
	<br/>All the Black Mamba Rangers.
	<br/>Thanks to all the Forum members who provided feedback.
	<br/>Mr.Ripley for extensive long run testing, analyzing
	<br/>	and feedback especially in Headless Client addition.
	<br/>BMR_Insurgency_v1_44 release in Honor and Memory of
	<br/>	Robert Lynn Lewellen. AKA Spectrum Warrior of Elite Arma Warriors
	<br/>	who exposed me to scripting, Insurgency and Evolution game modes back in Arma 1.
	<br/>
"]];
player createDiaryRecord ["Diary", ["Credits","
	<br/>Mission Author - Jigsor =BMR=
	<br/>
	<br/>OPTRE Port by Costno.
	<br/>WW2 Insurgency Green conversion by LT.DANG.
	<br/>Many original functions and scripts by Jigsor =BMR=.
	<br/>Several functions and scripts by BTC Giallustio and Ghost
	<br/>were modified by Jigsor =BMR=.
	<br/><br/><img image='images\bmrbw.paa' widwidth='256' height='256'/>
	<br/>If you feel graciously appreciative to the mission author you may consider clicking here to copy link to clipboard: <execute expression=""copyToClipboard 'https://www.paypal.me/MissionDev';"">https://www.paypal.me/MissionDev</execute> and donating.
"]];
player createDiaryRecord ["Diary", ["Server Rules","
	<br/>1. No teamkilling, revenge killing or retributive actions regarding such outside of the teamkill punish option.
	<br/>2. Unsportsmanlike conduct will not be permitted on the servers, such as any genuine personal attacks, threats, stalking, or related actions.
	<br/>3. No pretending to be an admin.
	<br/>4. No unauthorized access of full admin privileges.
	<br/>5. No purposeful destruction of usable (operable/non-damaged) vehicles at base.
	<br/>6. Lighting up large areas without coordination with fellow BLUFOR is ill-advised and frowned upon. Repeated instances will result in verbal requests to move. Should requests be ignored the individual may be subject to teleport to relocate them.
	<br/>
	<br/>The following are not allowed regarding OPFOR:
	<br/>1. Bypassing OPFOR arsenal/vehicle restrictions through use of a BLUFOR slot/contact.
	<br/>2. Those providing equipment or other assets to OPFOR while on BLUFOR are subject to the same rule listed previously.
"]];

private _serverName = format ["%1", serverName];
private _briefingName = format ["%1", briefingName];
private _worldName = format [".%1", worldName];
private _missionName = _briefingName + _worldName;
private _info ="<br/><font size='20'>SERVER INFO</font><br/><br/>Server Name: ";
_info = _info + _serverName;
_info = _info + "<br/><br/>Mission Name: ";
_info = _info + _missionName;

_info = _info +"
	<br/>
	<br/><font size='20'>SETTINGS</font>
	<br/>
	<br/>Press H key for View Distance Settings, Digital Heading, Status Hud, Ear Plugs, Ambient Wild Life Toggle and Engine Text Chatter Toggle.
	<br/>Status Hud Icon Legend:
	<br/><br/><img image='\A3\Weapons_F\Data\UI\gear_item_compass_ca.paa' widwidth='32' height='32'/>--  Local Player/Vehicle General Compass Heading
	<br/><br/>  <img image='images\fps.paa' widwidth='16' height='16'/>   --  Frames per Second
	<br/><br/>  <img image='images\health.paa' widwidth='16' height='16'/>   --  Health
	<br/><br/>  <img image='images\fatigue.paa' widwidth='16' height='16'/>   --  Stamina
	<br/>
	<br/>Join, Create, or Leave Squads/Groups with U key menu. Only squad leaders can recuit AI if option enabled by admin.
	<br/>
	<br/>Supported PIP live feeds from the helmet-cameras of their fellow group members. Requires Tactical Glasses and helmet with camera. * Key activates camera and switches to next group member. Alt+* key combo deactivates camera. Shift+* key combo toggles size of the display.
	<br/>
	<br/>Press F3 or Assigned User Action 3 to reverse planes when stoped.
	<br/>
	<br/><font size='20'>SUPPORT</font>
	<br/>
	<br/>JTAC and Team leaders/Squad leaders can call for Close Air Support. UAV Operators can call for air dropped UGV and launch parachute camera by firing a white flare from 203 grenade launcher. Engineer can build a FARP to repair, rearm and flip vehicles if he has a Bobcat or Repair Truck close by. All players can use the actions on the FARP. Medics can build a small sandbag wall to provide cover. Sniper, Marksmen and Spotter classes can enable/disable bullet cam. CAS Operator/Team Leader (leader slot of the biggest group in lobby) can call for squad heli evac. The heli will not leave until all group members are aboard.
	<br/>
	<br/><font size='20'>VEHICLES</font>
	<br/>
	<br/>Vehicles from base will respawn if destroyed. All Blufor Mobile Head Quarters have Virtual Arsenal. Opfor MHQ has deploy option to move ammo crates to MHQ location. The Bobcat can Tow other vehicles. GhostHawks can lift light vehicles. Mohawk and Huron can lift heavy and light vehicles. Earn a Vehicle Reward of any type by destroying an ammo cache if Enemy Armor Probability parameter is set above 0%. After destroying ammo cache, scroll and click Vehicle Reward action. Mapclick desired position for reward. Wait until vehicle icon appears in top left corner. Click icon to view full list of available vehicles. Scroll then click on vehicle to view some information about it. After selection click close button and look for Vehicle Reward map marker to find the vehicle. You may postpone reward at vehicle menu by pressing escape. Be warned if you die before you spawn the vehicle you will loose the reward action.
	<br/>
	<br/>Vehicles obtained through Vehicle Reward will not respawn.
	<br/>
	<br/>Non DLC owner can enter driver or gunner of most DLC vehicles without restriction - complete vehicle list is W.I.P. Only applies to English A3 versioned games.
	<br/>
	<br/><font size='20'>RESPAWN</font>
	<br/>
	<br/> The following Respawn, MHQ, and Teleport options can vary depending lobby parameter -Revive system- settings.
	<br/>
	<br/>Blufor -- Can choose to respawn at BASE, MHQ_1, MHQ_2, or MHQ_3 if no one revives you. You may also choose teleport to MHQs or Halo from Flag Pole at base.
	<br/>
	<br/>Opfor -- Choose Base to respawn in vicinity of Blufor players If no Blufor are available to spawn near you will spawn at MHQ if MHQ system is enabled or Choose Opfor_MHQ to spawn on your MHQ. If MHQ system enabled, teleport to MHQ from base flagpole is available. There is a lift chopper available where your MHQ respawns.
	<br/>
	<br/>While waiting for a revive you can spectate and control camera with usual movement controls.
	<br/>
	<br/>To have a fully restored loadout/kit after respawn or revive, use scroll action Save Respawn Loadout at main ammo box. If this action is not available then server admin has opted for reload magazine to save kit for progressive depleation.
	<br/>
	<br/><font size='20'>MEDICAL</font>
	<br/>
	<br/>With BTC's Revive and Quick Revive sytems you need a First Aid Kit (F.A.K.) to revive a player. If you are medic then you need at least one F.A.K. and a medkit for unlimited revives and heals. Only medics can heal themselves or others to %100. Any other player type can heal themselves or someone else to 75% with a F.A.K. Admin can set mission to allow only medics to revive. With other medical systems such as ACE_3 its up to server admin to customize medical details.
	<br/>
	<br/><font size='20'>GAS GRENADES</font>
	<br/>
	<br/>Vanilla Arma 3 Yellow hand and GL smoke grenades are Toxic and can kill players or AI. Has no affect on base.
	<br/>
	<br/>For immunity wear A3 Nato Pilot Helmet, Contact DLC gas masks/respirators or Full Faced Viper Helmets.
	<br/>
	<br/>Moded support for gas masks include masks from Hidden Identity Pack v2, Identity Pack v3, FFAA, NATO SF and Russian Spetsnaz Weapons, FM-12 strapless from AVON FM12 Respirator Pack, OPTRE_UNSC_CH252_Helmet_Vacuum_DES and OPTRE_UNSC_ODST_Helmet_CBRN from Operation TREBUCHET.
	<br/>
	<br/>Adim can disable gas grenades from lobby parameter.
	<br/>
	<br/><font size='20'>TRANSFER / HALO FLAG POLE ACTIONS</font>
	<br/>
	<br/>Transfer to MHQ_1, MHQ_2, and MHQ_3. This will teleport you to an emty seat inside of these vehicles where as transferring to MHQs from respawn menu will put you outside of the vehicles.
	<br/>
	<br/>HALO -- set drop height to desired height and/or assign a key to cut away ropes incase chute gets hung on an object. You can skip this step and close the dialoge box. In this case the default drop height is 500, no key is assigned to cut away ropes and chute will auto open at 150 meters.
	<br/>
	<br/>Click on map the location you wish to HALO. Do not open or click any other user interface at this step. It will result in HALO at undesired location.
	<br/>
	<br/>A parachute will automatically be provided for you and will move your back pack to ventril position. Back pack will be returned to back after landing.
	<br/>
	<br/>If windy, head into wind with forward key until touchdown to increase survivability.
	<br/>
	<br/><font size='20'>Win - Loose</font>
	<br/>
	<br/>Blufor -- To Win you must complete at least one side objective then capture all zones. After all zones are captured one more side objective must be completed.
	<br/>
	<br/>Opfor -- You cannot win the mission and keep in mind this is asymmetrical warfare. However, you can win some side obectives and make it very difficult for Blufor to complete other side objectives and main objective.
	<br/>
	<br/><font size='20'>SERVER ADMINS</font>
	<br/>
	<br/>Gain access to Breifing ADMINISTRATOR TOOLS panel by logging in as Admin. The panel may take a minute to appear. Once the panel appears in breifing section it will remain if loged out until you rejoin the game. This way multiple Admins may have access to the tools.
";
player createDiaryRecord ["Diary", ["INFO", _info]];

player createDiaryRecord ["Diary", ["Briefing","Gather Intel on Ammo Cache location by picking up suitcases. Destroy Ammo Caches with satchel or demo charges and Earn a vehicle reward of your choice. Clear all red zones of enemy forces. Complete random objectives. Get Some!"]];