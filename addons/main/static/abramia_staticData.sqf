private["_worldName"];

_worldName = tolower(worldName);

["ALiVE SETTING UP MAP: abramia"] call ALIVE_fnc_dump;

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

ALiVE_mapCompositionType = "Woodland";

if (tolower(_worldName) == "abramia") then {
    ALIVE_Indexing_Blacklist = ALIVE_Indexing_Blacklist + [
        "ca\mp_armory\misc\concrete_wall\concrete_wall.p3d",
        "ca\buildings\misc\zed2_civil.p3d",
        "ca\misc3\fort_bagfence_round.p3d",
        "ca\structures_e\misc\misc_interier\table_ep1.p3d",
        "a3\structures_f\walls\cncbarrier_stripes_f.p3d",
        "a3\structures_f_epc\civ\accessories\bench_01_f.p3d",
        "a3\structures_f_epc\civ\accessories\tableplastic_01_f.p3d",
        "a3\structures_f\civ\lamps\lampshabby_off_f.p3d",
        "a3\structures_f\walls\indfnc_9_f.p3d",
        "a3\structures_f\walls\indfnc_pole_f.p3d",
        "a3\structures_f\ind\transmitter_tower\ttowersmall_2_f.p3d",
        "ca\misc3\fort_bagfence_long.p3d",
        "a3\structures_f_epc\civ\camping\sunshade_04_f.p3d",
        "a3\structures_f\walls\indfnc_3_d_f.p3d",
        "a3\structures_f\walls\indfnc_corner_f.p3d",
        "a3\structures_f\walls\indfnc_3_f.p3d",
        "a3\structures_f\walls\indfnc_3_hole_f.p3d",
        "ca\buildings\ruins\sara_domek_hospoda_ruins.p3d",
        "ca\structures_e\misc\misc_interier\bench_ep1.p3d",
        "ca\buildings\misc\zed_dira_civil.p3d",
        "a3\structures_f_epc\civ\accessories\bench_02_f.p3d",
        "a3\structures_f\items\vessels\bucketnavy_f.p3d",
        "ca\structures\house\church_05r\church_05r.p3d",
        "ca\buildings\misc\zed.p3d",
        "ca\buildings\misc\zed_dira.p3d",
        "ca\buildings2\misc_cargo\misc_cargo1g.p3d",
        "ca\buildings2\shed_small\shed_m02.p3d",
        "ca\buildings\misc\zed_podplaz.p3d",
        "ca\buildings\castle\helfenburk_ruins.p3d",
        "a3\structures_f\mil\flags\mast_f.p3d",
        "ca\buildings\misc\stoplight01.p3d",
        "ca\misc\misc_tyreheap.p3d",
        "ca\roads_e\sidewalks\sw_c_body_6m_ep1.p3d",
        "ca\roads_e\sidewalks\sw_c_end_l_ep1.p3d",
        "a3\structures_f\civ\sportsgrounds\goal_f.p3d",
        "ca\roads_e\sidewalks\sw_c_end_r_ep1.p3d",
        "ca\roads_e\sidewalks\sw_c_crosst_ep1.p3d",
        "ca\roads_e\sidewalks\sw_c_turn_ep1.p3d",
        "a3\structures_f\civ\sportsgrounds\tribune_f.p3d",
        "a3\structures_f\civ\lamps\lampharbour_off_f.p3d",
        "ca\misc3\tent_west.p3d",
        "ca\buildings\bouda_plech.p3d"
    ];

    ALIVE_militaryBuildingTypes = ALIVE_militaryBuildingTypes + [
        "a3\structures_f\ind\shed\i_shed_ind_f.p3d",
        "a3\structures_f\mil\offices\miloffices_v1_f.p3d",
        "ca\buildings\ammostore2.p3d",
        "ca\misc_e\fort_watchtower_ep1.p3d",
        "ca\buildings\garaz_bez_tanku.p3d",
        "ca\buildings\hangar_2.p3d",
        "ca\roads_pmc\bridge\bridge_asf_pmc.p3d",
        "a3\structures_f\walls\cncbarriermedium4_f.p3d",
        "ca\misc3\fort_watchtower.p3d",
        "ca\buildings\army_hut2_int.p3d",
        "a3\structures_f\mil\tenthangar\tenthangar_v1_f.p3d",
        "a3\structures_f\ind\airport\airport_tower_f.p3d",
        "ca\buildings\fuelstation_army.p3d",
        "a3\structures_f\ind\transmitter_tower\ttowersmall_1_f.p3d",
        "ca\structures_e\mil\mil_barracks_i_ep1.p3d",
        "ca\structures_e\mil\mil_repair_center_ep1.p3d",
        "ca\buildings\tents\fortress_01.p3d",
        "ca\buildings\tents\fortress_02.p3d",
        "a3\structures_f\mil\radar\radar_small_f.p3d",
        "ca\buildings\telek1.p3d",
        "a3\structures_f\research\research_hq_f.p3d",
        "a3\structures_f\research\research_house_v1_f.p3d",
        "a3\structures_f\mil\bunker\bunker_f.p3d",
        "a3\roads_f\runway\runwaylights\flush_light_red_f.p3d",
        "ibr\abramia_objects\blastpad2.p3d",
        "ibr\abramia_objects\runway_end9i.p3d",
        "ca\roads2\runway_main.p3d",
        "ibr\abramia_objects\runway_end27i.p3d",
        "ca\misc_e\fortified_nest_big_ep1.p3d",
        "a3\structures_f\ind\reservoirtank\reservoirtank_airport_f.p3d",
        "a3\structures_f\ind\transmitter_tower\ttowerbig_2_f.p3d",
        "a3\structures_f\ind\shed\shed_small_f.p3d",
        "ca\misc3\antenna.p3d",
        "a3\structures_f\ind\transmitter_tower\ttowerbig_1_f.p3d",
        "ca\structures_e\mil\mil_controltower_ep1.p3d",
        "dbe1\models_dbe1\zakladna\pristresek_camo.p3d",
        "ca\buildings\budova4_in.p3d",
        "dbe1\models_dbe1\zakladna\stan_01.p3d",
        "ca\misc_e\hlidac_budka_ep1.p3d",
        "ca\misc_e\barrack2_ep1.p3d",
        "a3\structures_f\ind\cargo\cargo20_light_blue_f.p3d",
        "a3\structures_f\ind\transmitter_tower\communication_f.p3d",
        "ca\buildings\tents\camo_box.p3d",
        "a3\structures_f\ind\windpowerplant\wpp_turbine_v2_f.p3d",
        "a3\structures_f\research\dome_big_f.p3d",
        "a3\structures_f\ind\transmitter_tower\tbox_f.p3d",
        "a3\structures_f\research\dome_small_f.p3d",
        "ca\structures\mil\mil_controltower.p3d",
        "ca\buildings2\ind_garage01\ind_garage01.p3d"
    ];

    ALIVE_militaryParkingBuildingTypes = ALIVE_militaryParkingBuildingTypes + [
        "a3\structures_f\mil\offices\miloffices_v1_f.p3d",
        "ca\buildings\garaz_bez_tanku.p3d",
        "ca\buildings\hangar_2.p3d",
        "a3\structures_f\mil\tenthangar\tenthangar_v1_f.p3d",
        "ca\structures_e\mil\mil_barracks_i_ep1.p3d",
        "a3\structures_f\ind\shed\shed_small_f.p3d",
        "ca\structures_e\mil\mil_controltower_ep1.p3d",
        "dbe1\models_dbe1\zakladna\pristresek_camo.p3d",
        "ca\buildings\tents\camo_box.p3d",
        "a3\structures_f\research\dome_big_f.p3d",
        "a3\structures_f\research\dome_small_f.p3d",
        "ca\structures\mil\mil_controltower.p3d"
    ];

    ALIVE_militarySupplyBuildingTypes = ALIVE_militarySupplyBuildingTypes + [
        "a3\structures_f\ind\shed\i_shed_ind_f.p3d",
        "a3\structures_f\mil\offices\miloffices_v1_f.p3d",
        "ca\buildings\ammostore2.p3d",
        "a3\structures_f\mil\barracks\u_barracks_v2_f.p3d",
        "ca\buildings\garaz_bez_tanku.p3d",
        "ca\buildings\hangar_2.p3d",
        "ca\buildings\army_hut_int.p3d",
        "a3\structures_f\mil\tenthangar\tenthangar_v1_f.p3d",
        "a3\structures_f\ind\airport\airport_tower_f.p3d",
        "ca\structures_e\mil\mil_barracks_i_ep1.p3d",
        "a3\structures_f\mil\radar\radar_small_f.p3d",
        "ca\buildings\telek1.p3d",
        "a3\structures_f\research\research_hq_f.p3d",
        "a3\structures_f\research\research_house_v1_f.p3d",
        "a3\structures_f\ind\shed\shed_small_f.p3d",
        "ca\structures_e\mil\mil_controltower_ep1.p3d",
        "dbe1\models_dbe1\zakladna\pristresek_camo.p3d",
        "dbe1\models_dbe1\zakladna\stan_01.p3d",
        "ca\misc3\tent2_west.p3d",
        "ca\misc_e\barrack2_ep1.p3d",
        "a3\structures_f\ind\cargo\cargo20_light_blue_f.p3d",
        "a3\structures_f\ind\transmitter_tower\communication_f.p3d",
        "ca\buildings\tents\camo_box.p3d",
        "a3\structures_f\research\dome_big_f.p3d",
        "a3\structures_f\research\dome_small_f.p3d",
        "ca\structures\mil\mil_controltower.p3d",
        "ca\buildings2\ind_garage01\ind_garage01.p3d"
    ];

    ALIVE_militaryHQBuildingTypes = ALIVE_militaryHQBuildingTypes + [
        "a3\structures_f\ind\shed\i_shed_ind_f.p3d",
        "a3\structures_f\mil\offices\miloffices_v1_f.p3d",
        "a3\structures_f\mil\barracks\u_barracks_v2_f.p3d",
        "a3\structures_f\ind\airport\airport_tower_f.p3d",
        "a3\structures_f\research\research_hq_f.p3d",
        "a3\structures_f\ind\transmitter_tower\ttowerbig_1_f.p3d",
        "ca\structures_e\mil\mil_controltower_ep1.p3d",
        "a3\structures_f\research\dome_big_f.p3d",
        "a3\structures_f\research\dome_small_f.p3d",
        "ca\structures\mil\mil_controltower.p3d"
    ];

    ALIVE_airBuildingTypes = ALIVE_airBuildingTypes + [
        "a3\structures_f\mil\tenthangar\tenthangar_v1_f.p3d",
        "a3\roads_f\runway\runwaylights\flush_light_red_f.p3d",
        "ibr\abramia_objects\blastpad2.p3d",
        "ibr\abramia_objects\runway_end9i.p3d",
        "ca\roads2\runway_main.p3d",
        "ibr\abramia_objects\runway_end27i.p3d",
        "ca\roads2\runway_poj_t_2.p3d",
        "ca\roads\runway_end9.p3d",
        "ca\roads\runway_end27.p3d"
    ];

    ALIVE_militaryAirBuildingTypes = ALIVE_militaryAirBuildingTypes + [
        "a3\structures_f\mil\tenthangar\tenthangar_v1_f.p3d",
        "a3\roads_f\runway\runwaylights\flush_light_red_f.p3d",
        "ibr\abramia_objects\blastpad2.p3d",
        "ibr\abramia_objects\runway_end9i.p3d",
        "ca\roads2\runway_main.p3d",
        "ibr\abramia_objects\runway_end27i.p3d",
        "ca\roads2\runway_poj_t_2.p3d",
        "ca\roads\runway_end9.p3d",
        "ca\roads\runway_end27.p3d"
    ];

    ALIVE_civilianAirBuildingTypes = ALIVE_civilianAirBuildingTypes + [];

    ALIVE_heliBuildingTypes = ALIVE_heliBuildingTypes + [];

    ALIVE_militaryHeliBuildingTypes = ALIVE_militaryHeliBuildingTypes + [];

    ALIVE_civilianHeliBuildingTypes = ALIVE_civilianHeliBuildingTypes + [];

    ALIVE_civilianPopulationBuildingTypes = ALIVE_civilianPopulationBuildingTypes + [
        "a3\structures_f\households\house_big01\u_house_big_01_v1_f.p3d",
        "a3\structures_f\households\house_small01\u_house_small_01_v1_f.p3d",
        "a3\structures_f\households\house_small02\u_house_small_02_v1_dam_f.p3d",
        "a3\structures_f\dominants\lighthouse\lighthouse_f.p3d",
        "a3\structures_f\ind\shed\i_shed_ind_f.p3d",
        "a3\structures_f\households\house_small01\i_house_small_01_v3_f.p3d",
        "a3\structures_f\households\house_big02\i_house_big_02_v1_f.p3d",
        "a3\structures_f\ind\carservice\carservice_f.p3d",
        "a3\structures_f\households\house_big01\i_house_big_01_v1_f.p3d",
        "ca\structures\ind_sawmill\ind_sawmillpen.p3d",
        "ca\structures\ind_sawmill\ind_sawmill.p3d",
        "a3\structures_f\households\house_small03\i_house_small_03_v1_f.p3d",
        "a3\structures_f\households\house_big02\u_house_big_02_v1_f.p3d",
        "a3\structures_f\households\slum\slum_house03_f.p3d",
        "a3\structures_f\households\house_shop01\u_shop_01_v1_f.p3d",
        "a3\structures_f\households\slum\slum_house02_f.p3d",
        "a3\structures_f\households\house_shop02\i_shop_02_v2_f.p3d",
        "a3\structures_f\households\house_shop01\i_shop_01_v3_f.p3d",
        "a3\structures_f\households\house_big01\i_house_big_01_v3_f.p3d",
        "a3\structures_f\civ\chapels\chapel_v1_f.p3d",
        "a3\structures_f\civ\belltowers\belltower_02_v1_f.p3d",
        "a3\structures_f\households\house_big02\i_house_big_02_v2_f.p3d",
        "a3\structures_f\households\house_small02\u_house_small_02_v1_f.p3d",
        "a3\structures_f\households\house_small02\i_house_small_02_v1_f.p3d",
        "a3\structures_f\households\house_big01\i_house_big_01_v2_f.p3d",
        "a3\structures_f\households\house_small01\i_house_small_01_v2_dam_f.p3d",
        "a3\structures_f\households\house_small02\i_house_small_02_v2_f.p3d",
        "ca\buildings2\ind_workshop01\ind_workshop01_l.p3d",
        "ca\structures_e\housec\house_c_4_ep1.p3d",
        "a3\structures_f\households\wip\unfinished_building_02_f.p3d",
        "a3\structures_f\households\wip\unfinished_building_01_f.p3d",
        "ca\structures\nav_pier\nav_pier_c_90.p3d",
        "ca\structures\nav_pier\nav_pier_f_17.p3d",
        "ca\structures\nav_pier\nav_pier_c_t15.p3d",
        "ca\structures\nav_pier\nav_pier_m_end.p3d",
        "ca\buildings\deutshe_mini.p3d",
        "a3\structures_f\households\slum\slum_house01_f.p3d",
        "a3\structures_f\households\stone_big\i_stone_housebig_v3_f.p3d",
        "a3\structures_f\households\stone_shed\i_stone_shed_v2_f.p3d",
        "a3\structures_f\households\stone_shed\i_stone_shed_v3_f.p3d",
        "a3\structures_f\households\stone_shed\i_stone_shed_v1_f.p3d",
        "a3\structures_f\households\stone_big\i_stone_housebig_v1_f.p3d",
        "a3\structures_f\households\stone_big\i_stone_housebig_v2_f.p3d",
        "ca\structures\house\a_office01\a_office01.p3d",
        "ca\structures\barn_w\barn_w_02.p3d",
        "ca\structures\barn_w\barn_w_01.p3d",
        "a3\structures_f\households\addons\i_garage_v1_f.p3d",
        "ca\buildings\sara_domek_zluty.p3d",
        "ca\structures_e\housec\house_c_5_ep1.p3d",
        "ca\structures_e\housec\house_c_5_v3_ep1.p3d",
        "ca\buildings2\shed_small\shed_w02.p3d",
        "ca\structures\nav_boathouse\nav_boathouse_pierl.p3d",
        "a3\structures_f\households\house_shop02\i_shop_02_v1_f.p3d",
        "ca\buildings2\a_crane_02\crane_rails.p3d",
        "ca\buildings2\a_crane_02\a_crane_02b.p3d",
        "ca\structures\shed_ind\shed_ind02.p3d",
        "ca\buildings2\a_crane_02\a_crane_02a.p3d",
        "ca\structures_e\housec\house_c_5_v1_ep1.p3d",
        "ca\buildings\kulna.p3d",
        "a3\structures_f\households\addons\i_addon_02_v1_f.p3d",
        "ca\buildings\hotel.p3d",
        "a3\structures_f\civ\offices\offices_01_v1_f.p3d",
        "ca\structures_e\housea\a_stationhouse\a_stationhouse_ep1.p3d",
        "a3\structures_f\households\house_shop02\u_shop_02_v1_f.p3d",
        "ca\structures\a_municipaloffice\a_municipaloffice.p3d",
        "ca\structures_e\misc\shed_w02_ep1.p3d",
        "ca\structures_e\misc\shed_m01_ep1.p3d",
        "ca\structures_pmc\misc\shed\shed_w02_pmc.p3d",
        "ca\buildings\sara_domek_vilka.p3d",
        "ca\structures\house\housev2\housev2_02_interier.p3d",
        "ca\buildings\sara_domek_zluty_bez.p3d",
        "ca\buildings\sara_domek_rosa.p3d",
        "ca\buildings\sara_domek05.p3d",
        "ca\buildings\sara_domek03.p3d",
        "ca\structures\house\housev\housev_2l.p3d",
        "ca\buildings\ryb_domek.p3d",
        "ca\buildings\hotel_riviera2.p3d",
        "ca\buildings\hotel_riviera1.p3d",
        "ca\buildings\sara_domek_sedy.p3d",
        "ca\buildings\dum_istan3_hromada2.p3d",
        "dbe1\models_dbe1\vysilac\vysilac_budova.p3d",
        "ca\buildings2\ind_workshop01\ind_workshop01_01.p3d",
        "ca\buildings2\barn_metal\barn_metal.p3d",
        "dbe1\models_dbe1\vysilac\vysilac_chodba.p3d",
        "ca\structures_e\ind\ind_fuelstation\ind_fuelstation_shed_ep1.p3d",
        "ca\structures_e\ind\ind_fuelstation\ind_fuelstation_build_ep1.p3d",
        "ca\structures_e\ind\ind_fuelstation\ind_fuelstation_feed_ep1.p3d",
        "a3\structures_f\mil\radar\radar_small_f.p3d",
        "ca\buildings2\misc_cargo\misc_cargo1e.p3d",
        "ca\buildings2\misc_waterstation\misc_waterstation.p3d",
        "ca\buildings\sara_domek01.p3d",
        "ca\buildings\sara_domek02.p3d",
        "ca\buildings\dum_olezlina.p3d",
        "ca\buildings\cihlovej_dum_in.p3d",
        "ca\buildings\dum_rasovna.p3d",
        "a3\structures_f\dominants\hospital\hospital_main_f.p3d",
        "a3\structures_f\dominants\hospital\hospital_side2_f.p3d",
        "a3\structures_f\dominants\hospital\hospital_side1_f.p3d",
        "ca\buildings\castle\helfenburk_budova2.p3d",
        "ca\buildings\orlhot.p3d",
        "ca\buildings\castle\helfenburk_cimburi.p3d",
        "ca\buildings\castle\helfenburk.p3d",
        "a3\structures_f\ind\reservoirtank\reservoirtower_f.p3d",
        "a3\structures_f\ind\shed\u_shed_ind_f.p3d",
        "a3\structures_f\households\house_small01\i_house_small_01_v1_f.p3d",
        "a3\structures_f\ind\dieselpowerplant\dp_bigtank_f.p3d",
        "a3\structures_f\ind\dieselpowerplant\dp_mainfactory_f.p3d",
        "a3\structures_f\ind\dieselpowerplant\dp_transformer_f.p3d",
        "a3\structures_f\ind\dieselpowerplant\dp_smalltank_f.p3d",
        "ca\structures_e\housec\house_c_5_v2_ep1.p3d",
        "ca\structures_e\housec\house_c_11_ep1.p3d",
        "ca\buildings\bouda2_vnitrek.p3d",
        "ca\buildings2\ind_cementworks\ind_vysypka\ind_vysypka.p3d",
        "a3\structures_f\households\house_shop02\i_shop_02_v3_f.p3d",
        "ca\structures\house\housev2\housev2_04.p3d",
        "ca\buildings\garaz.p3d",
        "a3\structures_f\households\stone_small\i_stone_housesmall_v1_f.p3d",
        "a3\structures_f\households\addons\i_garage_v2_f.p3d",
        "a3\structures_f\households\addons\metal_shed_f.p3d",
        "ca\structures\house\a_office02\a_office02.p3d",
        "ca\buildings2\ind_workshop01\ind_workshop01_04.p3d",
        "a3\structures_f\ind\airport\airport_right_f.p3d",
        "a3\structures_f\ind\airport\airport_left_f.p3d",
        "a3\structures_f\ind\airport\airport_center_f.p3d",
        "ca\structures\house\housev\housev_1l1.p3d",
        "ca\structures\house\housev\housev_3i2.p3d",
        "ca\structures\house\housev\housev_1l2.p3d",
        "ca\buildings2\a_generalstore_01\a_generalstore_01a.p3d",
        "ca\structures_e\ind\ind_garage01\ind_garage01_ep1.p3d",
        "ca\structures\house\housebt\houseb_tenement.p3d",
        "a3\structures_f\households\house_big02\i_house_big_02_v3_f.p3d",
        "a3\structures_f\ind\powerlines\powlines_transformer_f.p3d",
        "ca\structures_e\housek\house_k_7_dam_ep1.p3d",
        "ca\buildings2\a_pub\a_pub_01.p3d",
        "a3\structures_f\dominants\wip\wip_f.p3d",
        "ca\buildings2\a_statue\a_statue02.p3d",
        "ca\structures\house\a_stationhouse\a_stationhouse.p3d",
        "ca\buildings2\ind_workshop01\ind_workshop01_02.p3d",
        "ca\buildings2\ind_workshop01\ind_workshop01_03.p3d",
        "ca\buildings2\houseblocks\houseblock_c\houseblock_c1.p3d",
        "ca\buildings2\houseblocks\houseblock_c\houseblock_c2.p3d",
        "ca\buildings\zalchata.p3d",
        "ca\structures\shed\shed_small\shed_w4.p3d",
        "ca\buildings2\shed_small\shed_m03.p3d",
        "ca\buildings2\shed_small\shed_w03.p3d",
        "ca\buildings2\shed_small\shed_w01.p3d",
        "ca\buildings2\shed_small\shed_m01.p3d",
        "ca\buildings\stanice.p3d",
        "ca\buildings\statek_hl_bud.p3d",
        "a3\structures_f\households\house_small01\u_house_small_01_v1_dam_f.p3d",
        "ca\buildings\sara_domek_hospoda.p3d",
        "ca\buildings\sara_stodola3.p3d",
        "ca\buildings\sara_hasic_zbroj.p3d",
        "ca\buildings2\houseblocks\houseblock_c\houseblock_c3.p3d",
        "ca\buildings2\houseblocks\houseblock_b\houseblock_b5.p3d",
        "ca\buildings\dum_mesto2l.p3d",
        "ca\buildings\dum_mesto3.p3d",
        "ca\buildings\deutshe.p3d",
        "ca\buildings\dum_mesto2.p3d",
        "ca\buildings2\houseblocks\houseblock_b\houseblock_b3.p3d",
        "ca\buildings\dumruina_mini.p3d",
        "ca\buildings2\houseblocks\houseblock_b\houseblock_b4.p3d",
        "ca\buildings\dum_mesto.p3d",
        "ca\buildings\statek_kulna.p3d",
        "ca\structures\house\housev2\housev2_01a.p3d"
    ];

    ALIVE_civilianHQBuildingTypes = ALIVE_civilianHQBuildingTypes + [
        "a3\structures_f\households\house_big01\u_house_big_01_v1_f.p3d",
        "a3\structures_f\households\house_small01\u_house_small_01_v1_f.p3d",
        "a3\structures_f\ind\shed\i_shed_ind_f.p3d",
        "a3\structures_f\households\house_small01\i_house_small_01_v3_f.p3d",
        "a3\structures_f\households\house_big02\i_house_big_02_v1_f.p3d",
        "a3\structures_f\households\house_big01\i_house_big_01_v1_f.p3d",
        "a3\structures_f\households\house_big02\u_house_big_02_v1_f.p3d",
        "a3\structures_f\households\house_shop01\u_shop_01_v1_f.p3d",
        "a3\structures_f\households\house_shop02\i_shop_02_v2_f.p3d",
        "a3\structures_f\households\house_shop01\i_shop_01_v3_f.p3d",
        "a3\structures_f\households\house_big01\i_house_big_01_v3_f.p3d",
        "a3\structures_f\civ\chapels\chapel_v1_f.p3d",
        "a3\structures_f\households\house_big02\i_house_big_02_v2_f.p3d",
        "a3\structures_f\households\house_small02\i_house_small_02_v1_f.p3d",
        "a3\structures_f\households\house_big01\i_house_big_01_v2_f.p3d",
        "a3\structures_f\households\house_small01\i_house_small_01_v2_dam_f.p3d",
        "a3\structures_f\households\house_small02\i_house_small_02_v2_f.p3d",
        "ca\structures_e\housec\house_c_4_ep1.p3d",
        "a3\structures_f\households\stone_big\i_stone_housebig_v3_f.p3d",
        "a3\structures_f\households\stone_big\i_stone_housebig_v1_f.p3d",
        "a3\structures_f\households\stone_big\i_stone_housebig_v2_f.p3d",
        "ca\structures\house\a_office01\a_office01.p3d",
        "ca\structures\barn_w\barn_w_01.p3d",
        "ca\buildings\sara_domek_zluty.p3d",
        "ca\structures_e\housec\house_c_5_ep1.p3d",
        "ca\structures_e\housec\house_c_5_v3_ep1.p3d",
        "a3\structures_f\households\house_shop02\i_shop_02_v1_f.p3d",
        "ca\structures\shed_ind\shed_ind02.p3d",
        "ca\structures_e\housec\house_c_5_v1_ep1.p3d",
        "ca\buildings\hotel.p3d",
        "a3\structures_f\civ\offices\offices_01_v1_f.p3d",
        "ca\structures_e\housea\a_stationhouse\a_stationhouse_ep1.p3d",
        "a3\structures_f\households\house_shop02\u_shop_02_v1_f.p3d",
        "ca\buildings\hotel_riviera2.p3d",
        "dbe1\models_dbe1\vysilac\vysilac_budova.p3d",
        "a3\structures_f\dominants\hospital\hospital_main_f.p3d",
        "a3\structures_f\dominants\hospital\hospital_side2_f.p3d",
        "ca\buildings\orlhot.p3d",
        "a3\structures_f\ind\shed\u_shed_ind_f.p3d",
        "a3\structures_f\households\house_small01\i_house_small_01_v1_f.p3d",
        "ca\structures_e\housec\house_c_11_ep1.p3d",
        "ca\buildings2\ind_cementworks\ind_vysypka\ind_vysypka.p3d",
        "a3\structures_f\households\house_shop02\i_shop_02_v3_f.p3d",
        "ca\structures\house\a_office02\a_office02.p3d",
        "ca\buildings2\a_generalstore_01\a_generalstore_01a.p3d",
        "a3\structures_f\households\house_big02\i_house_big_02_v3_f.p3d",
        "ca\structures_e\housek\house_k_7_dam_ep1.p3d",
        "a3\structures_f\dominants\wip\wip_f.p3d",
        "a3\structures_f\households\house_small01\u_house_small_01_v1_dam_f.p3d",
        "ca\structures\house\housev2\housev2_04_interier.p3d",
        "ca\structures_e\housea\a_villa\a_villa_ep1.p3d",
        "ca\structures\house\a_hospital\a_hospital.p3d",
        "ca\structures_e\housec\house_c_5_dam_ep1.p3d",
        "ca\buildings\hut_old02.p3d"
    ];

    ALIVE_civilianSettlementBuildingTypes = ALIVE_civilianSettlementBuildingTypes + [
        "a3\structures_f\households\house_big01\u_house_big_01_v1_f.p3d",
        "a3\structures_f\households\house_small01\u_house_small_01_v1_f.p3d",
        "a3\structures_f\households\house_small02\u_house_small_02_v1_dam_f.p3d",
        "a3\structures_f\households\house_small01\i_house_small_01_v3_f.p3d",
        "a3\structures_f\households\house_big02\i_house_big_02_v1_f.p3d",
        "a3\structures_f\ind\carservice\carservice_f.p3d",
        "a3\structures_f\mil\barracks\u_barracks_v2_f.p3d",
        "a3\structures_f\households\house_big01\i_house_big_01_v1_f.p3d",
        "ca\structures\ind_sawmill\ind_sawmillpen.p3d",
        "ca\structures\ind_sawmill\ind_sawmill.p3d",
        "a3\structures_f\households\house_small03\i_house_small_03_v1_f.p3d",
        "a3\structures_f\households\house_big02\u_house_big_02_v1_f.p3d",
        "a3\structures_f\households\slum\slum_house03_f.p3d",
        "a3\structures_f\households\house_shop01\u_shop_01_v1_f.p3d",
        "a3\structures_f\households\slum\slum_house02_f.p3d",
        "a3\structures_f\households\house_shop02\i_shop_02_v2_f.p3d",
        "a3\structures_f\households\house_shop01\i_shop_01_v3_f.p3d",
        "a3\structures_f\households\house_big01\i_house_big_01_v3_f.p3d",
        "a3\structures_f\civ\chapels\chapel_v1_f.p3d",
        "a3\structures_f\civ\belltowers\belltower_02_v1_f.p3d",
        "a3\structures_f\households\house_big02\i_house_big_02_v2_f.p3d",
        "a3\structures_f\households\house_small02\u_house_small_02_v1_f.p3d",
        "a3\structures_f\households\house_small02\i_house_small_02_v1_f.p3d",
        "a3\structures_f\households\house_big01\i_house_big_01_v2_f.p3d",
        "a3\structures_f\households\house_small01\i_house_small_01_v2_dam_f.p3d",
        "a3\structures_f\households\house_small02\i_house_small_02_v2_f.p3d",
        "ca\structures_e\housec\house_c_4_ep1.p3d",
        "a3\structures_f\households\wip\unfinished_building_02_f.p3d",
        "a3\structures_f\households\wip\unfinished_building_01_f.p3d",
        "ca\structures\nav_pier\nav_pier_c_90.p3d",
        "ca\structures\nav_pier\nav_pier_f_17.p3d",
        "ca\structures\nav_pier\nav_pier_c_t15.p3d",
        "ca\structures\nav_pier\nav_pier_m_end.p3d",
        "ca\buildings\deutshe_mini.p3d",
        "a3\structures_f\households\slum\slum_house01_f.p3d",
        "a3\structures_f\households\stone_big\i_stone_housebig_v3_f.p3d",
        "a3\structures_f\households\stone_shed\i_stone_shed_v2_f.p3d",
        "a3\structures_f\households\stone_shed\i_stone_shed_v3_f.p3d",
        "a3\structures_f\households\stone_shed\i_stone_shed_v1_f.p3d",
        "a3\structures_f\households\stone_big\i_stone_housebig_v1_f.p3d",
        "a3\structures_f\households\stone_big\i_stone_housebig_v2_f.p3d",
        "ca\structures\house\a_office01\a_office01.p3d",
        "ca\structures\barn_w\barn_w_01.p3d",
        "a3\structures_f\households\addons\i_garage_v1_f.p3d",
        "ca\buildings\sara_domek_zluty.p3d",
        "ca\structures_e\housec\house_c_5_ep1.p3d",
        "ca\structures_e\housec\house_c_5_v3_ep1.p3d",
        "ca\buildings2\shed_small\shed_w02.p3d",
        "a3\structures_f\households\house_shop02\i_shop_02_v1_f.p3d",
        "ca\structures_e\housec\house_c_5_v1_ep1.p3d",
        "a3\structures_f\households\addons\i_addon_02_v1_f.p3d",
        "ca\buildings\hotel.p3d",
        "a3\structures_f\civ\offices\offices_01_v1_f.p3d",
        "ca\structures_e\housea\a_stationhouse\a_stationhouse_ep1.p3d",
        "a3\structures_f\households\house_shop02\u_shop_02_v1_f.p3d",
        "ca\structures\a_municipaloffice\a_municipaloffice.p3d",
        "ca\structures\house\housev2\housev2_02_interier.p3d",
        "ca\buildings\sara_domek05.p3d",
        "ca\buildings\sara_domek03.p3d",
        "ca\buildings\hotel_riviera2.p3d",
        "ca\buildings\hotel_riviera1.p3d",
        "ca\buildings\sara_domek_sedy.p3d",
        "ca\buildings\dum_istan3_hromada2.p3d",
        "dbe1\models_dbe1\vysilac\vysilac_budova.p3d",
        "ca\buildings2\ind_workshop01\ind_workshop01_01.p3d",
        "ca\buildings\sara_domek01.p3d",
        "ca\buildings\cihlovej_dum_in.p3d",
        "a3\structures_f\dominants\hospital\hospital_main_f.p3d",
        "a3\structures_f\dominants\hospital\hospital_side2_f.p3d",
        "a3\structures_f\dominants\hospital\hospital_side1_f.p3d",
        "ca\buildings\orlhot.p3d",
        "a3\structures_f\ind\shed\u_shed_ind_f.p3d",
        "a3\structures_f\households\house_small01\i_house_small_01_v1_f.p3d",
        "ca\structures_e\housec\house_c_5_v2_ep1.p3d",
        "ca\structures_e\housec\house_c_11_ep1.p3d",
        "ca\buildings\bouda2_vnitrek.p3d",
        "a3\structures_f\households\house_shop02\i_shop_02_v3_f.p3d",
        "a3\structures_f\households\stone_small\i_stone_housesmall_v1_f.p3d",
        "a3\structures_f\households\addons\i_garage_v2_f.p3d",
        "ca\structures\house\a_office02\a_office02.p3d",
        "ca\buildings2\ind_workshop01\ind_workshop01_04.p3d",
        "a3\structures_f\ind\airport\airport_right_f.p3d",
        "a3\structures_f\ind\airport\airport_left_f.p3d",
        "a3\structures_f\ind\airport\airport_center_f.p3d",
        "ca\buildings2\a_generalstore_01\a_generalstore_01a.p3d",
        "ca\structures\house\housebt\houseb_tenement.p3d",
        "a3\structures_f\households\house_big02\i_house_big_02_v3_f.p3d",
        "ca\structures_e\housek\house_k_7_dam_ep1.p3d",
        "ca\buildings2\a_pub\a_pub_01.p3d",
        "ca\structures\house\a_stationhouse\a_stationhouse.p3d",
        "a3\structures_f\households\house_small01\u_house_small_01_v1_dam_f.p3d",
        "ca\buildings\statek_kulna.p3d",
        "ca\structures\house\housev2\housev2_01a.p3d",
        "ca\buildings2\houseblocks\houseblock_d\houseblock_d2.p3d",
        "ca\buildings\domek_rosa.p3d",
        "ca\buildings2\houseblocks\houseblock_b\houseblock_b6.p3d",
        "ca\buildings2\houseblocks\houseblock_a\houseblock_a1_1.p3d",
        "ca\structures\house\housev2\housev2_04_interier.p3d",
        "ca\structures_e\housea\a_villa\a_villa_ep1.p3d",
        "ca\structures\house\housev\housev_2t2.p3d",
        "ca\structures\house\a_hospital\a_hospital.p3d",
        "ca\structures\house\housev\housev_1t.p3d",
        "ca\structures\house\housev\housev_1i3.p3d",
        "ca\structures_e\housec\house_c_5_dam_ep1.p3d",
        "ca\buildings\hut_old02.p3d",
        "ca\buildings\afbarabizna.p3d",
        "a3\structures_f\ind\windmill\d_windmill01_f.p3d"
    ];

    ALIVE_civilianPowerBuildingTypes = ALIVE_civilianPowerBuildingTypes + [
        "a3\structures_f\ind\solarpowerplant\spp_transformer_f.p3d",
        "ca\buildings2\misc_waterstation\misc_waterstation.p3d",
        "a3\structures_f\ind\dieselpowerplant\dp_bigtank_f.p3d",
        "a3\structures_f\ind\dieselpowerplant\dp_mainfactory_f.p3d",
        "a3\structures_f\ind\dieselpowerplant\dp_transformer_f.p3d",
        "a3\structures_f\ind\dieselpowerplant\dp_smalltank_f.p3d",
        "ca\buildings2\ind_cementworks\ind_expedice\ind_expedice_3.p3d",
        "a3\structures_f\ind\factory\factory_main_f.p3d",
        "a3\structures_f\ind\windpowerplant\powergenerator_f.p3d",
        "a3\structures_f\ind\powerlines\powlines_transformer_f.p3d",
        "a3\structures_f\ind\windpowerplant\wpp_turbine_v2_f.p3d"
    ];

    ALIVE_civilianCommsBuildingTypes = ALIVE_civilianCommsBuildingTypes + [
        "a3\structures_f\ind\transmitter_tower\ttowersmall_1_f.p3d",
        "dbe1\models_dbe1\vysilac\vysilac_budova.p3d",
        "dbe1\models_dbe1\vysilac\vysilac_chodba.p3d",
        "a3\structures_f\mil\radar\radar_small_f.p3d",
        "ca\structures_e\misc\com_tower_ep1.p3d",
        "a3\structures_f\ind\transmitter_tower\ttowerbig_2_f.p3d",
        "a3\structures_f\ind\powerlines\powlines_transformer_f.p3d",
        "a3\structures_f\ind\transmitter_tower\tbox_f.p3d"
    ];

    ALIVE_civilianMarineBuildingTypes = ALIVE_civilianMarineBuildingTypes + [
        "a3\structures_f\dominants\lighthouse\lighthouse_f.p3d",
        "ca\structures\nav_pier\nav_pier_c_90.p3d",
        "ca\structures\nav_pier\nav_pier_f_17.p3d",
        "ca\structures\nav_pier\nav_pier_c_t15.p3d",
        "ca\structures\nav_pier\nav_pier_m_end.p3d",
        "ca\structures\nav_boathouse\nav_boathouse_pierl.p3d",
        "ca\buildings2\a_crane_02\crane_rails.p3d",
        "ca\buildings2\a_crane_02\a_crane_02b.p3d",
        "ca\buildings2\a_crane_02\a_crane_02a.p3d",
        "ca\buildings2\a_crane_02\crane_rails_end.p3d",
        "ca\buildings2\misc_cargo\misc_cargo1e.p3d",
        "a3\structures_f\naval\piers\pier_f.p3d",
        "a3\structures_f\naval\piers\pier_wall_f.p3d"
    ];

    ALIVE_civilianRailBuildingTypes = ALIVE_civilianRailBuildingTypes + [];

    ALIVE_civilianFuelBuildingTypes = ALIVE_civilianFuelBuildingTypes + [
        "ca\buildings\fuelstation_army.p3d",
        "ca\structures_e\ind\ind_fuelstation\ind_fuelstation_shed_ep1.p3d",
        "ca\structures_e\ind\ind_fuelstation\ind_fuelstation_build_ep1.p3d",
        "ca\structures_e\ind\ind_fuelstation\ind_fuelstation_feed_ep1.p3d",
        "a3\structures_f\ind\reservoirtank\reservoirtower_f.p3d",
        "a3\structures_f\ind\dieselpowerplant\dp_bigtank_f.p3d",
        "a3\structures_f\ind\dieselpowerplant\dp_mainfactory_f.p3d",
        "a3\structures_f\ind\dieselpowerplant\dp_smalltank_f.p3d",
        "ca\buildings2\ind_cementworks\ind_expedice\ind_expedice_3.p3d",
        "a3\structures_f\ind\factory\factory_main_f.p3d",
        "a3\structures_f\ind\windpowerplant\powergenerator_f.p3d",
        "a3\structures_f\ind\reservoirtank\reservoirtank_airport_f.p3d",
        "a3\structures_f\ind\dieselpowerplant\dp_smallfactory_f.p3d"
    ];

    ALIVE_civilianConstructionBuildingTypes = ALIVE_civilianConstructionBuildingTypes + [
        "ca\structures\ind_sawmill\ind_sawmill.p3d",
        "a3\structures_f\households\wip\unfinished_building_02_f.p3d",
        "a3\structures_f\households\wip\unfinished_building_01_f.p3d",
        "ca\buildings2\barn_metal\barn_metal.p3d",
        "a3\structures_f\ind\shed\u_shed_ind_f.p3d",
        "ca\buildings2\ind_cementworks\ind_vysypka\ind_vysypka.p3d",
        "a3\structures_f\ind\dieselpowerplant\dp_smallfactory_f.p3d",
        "a3\structures_f\dominants\wip\wip_f.p3d",
        "a3\structures_f\ind\crane\crane_f.p3d",
        "ca\structures\house\a_hospital\a_hospital.p3d",
        "ca\buildings\hut_old02.p3d"
    ];
};
