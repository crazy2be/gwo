package
{
   import com.funkypear.ui.HubCodePanel;
   import com.funkypear.ui.HelpManager;
   import com.funkypear.ui.LP_CustomWeapon;
   import §_-WX§.§_-A§;
   import com.funkypear.ui.LoadingScreen;
   import com.funkypear.ui.LobbyDisplay;
   import com.funkypear.ui.AwardPanel;
   import playerio.Client;
   import flash.display.MovieClip;
   import §_-j2§.LobbyClient;
   import com.funkypear.ui.customweapon.CustomWeaponEditor;
   import §_-Cv§.*;
   import §_-WX§.§_-Xd§;
   
   public class Global extends Object
   {
      
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc1_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
      }
      
      public function Global()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
      }
      
      public static var §_-1H§:Boolean = false;
      
      public static var large_thumbnail_x:Number = 295;
      
      public static var large_thumbnail_y:Number = 260;
      
      public static var hub_code_panel:HubCodePanel;
      
      public static var codeUnlockID:String = "";
      
      public static var replay_last_map:int = 0;
      
      public static var got_initial_data:Boolean = false;
      
      public static var §each §:int = 0;
      
      public static var §_-RP§:int = 0;
      
      public static var §_-Pv§:int = 0;
      
      public static var game_share_code:String = "";
      
      public static var help_manager:HelpManager;
      
      public static var §_-5d§:String = "";
      
      public static var custom_weapon_panel:LP_CustomWeapon;
      
      public static var test_custom_weapon:String;
      
      public static var test_custom_weapon_id:int = 0;
      
      public static var save_replay_id:int;
      
      public static var save_replay_turn_id:int;
      
      public static var save_replay_response:String;
      
      public static var §_-TQ§:String = "http://www.graviteewarsonline.com/replays/";
      
      public static var §_-jX§:String = "GraviteeWarsOnline.com/replays/";
      
      public static var waiting_join_id:int = 0;
      
      public static var player_array:Array;
      
      public static var lobby_players_array:Array = [];
      
      public static var unitDetails:Array = new Array(new §_-Xd§(),new §_-Xd§(),new §_-Xd§(),new §_-Xd§(),new §_-Xd§(),new §_-Xd§());
      
      public static var §_-Gr§:§_-A§ = new §_-A§(0);
      
      public static var §_-68§:§_-A§ = new §_-A§(3);
      
      public static var favourite_colour:§_-A§ = new §_-A§();
      
      public static var favourite_helmet:§_-A§ = new §_-A§();
      
      public static var anim_victory:§_-A§ = new §_-A§(0);
      
      public static var anim_idle:Array = [new §_-A§(0),new §_-A§(0),new §_-A§(0),new §_-A§(0)];
      
      public static var game_colour:int;
      
      public static var §_-G1§:§_-A§ = new §_-A§(0);
      
      public static var §_-59§:§_-A§ = new §_-A§(0);
      
      public static var §_-Z0§:§_-A§ = new §_-A§(0);
      
      public static var loading_screen:LoadingScreen;
      
      public static var lobby_display:LobbyDisplay;
      
      public static var §_-Jj§:int = 0;
      
      public static var § use§:int = 1;
      
      public static var §_-8E§:int = 2;
      
      public static var §_-4W§:int = 3;
      
      public static var §_-Dh§:int = 4;
      
      public static var §_-Mz§:int = 5;
      
      public static var teamXP:§_-A§ = new §_-A§(0);
      
      public static var award_panel:AwardPanel;
      
      public static var screen_names = ["GALACTIC HUB","VIEW CAMPAIGNS","BATTLE SELECT","BROWSE","WAITING FOR PLAYERS","CUSTOM GAME","MY MAPS","SEARCHING","SEARCHING","MAP EDITOR","","GAME OVER","MAP EDITOR","CAMPAIGN MAPS","PRELOADER","LOGIN","REGISTER","FORGOT PASSWORD","SEARCHING","ERROR","VERSION CONTROL","BANNED","SEARCHING","OFFLINE GAME","TUTORIAL GAME","TUTORIAL END","EDITOR GAME","OFFLINE END","CW GAME","CW END","FUNKYPEAR","KONG","CUSTOM MAPS","LATEST MAPS","SEARCHING","LATEST REPLAYS","SEARCHING","REPLAY EDITOR","SAVING","REPLAY EDITOR","REPLAY EDITOR","","","","","CONNECTION ERROR",""];
      
      public static var screen_sub_names = ["BATTLE STATION ALPHA","BATTLE FOR THE GALAXY","","GAMES WAITING FOR PLAYERS","GAME WILL START SOON","SET UP YOUR GAME","CHOOSE A GAME TO PLAY","FOR GAMES","FOR GAMES","CHOOSE A MAP TO EDIT","","BATTLE RESULTS","CHOOSE A MAP TO EDIT","CHOOSE A GAME TO PLAY","","","","","FOR GAMES","","","","FOR GAMES","","","","","","","","","","CHOOSE A MAP SOURCE","CHOOSE A CUSTOM MAP","FOR MAPS","CHOOSE A REPLAY TO VIEW","FOR REPLAY DATA","CHOOSE A TURN TO SUBMIT","YOUR CHOSEN REPLAY","SAVE SUCCESSFUL","SAVE FAILED","","","","","JOIN GAME FAILED",""];
      
      public static var campaign_names = ["CAMPAIGN 1","CAMPAIGN 2","CAMPAIGN 3","CAMPAIGN 4","CAMPAIGN 5"];
      
      public static var SCREEN_HUB:int = 0;
      
      public static var SCREEN_CAMPAIGN_SELECT:int = 1;
      
      public static var SCREEN_BROWSE_CAMPAIGN:int = 2;
      
      public static var SCREEN_BROWSE_GAMES:int = 3;
      
      public static var SCREEN_WAITING_AREA:int = 4;
      
      public static var SCREEN_CUSTOM_GAME:int = 5;
      
      public static var SCREEN_BROWSE_YOUR_CUSTOM:int = 6;
      
      public static var SCREEN_LOADING_BROWSE_GAMES:int = 7;
      
      public static var SCREEN_LOADING_CUSTOM_GAME:int = 8;
      
      public static var SCREEN_EDITOR:int = 9;
      
      public static var SCREEN_ZOOMGAME:int = 10;
      
      public static var SCREEN_GAME_END:int = 11;
      
      public static var SCREEN_EDITOR_SLOTS:int = 12;
      
      public static var SCREEN_BROWSE_CAMPAIGN_CUSTOM:int = 13;
      
      public static var SCREEN_PRELOADER:int = 14;
      
      public static var SCREEN_LOGIN:int = 15;
      
      public static var SCREEN_REGISTER:int = 16;
      
      public static var SCREEN_PASSWORD:int = 17;
      
      public static var SCREEN_LOADING_LOBBY:int = 18;
      
      public static var SCREEN_ERROR:int = 19;
      
      public static var SCREEN_VERSIONCONTROL:int = 20;
      
      public static var SCREEN_BANNED:int = 21;
      
      public static var SCREEN_LOADING_SHARE_CODE:int = 22;
      
      public static var SCREEN_OFFLINE_GAME:int = 23;
      
      public static var SCREEN_TUTORIAL_GAME:int = 24;
      
      public static var SCREEN_TUTORIAL_END:int = 25;
      
      public static var SCREEN_EDITOR_GAME:int = 26;
      
      public static var SCREEN_OFFLINE_END:int = 27;
      
      public static var SCREEN_CW_GAME:int = 28;
      
      public static var SCREEN_CW_END:int = 29;
      
      public static var SCREEN_FUNKYPEAR:int = 30;
      
      public static var SCREEN_KONGREGATE:int = 31;
      
      public static var SCREEN_CUSTOM_SELECT:int = 32;
      
      public static var SCREEN_BROWSE_LATEST_CUSTOM:int = 33;
      
      public static var SCREEN_LOADING_LATEST_MAPS:int = 34;
      
      public static var SCREEN_VIEW_REPLAYS:int = 35;
      
      public static var SCREEN_LOADING_REPLAYS:int = 36;
      
      public static var SCREEN_EDIT_REPLAY:int = 37;
      
      public static var SCREEN_SAVING_REPLAY:int = 38;
      
      public static var SCREEN_REPLAY_SUCCESS:int = 39;
      
      public static var SCREEN_REPLAY_FAIL:int = 40;
      
      public static var SCREEN_LOADING_RECONNECT:int = 41;
      
      public static var SCREEN_BETA:int = 42;
      
      public static var §_-SN§:int = 43;
      
      public static var §_-tx§:int = 44;
      
      public static var §_-A1§:int = 45;
      
      public static var §_-oc§:int = 46;
      
      public static var tutorial_map:String = "p,390,600,98,0,0,0|p,810,600,98,0,0,0|p,600,840,85,8,0,0|p,600,360,85,8,0,0|u,0,-110,0|u,1,-70,0|u,0,110,0|u,1,90,0|u,2,-128,1|u,2,-52,1";
      
      public static var editor_test_map:String = "";
      
      public static var editor_game_x:Number;
      
      public static var editor_game_y:Number;
      
      public static var cw_test_map:String = "p,730,890,80,4,0,0|p,730,310,80,2,0,0|p,360,600,90,0,0,0|p,850,600,70,3,0,0|u,2,0,0|u,2,-60,0|u,2,-120,0|u,2,180,0|u,2,120,0|u,2,60,0|u,3,-120,1|u,1,90,1|u,1,-90,1|u,0,-90,1|u,0,90,1|u,3,114,1|g,570,220,136,0|g,570,980,43,0|m,1,300,0|m,0,61,0|m,1,240,0|m,0,120,0|b,0,300|b,1,60|b,3,280|b,3,80|b,3,180|b,1,121|b,0,240";
      
      public static var nav_path:Array = new Array();
      
      public static var saved_rooms:Array;
      
      public static var latest_maps:Array;
      
      public static var replay_list:Array;
      
      public static var positions:Array = [[],[{
         "x":440,
         "y":325
      }],[{
         "x":290,
         "y":325
      },{
         "x":590,
         "y":325
      }],[{
         "x":240,
         "y":220
      },{
         "x":640,
         "y":220
      },{
         "x":440,
         "y":420
      }],[{
         "x":220,
         "y":300
      },{
         "x":440,
         "y":180
      },{
         "x":660,
         "y":300
      },{
         "x":440,
         "y":420
      }],[{
         "x":220,
         "y":220
      },{
         "x":410,
         "y":300
      },{
         "x":600,
         "y":200
      },{
         "x":220,
         "y":430
      },{
         "x":650,
         "y":360
      }]];
      
      public static var custom_maps:Array;
      
      public static var selected_map_slot:int = 0;
      
      public static var page_id_editorslots:int = 0;
      
      public static var page_max_editorslots:int = 1;
      
      public static var page_id_your_custom:int = 0;
      
      public static var page_max_your_custom:int = 1;
      
      public static var page_id_campaign_custom:int = 0;
      
      public static var page_max_campaign_custom:int = 1;
      
      public static var §_-lJ§:int = 1;
      
      public static var page_id_latest_custom:int = 0;
      
      public static var page_max_latest_custom:int = 1;
      
      public static var custom_timestamp_first:String = "300000000000000000";
      
      public static var custom_timestamp:String = "300000000000000000";
      
      public static var saved_timestamps:Array;
      
      public static var page_id_browsegames:int = 0;
      
      public static var page_max_browsegames:int = 1;
      
      public static var page_dir_clicked:int = 0;
      
      public static var disable_clicks:Boolean = false;
      
      public static var saved_last_click:int = 0;
      
      public static var saved_click_data:int = 0;
      
      public static var unit_names:Array = ["Hypatia","Lowell","Messier","Moore","Herschel","Hipparchus","Huygens","Encke","Newton","Halley","Kuiper","Copernicus","Gallileo","Kepler","Hubble","Aristotle","Cassini","Drake","Einstein","Hawking","Sagan","Ptolemy","Oort","Kelvin","Piazzi","Pythagoras","Kirchoff","Olbers","Mitchell","Jansky","Lemaitre","LeVerrier","Lassell","Kirkwood","Goddard","Gamow","Galle","Cordelia","Ophelia","Bianca","Cressida","Desdemona","Juliet","Portia","Rosalind","Belinda","Puck","Miranda","Ariel","Umbriel","Titania","Oberon","Caliban","Sycorax","Prospero","Setebos","Pan","Atlas","Prometheus","Pandora","Epimetheus","Janus","Mimas","Enceladus","Tethys","Telesto","Calypso","Dione","Helene","Rhea","Titan","Hyperion","Iapetus","Phoebe","Stephano","Deimos","Phobos","Metis","Adrastea","Amalthea","Thebe","Io","Europa","Ganymede","Callisto","Leda","Himalia","Lysithea","Elara","Anake","Carme","Pasiphae","Sinope","Trinculo","Triton","Nereid","Naiad","Thalassa","Despina","Larissa","Proteus","Galatea","Charon","Quaoar","Ceres","Pallas","Juno","Vesta","Astraea","Hygiea","Eunomia","Eros","Gaspra","Mercury","Venus","Mars","Jupiter","Terra","Saturn","Uranus","Neptune","Pluto","Amor","Apollo","Aten","Aldebaran","Alnitak","Orion","Betelgeuse","Bellatrix","Rigel","Mintaka","Antares","Sirius","Polaris","Deneb","Mira","Nemesis","Vega","Andromeda","Capella","Aquila","Auriga","Bootes","Caelum","Canis","Cassiopeia","Cepheus","Cetus","Columba","Corvus","Cygnus","Delphinus","Draco","Hydra","Lupus","Pegasus","Bohr","Darwin","Wallace","Faraday","Maxwell","Heisenberg","Schrodinger","Rutherford","Dirac","Brahe","Planck","Curie","Thomson","Born","Crick","Fermi","Euler","Gauss","Mendeleev","Watson","Feynman","Euclid","Oppenheimer","Doppler","Tesla","Geiger","Bose","Mandelbrot","Higgs","Verlet","Anyon","Plekton","Dyon","Geon","Muon","Lepton","Tau","Electron","Gluon","Photon","Boson","Meson","Fermion","Baryon","Pion","Kaon","Axion","Pomeron","Skyrmion","Tachyon","Luxon","Tardyon","Bradyon","Styx","Nix","Kerberos","Ithaca","Sedna","Pleiades","Alcyone","Asterope","Taygeta","Celaeno","Electra","Merope","Maia","Helix","Barnard","Herbig","Haro","Bok","Sigma","Tycho","Centauri","Omega","Proxima","Sagittarius","Magellan","Magnetar","Papillon","Centaurus","Taurus","Circinus","Perseus","Hoag"];
      
      public static var CLIENT:Client;
      
      public static var EDITOR:MovieClip;
      
      public static var CONNECTED_TO_PLAYERIO:Boolean = false;
      
      public static var CONNECTED_TO_LOBBY:Boolean = false;
      
      public static var REGISTER_USER:Boolean = false;
      
      public static var §_-k0§ = false;
      
      public static var §_-UW§:Boolean = false;
      
      public static var §_-41§:Boolean = false;
      
      public static var §_-W1§:String = "hA3nF8ilP903Ejg";
      
      public static var lobby_client:LobbyClient;
      
      public static var coins:§_-A§ = new §_-A§(0);
      
      public static var leave_lobby_id:int = 0;
      
      public static var cw_trail_colour_count:Array = [0,1,1,0,1,0,0,0,0,0];
      
      public static var custom_weapon_editor:CustomWeaponEditor;
      
      public static var §_-LY§:int = 10;
      
      public static var §_-yJ§:Array = [0,0,15,20,25,30,35,40,45,50,55,0];
      
      public static var §_-3h§:int = 1;
      
      public static var §_-HA§:int = 6;
      
      public static var §_-m0§:int = 1;
      
      public static var §_-hi§:int = 0;
      
      public static var §_-g-§:Array = [0,0,4,6,8,10,12,14,16,18,20,0];
      
      public static var §_-6A§:int = 1;
      
      public static var §_-VR§:int = 10;
      
      public static var §_-r-§:int = 1;
      
      public static var §_-D7§:Array = [0,0,4,6,8,10,12,14,16,18,20,0];
      
      public static var §_-6p§:int = 1;
      
      public static var §_-6t§:int = 10;
      
      public static var §_-eW§:int = 1;
      
      public static var §_-G8§:int = 20;
      
      public static var §_-mp§:int = 10;
      
      public static var §_-HJ§:Array = [0,0,15,20,25,30,35,40,45,50,55,0];
      
      public static var §_-q2§:int = 1;
      
      public static var §_-zT§:int = 4;
      
      public static var §_-6z§:int = 1;
      
      public static var §_-U4§:int = 10;
      
      public static var §_-sg§:Array = [0,0,2,4,6,8,10,12,14,16,18,0];
      
      public static var §_-Ay§:int = 1;
      
      public static var §_-Ox§:int = 10;
      
      public static var §_-kp§:int = 1;
      
      public static var §_-3q§:Array = [0,0,2,4,6,8,10,12,14,16,18,0];
      
      public static var §_-2§:int = 1;
      
      public static var §_-1L§:int = 10;
      
      public static var §_-qO§:int = 1;
      
      public static var §_-ih§:int = 20;
      
      public static var §_-JD§:Array = [0,0,2,4,6,8,10,12,14,16,18,0];
      
      public static var §_-CE§:int = 1;
      
      public static var §_-Cj§:int = 10;
      
      public static var §_-om§:int = 1;
      
      public static var §_-M§:int = 20;
      
      public static var §_-TP§:Array = [0,0,2,4,6,8,10,12,14,16,18,0];
      
      public static var §_-4o§:int = 1;
      
      public static var §_-WZ§:int = 10;
      
      public static var §_-gY§:int = 1;
      
      public static var §_-jK§:Array = [0,0,2,4,6,8,10,12,14,16,18,0];
      
      public static var §_-dg§:int = 1;
      
      public static var §_-HX§:int = 10;
      
      public static var §_-7B§:int = 1;
      
      public static var §_-j3§:int = 10;
      
      public static var §_-Bs§:Array = [0,0,15,20,25,30,35,40,45,16,18,0];
      
      public static var §_-OR§:int = 1;
      
      public static var § case§:int = 3;
      
      public static var §_-6W§:int = 1;
      
      public static var §_-NK§:Array = [0,0,2,4,6,8,10,12,14,16,18,0];
      
      public static var §_-B-§:int = 1;
      
      public static var §_-nw§:int = 10;
      
      public static var §_-xJ§:int = 1;
      
      public static var §_-if§:int = 30;
      
      public static var §_-7W§:Array = [0,0,35,40,45,50,55,60,65,70,75,0];
      
      public static var §_-wh§:int = 1;
      
      public static var §_-rU§:int = 3;
      
      public static var §_-EU§:int = 1;
      
      public static var replayCredits:int = 0;
      
      public static var weaponMaxStock:Array = new Array(0,3,1,3,3,2,3,2,3,2,3,3,2,3,3,3,3,3,2,3,2,3,3,3,3,3,2,3,2,2,2,1,1,2,2,2,1,1,2,1,1,2,2,2,2,2,2,2,2,2);
      
      public static var weaponCost:Array = new Array(0,2,4,2,2,2,2,2,2,3,2,2,4,2,2,2,2,2,4,2,3,2,2,2,2,2,2,3,2,6,6,5,6,4,3,8,10,4,4,5,5,4,2,4,3,4,6,4,4,3);
      
      public static var helmetNames:Array = new Array("Classic","Soldier","Motocross","Alien","Bubble","Mohawk","Ultra","Viking","Bug");
      
      public static var modNames:Array = new Array("No Planet Damage","No Unit Walk","Big Explosions","Extra Powerups","Instant Mines","Heavy Units","Planet Shields");
      
      public static var colourNames:Array = new Array("RED","BLUE","GREEN","YELLOW","ORANGE","PURPLE","PINK","GREY","BLACK","WHITE");
      
      public static var idleNames:Array = new Array("BUBBLEGUM","JUGGLE","HEADPHONES","MOBILE","YO YO","WAVE","MUNCHYPEAR","BLOCKS","ANIM REQUIRED","ANIM REQUIRED","ANIM REQUIRED","ANIM REQUIRED","ANIM REQUIRED","ANIM REQUIRED");
      
      public static var victoryNames:Array = new Array("HEADBANG","MOONWALK","WORM","CHEER","UNICYCLE","ANIM REQUIRED");
      
      public static var HELMET_CLASSIC:int = 0;
      
      public static var HELMET_SOLDIER:int = 1;
      
      public static var HELMET_MOTORCROSS:int = 2;
      
      public static var HELMET_ALIEN:int = 3;
      
      public static var HELMET_BUBBLE:int = 4;
      
      public static var HELMET_MOHAWK:int = 5;
      
      public static var HELMET_ULTRA:int = 6;
      
      public static var HELMET_VIKING:int = 7;
      
      public static var HELMET_BETA:int = 8;
      
      public static var CHALLENGETYPE_DAMAGEDEALT_GAME:int = 0;
      
      public static var CHALLENGETYPE_KILLS_GAME:int = 1;
      
      public static var EDITOR_PACK1:int = 0;
      
      public static var EDITOR_PACK2:int = 1;
      
      public static var EDITOR_PACK3:int = 2;
      
      public static var EDITOR_PACK4:int = 3;
      
      public static var EDITOR_PACK5:int = 4;
      
      public static var TOTAL_PLANETS:int = 30;
      
      public static var planet_packs:Array = [[5,6,7,8,9],[10,11,12,13,14],[15,16,17,18,19],[20,21,22,23,24],[25,26,27,28,29]];
      
      public static var default_planets:Array = [0,1,2,3,4];
      
      public static var planets_unlocked:Array = new Array();
      
      public static var TOTAL_EDITOR_PLANETS:int = 8;
      
      public static var TOTAL_EDITOR_SUNS:int = 2;
      
      public static var TOTAL_EDITOR_WORMHOLES:int = 4;
      
      public static var TOTAL_EDITOR_SHIELDS:int = 8;
      
      public static var TOTAL_EDITOR_MINES:int = 10;
      
      public static var TOTAL_EDITOR_BARRELS:int = 10;
      
      public static var §_-6Y§:int = 20;
      
      public static var §_-EA§:int = 1;
      
      public static var AWARD_CUMULATIVE:int = 0;
      
      public static var AWARD_ONEOFF:int = 1;
      
      public static var XP_SHOTS:int = 2;
      
      public static var XP_HITS:int = 5;
      
      public static var XP_SKILLSHOTS:int = 3;
      
      public static var XP_POSITION_4P:Array = [0,50,30,20,10];
      
      public static var XP_POSITION_3P:Array = [0,30,20,10];
      
      public static var XP_POSITION_2P:Array = [0,20,10];
      
      public static var §_-XV§:Array = [0,50,20];
      
      public static var STATTYPE_GAME:int = 0;
      
      public static var STATTYPE_OTHER:int = 2;
      
      public static var STATTYPE_ONETIME:int = 3;
      
      public static var game_stats:Array = new Array();
      
      public static var STAT_SHOTS_TAKEN:int = 0;
      
      public static var STAT_ENEMIES_KILLED:int = 1;
      
      public static var STAT_SUN_KILLS:int = 2;
      
      public static var STAT_OOB_KILLS:int = 3;
      
      public static var STAT_SHIELD_KILLS:int = 4;
      
      public static var STAT_DAMAGE_DEALT:int = 5;
      
      public static var STAT_DAMAGE_RECEIVED:int = 6;
      
      public static var STAT_FRIENDLY_DAMAGE:int = 7;
      
      public static var STAT_FRIENDLY_HEALTH:int = 8;
      
      public static var STAT_DRILL_HITS:int = 9;
      
      public static var STAT_SHIELD_HITS:int = 10;
      
      public static var STAT_WORMHOLE_HITS:int = 11;
      
      public static var STAT_MELEE_HITS:int = 12;
      
      public static var STAT_CW_HITS:int = 13;
      
      public static var STAT_ENEMIES_FIRE:int = 14;
      
      public static var STAT_POWERUPS_COLLECTED:int = 15;
      
      public static var STAT_POWERUPS_DESTROYED:int = 16;
      
      public static var STAT_BARRELS_DESTROYED:int = 17;
      
      public static var STAT_MINES_LAYED:int = 18;
      
      public static var STAT_MINES_EMP:int = 19;
      
      public static var STAT_DISTANCE_WALKED:int = 20;
      
      public static var STAT_DISTANCE_JETPACKED:int = 21;
      
      public static var STAT_PLANETS_RADIO:int = 22;
      
      public static var STAT_SKILLSHOTS_HIT:int = 23;
      
      public static var STAT_PLANETS_DESTROYED:int = 24;
      
      public static var STAT_JETPACK_WORMHOLE:int = 25;
      
      public static var STAT_JETPACK_POWERUP:int = 26;
      
      public static var STAT_SKILLSHOT_MULTI:int = 27;
      
      public static var STAT_DISTANCE_HIT:int = 28;
      
      public static var STAT_LAND_2X_SKILLSHOT:int = 29;
      
      public static var STAT_LAND_SUPER_LONGSHOT:int = 30;
      
      public static var STAT_FRIENDLY_DEATHS:int = 31;
      
      public static var STAT_ENEMY_HITS:int = 32;
      
      public static var STAT_HEALTH_COLLECTED:int = 33;
      
      public static var STAT_WEAPON_COLLECTED:int = 34;
      
      public static var other_stats:Array = new Array();
      
      public static var OSTAT_GOLD_MEDALS:int = 0;
      
      public static var OSTAT_SILVER_MEDALS:int = 1;
      
      public static var OSTAT_BRONZE_MEDALS:int = 2;
      
      public static var OSTAT_IRON_MEDALS:int = 3;
      
      public static var OSTAT_GRAVITONS_EARNED:int = 4;
      
      public static var OSTAT_GAMES_PLAYED:int = 5;
      
      public static var OSTAT_TIME_PLAYED:int = 6;
      
      public static var OSTAT_WEAPONS_UNLOCKED:int = 7;
      
      public static var §_-1l§:int = 8;
      
      public static var §_-Z-§:int = 9;
      
      public static var one_time_stats:Array = new Array();
      
      public static var BSTAT_TUTORIAL:int = 0;
      
      public static var BSTAT_FIRST_GAME:int = 1;
      
      public static var BSTAT_UPGRADE_TEAM:int = 2;
      
      public static var BSTAT_UPGRADE_WEAPONS:int = 3;
      
      public static var BSTAT_USE_EDITOR:int = 4;
      
      public static var BSTAT_GOLD_CAMPAIGN:int = 5;
      
      public static var BSTAT_SUBMIT_REPLAY:int = 6;
      
      public static var BSTAT_VIEW_CREDITS:int = 7;
      
      public static var BSTAT_USE_SHOP:int = 8;
      
      public static var BSTAT_CREATE_CW:int = 9;
      
      public static var BSTAT_PLAY_CUSTOM:int = 10;
      
      public static var BSTAT_AWARDS_25:int = 11;
      
      public static var BSTAT_AWARDS_50:int = 12;
      
      public static var BSTAT_AWARDS_100:int = 13;
      
      public static var BSTAT_VIRAL:int = 14;
      
      public static var BSTAT_EASTER_EGG:int = 15;
      
      public static var BSTAT_FULL_TEAM:int = 16;
      
      public static var BSTAT_THREE_MODS:int = 17;
      
      public static var global_stats:Array = new Array();
      
      public static var GSTAT_KILLS:int = 0;
      
      public static var GSTAT_PLAYS:int = 1;
      
      public static var GSTAT_DAMAGE:int = 2;
      
      public static var GSTAT_TIME:int = 3;
      
      public static function §_-Z6§() : String
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:* = 0;
         var _loc1_:Array = ["B","C","D","F","G","H","J","K","L","M","N","P","Q","R","S","T","V","W","X","Y","Z","1","2","3","4","5","6","7","8","9","0"];
         var _loc2_:* = "";
         var _loc3_:* = 0;
         while(_loc3_ < 12)
         {
            _loc6_;
            _loc6_;
            _loc4_ = Math.floor(Math.random() * _loc1_.length);
            _loc6_;
            _loc5_;
            _loc5_;
            _loc6_;
            _loc2_ = _loc2_ + _loc1_[_loc4_];
            _loc5_;
            _loc3_++;
            _loc6_;
         }
         return _loc2_;
      }
      
      public static function §_-YB§(param1:Array) : Array
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:* = 0;
         var _loc4_:Object = null;
         var _loc2_:int = param1.length - 1;
         while(_loc2_ >= 0)
         {
            _loc6_;
            _loc6_;
            _loc3_ = Math.floor(Math.random() * (_loc2_ + 1));
            _loc6_;
            _loc5_;
            _loc5_;
            _loc4_ = param1[_loc3_];
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            param1[_loc3_] = param1[_loc2_];
            _loc6_;
            param1[_loc2_] = _loc4_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc2_--;
         }
         return param1;
      }
      
      public static function getLevel(param1:int) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = 1;
         var _loc4_:* = 0;
         while(true)
         {
            _loc5_;
            _loc5_;
            if(_loc4_ >= param1)
            {
               break;
            }
            _loc3_++;
            _loc6_;
            _loc6_;
            _loc4_ = §_-Dq§(_loc3_ - 1);
            _loc5_;
         }
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         _loc2_ = _loc3_ - 1;
         _loc5_;
         _loc5_;
         if(param1 == 0)
         {
            _loc5_;
            _loc2_ = 1;
         }
         return _loc2_;
      }
      
      public static function §_-Dq§(param1:int) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         var _loc2_:Number = 5 - param1 / 25;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(_loc2_ < 1)
         {
            _loc5_;
            _loc4_;
            _loc2_ = 1;
         }
         var _loc3_:int = Math.floor(Math.pow(param1 * 10,1 + param1 / 100) * _loc2_);
         return _loc3_;
      }
   }
}
