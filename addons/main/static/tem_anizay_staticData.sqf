private["_worldName"];
 _worldName = tolower(worldName);
 ["ALiVE SETTING UP MAP: tem_anizay"] call ALIVE_fnc_dump;
 ALIVE_Indexing_Blacklist = [];
 ALIVE_airBuildingTypes = [];
 ALIVE_militaryParkingBuildingTypes = [];
 ALIVE_militarySupplyBuildingTypes = [];
 ALIVE_militaryHQBuildingTypes = [];
 ALIVE_militaryAirBuildingTypes = [];
 ALIVE_civilianAirBuildingTypes = [];
 ALiVE_HeliBuildingTypes = [];
 ALIVE_militaryHeliBuildingTypes = [];
 ALIVE_civilianHeliBuildingTypes = [];
 ALIVE_militaryBuildingTypes = [];
 ALIVE_civilianPopulationBuildingTypes = [];
 ALIVE_civilianHQBuildingTypes = [];
 ALIVE_civilianPowerBuildingTypes = [];
 ALIVE_civilianCommsBuildingTypes = [];
 ALIVE_civilianMarineBuildingTypes = [];
 ALIVE_civilianRailBuildingTypes = [];
 ALIVE_civilianFuelBuildingTypes = [];
 ALIVE_civilianConstructionBuildingTypes = [];
 ALIVE_civilianSettlementBuildingTypes = [];
 if(tolower(_worldName) == "tem_anizay") then {
[ALIVE_mapBounds, worldName, 11000] call ALIVE_fnc_hashSet;
ALIVE_Indexing_Blacklist = ALIVE_Indexing_Blacklist + ["ca\structures_e\wall\wall_l\wall_l3_5m_ep1.p3d","a3\structures_f_exp\civilian\accessories\clothesline_01_f.p3d","a3\structures_f_exp\walls\hedges\hedge_01_s_2m_f.p3d","a3\structures_f_exp\walls\hedges\hedge_01_s_4m_f.p3d","ca\misc\betonl_velky.p3d","ca\structures_e\wall\wall_l\wall_l_mosque_1_ep1.p3d","ca\structures_e\wall\wall_l\wall_l_mosque_2_ep1.p3d","a3\structures_f_exp\infrastructure\bridges\bridgewooden_01_f.p3d","a3\structures_f_exp\industrial\sugarcanefactory_01\scf_01_pipe_end_f.p3d","a3\structures_f_exp\industrial\sugarcanefactory_01\scf_01_pipe_curve_f.p3d","a3\structures_f_exp\industrial\sugarcanefactory_01\scf_01_pipe_8m_high_f.p3d","a3\structures_f_exp\industrial\sugarcanefactory_01\scf_01_pipe_up_f.p3d","a3\structures_f_exp\industrial\sugarcanefactory_01\scf_01_pipe_24m_high_f.p3d","a3\structures_f_exp\industrial\sugarcanefactory_01\scf_01_pipe_curve_high_f.p3d","a3\structures_f\mil\fortification\hbarrierwall_corner_f.p3d","a3\structures_f\mil\fortification\hbarrierwall6_f.p3d","a3\structures_f\mil\fortification\hbarrierwall4_f.p3d","a3\structures_f\mil\fortification\hbarrier_big_f.p3d","a3\structures_f\ind\crane\crane_f.p3d","ca\structures_e\housea\a_mosque_big\a_mosque_big_wall_ep1.p3d","ca\structures_e\housea\a_mosque_big\a_mosque_big_wall_corner_ep1.p3d","a3\structures_f\ind\solarpowerplant\spp_panel_f.p3d","a3\structures_f_exp\walls\net\netfence_02_m_gate_v1_f.p3d","a3\structures_f_exp\industrial\sugarcanefactory_01\scf_01_pipe_24m_f.p3d","ca\buildings\podesta_s5.p3d","ca\structures_e\wall\wall_l\wall_l_mosque_2_ruins_ep1.p3d","ca\buildings\misc\stanek_1.p3d","ca\structures_e\misc\misc_interier\table_small_ep1.p3d","ca\buildings\misc\stanek_1c.p3d","ca\roads_e\runway\runway_end18_ep1.p3d"];
ALIVE_militaryBuildingTypes = ALIVE_militaryBuildingTypes + ["airport_tower","radar","bunker","cargo_house_v","cargo_patrol_","research","mil_wall","fortification","razorwire","dome","deerstand","vez"];
ALIVE_militaryParkingBuildingTypes = ALIVE_militaryParkingBuildingTypes + ["bunker","cargo_house_v","cargo_patrol_","research","bunker"];
ALIVE_militarySupplyBuildingTypes = ALIVE_militarySupplyBuildingTypes + ["barrack","cargo_hq_","miloffices","cargo_house_v","cargo_patrol_","research","barrack","mil_house","mil_controltower"];
ALIVE_militaryHQBuildingTypes = ALIVE_militaryHQBuildingTypes + ["barrack","cargo_hq_","miloffices","cargo_tower","barrack","mil_house","mil_controltower"];
ALIVE_airBuildingTypes = ALIVE_airBuildingTypes + ["hangar","hangar"];
ALIVE_civilianAirBuildingTypes = ALIVE_civilianAirBuildingTypes + ["hangar","runway_beton","runway_main","runway_secondary","ss_hangar","hangar_2","hangar","runway_beton","runway_end","runway_main","runway_secondary"];
ALIVE_civilianPopulationBuildingTypes = ALIVE_civilianPopulationBuildingTypes + ["church","hospital","amphitheater","chapel_v","households","hospital","houseblock","generalstore","house"];
ALIVE_civilianHQBuildingTypes = ALIVE_civilianHQBuildingTypes + ["offices","a_office01","a_office02","a_municipaloffice"];
ALIVE_civilianSettlementBuildingTypes = ALIVE_civilianSettlementBuildingTypes + ["church","hospital","amphitheater","chapel_v","households","hospital","houseblock","generalstore","house"];
ALIVE_civilianPowerBuildingTypes = ALIVE_civilianPowerBuildingTypes + ["dp_main","spp_t","pec_","powerstation","trafostanica"];
ALIVE_civilianCommsBuildingTypes = ALIVE_civilianCommsBuildingTypes + ["communication_f","ttowerbig_","illuminanttower","vysilac_fm","telek","tvtower"];
ALIVE_civilianMarineBuildingTypes = ALIVE_civilianMarineBuildingTypes + ["crane","lighthouse","nav_pier","pier_","crane","lighthouse","nav_pier","pier_","pier"];
ALIVE_civilianRailBuildingTypes = ALIVE_civilianRailBuildingTypes + ["rail_house","rail_station","rail_platform","rails_bridge","stationhouse"];
ALIVE_civilianFuelBuildingTypes = ALIVE_civilianFuelBuildingTypes + ["fuelstation","dp_bigtank","fuelstation","expedice","indpipe","komin","ind_stack_big","ind_tankbig","fuel_tank_big"];
ALIVE_civilianConstructionBuildingTypes = ALIVE_civilianConstructionBuildingTypes + ["wip","bridge_highway","ind_mlyn_01","ind_pec_01","wip","sawmillpen","workshop"];
};
