package §_-zO§
{
   import §_-ZN§.OfflineGameQuitButton;
   import §_-Cv§.GameOverData;
   
   public class CustomWeaponGame extends OfflineGame
   {
      
      public function CustomWeaponGame(param1:String, param2:String, param3:String, param4:String)
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         _loc7_;
         _loc7_;
         SafeGlobal.§_-Uq§ = this;
         _loc8_;
         SafeGlobal.playerID = 0;
         if(!§_-nG§)
         {
            _loc7_;
            _loc7_;
            if(param1 == "")
            {
               _loc8_;
               _loc8_;
               levelData = Global.cw_test_map;
               _loc7_;
            }
            else
            {
               levelData = param1;
            }
            §_-by§ = TimelineGlobal.player_name;
            §_-by§ = §_-by§ + ",";
            _loc7_;
            §_-by§ = §_-by§ + TimelineGlobal.player_uid;
            §_-by§ = §_-by§ + ",";
            _loc7_;
            §_-by§ = §_-by§ + Global.favourite_colour.getInt();
            _loc7_;
            §_-by§ = §_-by§ + ",";
            §_-by§ = §_-by§ + Global.favourite_helmet.getInt();
            §_-by§ = §_-by§ + ",";
            §_-by§ = §_-by§ + Global.anim_idle[0].getInt();
            §_-by§ = §_-by§ + ",";
            _loc7_;
            §_-by§ = §_-by§ + Global.anim_idle[1].getInt();
            _loc7_;
            _loc7_;
            §_-by§ = §_-by§ + ",";
            _loc7_;
            §_-by§ = §_-by§ + Global.anim_idle[2].getInt();
            §_-by§ = §_-by§ + ",";
            §_-by§ = §_-by§ + Global.anim_idle[3].getInt();
            §_-by§ = §_-by§ + ",";
            §_-by§ = §_-by§ + Global.anim_victory.getInt();
            §_-by§ = §_-by§ + ",1";
            §_-by§ = §_-by§ + "|";
            §_-by§ = §_-by§ + Global.test_custom_weapon;
            _loc7_;
            §_-by§ = §_-by§ + "+";
            _loc7_;
            _loc7_;
            §_-by§ = §_-by§ + Global.test_custom_weapon;
            §_-by§ = §_-by§ + "+";
            _loc8_;
            _loc8_;
            §_-by§ = §_-by§ + Global.test_custom_weapon;
            §_-by§ = §_-by§ + "|";
            _loc8_;
            _loc8_;
            _loc5_ = false;
            _loc8_;
            _loc8_;
            _loc6_ = 0;
            while(true)
            {
               _loc7_;
               _loc7_;
               _loc7_;
               if(_loc6_ >= 6)
               {
                  break;
               }
               if(Global.unitDetails[_loc6_].active == true)
               {
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  if(_loc5_)
                  {
                     §_-by§ = §_-by§ + "|";
                     _loc8_;
                     _loc8_;
                  }
                  else
                  {
                     _loc8_;
                     _loc8_;
                     _loc5_ = true;
                  }
                  §_-by§ = §_-by§ + Global.unitDetails[_loc6_].health;
                  §_-by§ = §_-by§ + ",";
                  §_-by§ = §_-by§ + Global.unitDetails[_loc6_].accuracy;
                  §_-by§ = §_-by§ + ",";
                  §_-by§ = §_-by§ + Global.unitDetails[_loc6_].name;
                  §_-by§ = §_-by§ + ",";
                  _loc7_;
                  _loc7_;
                  §_-by§ = §_-by§ + "1";
               }
               _loc6_++;
               _loc8_;
               _loc8_;
            }
            _loc8_;
            §_-by§ = §_-by§ + ":";
            §_-by§ = §_-by§ + "ENEMY";
            §_-by§ = §_-by§ + ",";
            _loc8_;
            _loc8_;
            §_-by§ = §_-by§ + "simpleENEMY";
            §_-by§ = §_-by§ + ",";
            _loc7_;
            _loc7_;
            §_-by§ = §_-by§ + "7";
            §_-by§ = §_-by§ + ",";
            §_-by§ = §_-by§ + "0";
            §_-by§ = §_-by§ + ",";
            _loc8_;
            _loc8_;
            §_-by§ = §_-by§ + "5";
            _loc8_;
            §_-by§ = §_-by§ + ",";
            §_-by§ = §_-by§ + "5";
            §_-by§ = §_-by§ + ",";
            §_-by§ = §_-by§ + "5";
            _loc7_;
            _loc7_;
            §_-by§ = §_-by§ + ",";
            §_-by§ = §_-by§ + "5";
            §_-by§ = §_-by§ + ",";
            §_-by§ = §_-by§ + "3";
            _loc8_;
            _loc8_;
            §_-by§ = §_-by§ + ",1";
            _loc7_;
            §_-by§ = §_-by§ + "|";
            §_-by§ = §_-by§ + "+";
            §_-by§ = §_-by§ + "+";
            §_-by§ = §_-by§ + "|";
            _loc8_;
            _loc8_;
            _loc7_;
            _loc7_;
            _loc5_ = false;
            _loc7_;
            _loc6_ = 0;
            _loc8_;
            while(true)
            {
               _loc8_;
               _loc8_;
               if(_loc6_ >= 6)
               {
                  break;
               }
               _loc8_;
               if(_loc5_)
               {
                  §_-by§ = §_-by§ + "|";
               }
               else
               {
                  _loc5_ = true;
               }
               §_-by§ = §_-by§ + "8";
               §_-by§ = §_-by§ + ",";
               §_-by§ = §_-by§ + "16";
               §_-by§ = §_-by§ + ",";
               _loc8_;
               _loc8_;
               §_-by§ = §_-by§ + "Enemy";
               §_-by§ = §_-by§ + ",";
               §_-by§ = §_-by§ + "1";
               _loc6_++;
            }
            modData = "";
            stockData = "";
            _loc7_;
            _loc7_;
            _loc7_;
            _loc6_ = 0;
            _loc7_;
            while(_loc6_ < SafeGlobal.weaponsStock.length)
            {
               stockData = stockData + String(SafeGlobal.weaponsStock[_loc6_]);
               _loc6_++;
               _loc8_;
            }
            SafeGlobal.gameStock = stockData;
            §_-nG§ = true;
         }
         SafeGlobal.orderDisplayFinished = true;
         _loc7_;
         _loc7_;
         SafeGlobal.orderSetupReady = true;
         super(levelData,§_-by§,modData,stockData);
      }
      
      override public function updatePlayerCache(param1:int, param2:Number) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:* = false;
         var _loc4_:* = 0;
         _loc5_;
         _loc5_;
         if(§_-5H§.length > param1)
         {
            _loc5_;
            _loc5_;
            §_-5H§[param1].width = 800 * param2;
            _loc6_;
            _loc3_ = true;
            _loc5_;
            _loc4_ = 0;
            while(_loc4_ < teams.length)
            {
               _loc5_;
               _loc5_;
               if(§_-5H§[_loc4_].width < 800 && _loc4_ == 0)
               {
                  _loc6_;
                  _loc6_;
                  _loc3_ = false;
                  _loc5_;
               }
               _loc4_++;
            }
            _loc5_;
            _loc5_;
            if(_loc3_)
            {
               removeCacheLoadingBar();
               §_-nv§();
            }
         }
      }
      
      override public function finishBuildLevel() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         §_-3o§();
         _loc2_;
         §_-pA§ = new Array();
         var _loc1_:* = 0;
         while(_loc1_ < units.length)
         {
            §_-pA§[_loc1_] = {
               "x":units[_loc1_].iX,
               "y":units[_loc1_].iY,
               "r":units[_loc1_].iR,
               "locationPlanet":units[_loc1_].locationPlanet,
               "locationShape":units[_loc1_].locationShape,
               "locationCurve":units[_loc1_].locationCurve,
               "locationAngle":units[_loc1_].locationAngle,
               "health":units[_loc1_].health
            };
            _loc3_;
            _loc3_;
            _loc1_++;
         }
         _loc3_;
         _loc3_;
         §_-Yi§.ignore = true;
         _loc3_;
         §_-Yi§.hideMe();
         _loc2_;
         _loc2_;
         statusBar.visible = false;
         SafeGlobal.TIMELINE.removeLobbyGameDisplay();
         _loc2_;
         _loc2_;
         §_-OY§ = new OfflineGameQuitButton();
         §_-OY§.x = -318;
         §_-OY§.y = 510;
         §_-wP§.addChild(§_-OY§);
         _loc2_;
         _loc2_;
         §_-OY§.tweenOn();
         §_-aC§();
      }
      
      override public function showWeaponPanelButton() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         §_-oN§.visible = false;
         _loc1_;
         _loc1_;
         §_-oN§.mouseChildren = false;
         _loc1_;
         §_-oN§.mouseEnabled = false;
      }
      
      override public function displayYourTurn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(Global.test_custom_weapon_id == 0)
         {
            _loc2_;
            selectWeapon(SafeGlobal.WEAPONINFO_CUSTOM[0]);
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc3_;
            if(Global.test_custom_weapon_id == 1)
            {
               selectWeapon(SafeGlobal.WEAPONINFO_CUSTOM2[0]);
               _loc2_;
            }
            else if(Global.test_custom_weapon_id == 2)
            {
               _loc2_;
               _loc2_;
               selectWeapon(SafeGlobal.WEAPONINFO_CUSTOM3[0]);
               _loc3_;
            }
            
         }
         §_-VK§(units[currentUnit]);
      }
      
      override public function gameOver() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         SafeGlobal.game_over_data = new GameOverData();
         _loc2_;
         _loc2_;
         SafeGlobal.game_over_data.§_-sA§ = screen;
         SafeGlobal.game_over_data.game_radius = SafeGlobal.§_-p§(Global.cw_test_map);
         §_-Wb§(false);
         §_-m8§();
         §_-0T§();
         var _loc1_:* = 0;
         while(_loc1_ < units.length)
         {
            units[_loc1_].hideMe();
            _loc1_++;
         }
         §_-Yv§.visible = false;
         §_-OY§.tweenOff();
         Global.lobby_display.finishCustomWeaponGame();
         destroyGame();
      }
   }
}
