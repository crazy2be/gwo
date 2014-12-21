package §_-JH§
{
   import §_-bY§.OfflineGameQuitButton;
   import §_-Ff§.GameOverData;
   
   public class CustomWeaponGame extends OfflineGame
   {
      
      public function CustomWeaponGame(param1:String, param2:String, param3:String, param4:String)
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         SafeGlobal.§_-vX§ = this;
         SafeGlobal.playerID = 0;
         _loc7_;
         _loc7_;
         if(!§_-xt§)
         {
            if(param1 == "")
            {
               _loc8_;
               levelData = Global.cw_test_map;
            }
            else
            {
               levelData = param1;
            }
            §_-o5§ = TimelineGlobal.player_name;
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + TimelineGlobal.player_uid;
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + Global.favourite_colour.getInt();
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + Global.favourite_helmet.getInt();
            _loc8_;
            _loc8_;
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + Global.anim_idle[0].getInt();
            _loc8_;
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + Global.anim_idle[1].getInt();
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + Global.anim_idle[2].getInt();
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + Global.anim_idle[3].getInt();
            _loc7_;
            _loc7_;
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + Global.anim_victory.getInt();
            §_-o5§ = §_-o5§ + ",1";
            _loc7_;
            _loc7_;
            §_-o5§ = §_-o5§ + "|";
            _loc8_;
            §_-o5§ = §_-o5§ + Global.test_custom_weapon;
            _loc7_;
            _loc7_;
            §_-o5§ = §_-o5§ + "+";
            §_-o5§ = §_-o5§ + Global.test_custom_weapon;
            _loc7_;
            §_-o5§ = §_-o5§ + "+";
            _loc7_;
            _loc7_;
            §_-o5§ = §_-o5§ + Global.test_custom_weapon;
            _loc7_;
            §_-o5§ = §_-o5§ + "|";
            _loc7_;
            _loc5_ = false;
            _loc6_ = 0;
            while(true)
            {
               _loc8_;
               _loc8_;
               _loc7_;
               _loc7_;
               if(_loc6_ >= 6)
               {
                  break;
               }
               if(Global.unitDetails[_loc6_].active == true)
               {
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  if(_loc5_)
                  {
                     _loc8_;
                     §_-o5§ = §_-o5§ + "|";
                  }
                  else
                  {
                     _loc8_;
                     _loc8_;
                     _loc5_ = true;
                     _loc7_;
                  }
                  §_-o5§ = §_-o5§ + Global.unitDetails[_loc6_].health;
                  §_-o5§ = §_-o5§ + ",";
                  _loc8_;
                  §_-o5§ = §_-o5§ + Global.unitDetails[_loc6_].accuracy;
                  §_-o5§ = §_-o5§ + ",";
                  _loc7_;
                  §_-o5§ = §_-o5§ + Global.unitDetails[_loc6_].name;
                  §_-o5§ = §_-o5§ + ",";
                  §_-o5§ = §_-o5§ + "1";
               }
               _loc6_++;
            }
            §_-o5§ = §_-o5§ + ":";
            _loc8_;
            _loc8_;
            §_-o5§ = §_-o5§ + "ENEMY";
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + "simpleENEMY";
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + "7";
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + "0";
            _loc7_;
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + "5";
            _loc7_;
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + "5";
            §_-o5§ = §_-o5§ + ",";
            _loc8_;
            _loc8_;
            §_-o5§ = §_-o5§ + "5";
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + "5";
            _loc7_;
            §_-o5§ = §_-o5§ + ",";
            _loc7_;
            _loc7_;
            §_-o5§ = §_-o5§ + "3";
            _loc7_;
            _loc7_;
            §_-o5§ = §_-o5§ + ",1";
            §_-o5§ = §_-o5§ + "|";
            §_-o5§ = §_-o5§ + "+";
            §_-o5§ = §_-o5§ + "+";
            _loc7_;
            §_-o5§ = §_-o5§ + "|";
            _loc8_;
            _loc8_;
            _loc5_ = false;
            _loc8_;
            _loc6_ = 0;
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
                  §_-o5§ = §_-o5§ + "|";
                  _loc7_;
               }
               else
               {
                  _loc5_ = true;
               }
               §_-o5§ = §_-o5§ + "8";
               §_-o5§ = §_-o5§ + ",";
               §_-o5§ = §_-o5§ + "16";
               _loc8_;
               _loc8_;
               §_-o5§ = §_-o5§ + ",";
               _loc8_;
               §_-o5§ = §_-o5§ + "Enemy";
               _loc7_;
               §_-o5§ = §_-o5§ + ",";
               _loc7_;
               _loc7_;
               §_-o5§ = §_-o5§ + "1";
               _loc7_;
               _loc7_;
               _loc6_++;
            }
            modData = "";
            stockData = "";
            _loc7_;
            _loc7_;
            _loc6_ = 0;
            _loc8_;
            _loc8_;
            while(_loc6_ < SafeGlobal.weaponsStock.length)
            {
               stockData = stockData + String(SafeGlobal.weaponsStock[_loc6_]);
               _loc6_++;
            }
            SafeGlobal.gameStock = stockData;
            §_-xt§ = true;
            _loc7_;
            _loc7_;
         }
         SafeGlobal.orderDisplayFinished = true;
         SafeGlobal.orderSetupReady = true;
         super(levelData,§_-o5§,modData,stockData);
      }
      
      override public function updatePlayerCache(param1:int, param2:Number) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:* = false;
         var _loc4_:* = 0;
         _loc5_;
         _loc5_;
         if(§_-ct§.length > param1)
         {
            _loc5_;
            §_-ct§[param1].width = 800 * param2;
            _loc5_;
            _loc5_;
            _loc3_ = true;
            _loc5_;
            _loc4_ = 0;
            while(_loc4_ < teams.length)
            {
               _loc6_;
               if(§_-ct§[_loc4_].width < 800 && _loc4_ == 0)
               {
                  _loc6_;
                  _loc5_;
                  _loc3_ = false;
               }
               _loc4_++;
            }
            if(_loc3_)
            {
               removeCacheLoadingBar();
               §_-eI§();
            }
         }
      }
      
      override public function finishBuildLevel() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         §_-OI§();
         _loc3_;
         §_-iu§ = new Array();
         var _loc1_:* = 0;
         while(_loc1_ < units.length)
         {
            §_-iu§[_loc1_] = {
               "x":units[_loc1_].iX,
               "y":units[_loc1_].iY,
               "r":units[_loc1_].iR,
               "locationPlanet":units[_loc1_].locationPlanet,
               "locationShape":units[_loc1_].locationShape,
               "locationCurve":units[_loc1_].locationCurve,
               "locationAngle":units[_loc1_].locationAngle,
               "health":units[_loc1_].health
            };
            _loc1_++;
         }
         §_-Jz§.ignore = true;
         _loc2_;
         §_-Jz§.hideMe();
         statusBar.visible = false;
         SafeGlobal.TIMELINE.removeLobbyGameDisplay();
         §_-6U§ = new OfflineGameQuitButton();
         _loc3_;
         _loc3_;
         §_-6U§.x = -318;
         §_-6U§.y = 510;
         §_-pn§.addChild(§_-6U§);
         §_-6U§.tweenOn();
         _loc3_;
         _loc3_;
         §_-yn§();
      }
      
      override public function showWeaponPanelButton() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         §_-5K§.visible = false;
         _loc1_;
         _loc1_;
         §_-5K§.mouseChildren = false;
         _loc2_;
         §_-5K§.mouseEnabled = false;
      }
      
      override public function displayYourTurn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc3_;
         if(Global.test_custom_weapon_id == 0)
         {
            selectWeapon(SafeGlobal.WEAPONINFO_CUSTOM[0]);
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(Global.test_custom_weapon_id == 1)
            {
               _loc3_;
               selectWeapon(SafeGlobal.WEAPONINFO_CUSTOM2[0]);
               _loc3_;
               _loc3_;
            }
            else if(Global.test_custom_weapon_id == 2)
            {
               selectWeapon(SafeGlobal.WEAPONINFO_CUSTOM3[0]);
            }
            
         }
         §_-se§(units[currentUnit]);
      }
      
      override public function gameOver() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         SafeGlobal.game_over_data = new GameOverData();
         _loc2_;
         _loc2_;
         SafeGlobal.game_over_data.§_-ts§ = screen;
         SafeGlobal.game_over_data.game_radius = SafeGlobal.§_-5k§(Global.cw_test_map);
         _loc2_;
         §_-qm§(false);
         _loc3_;
         _loc3_;
         §_-tz§();
         §_-sA§();
         var _loc1_:* = 0;
         while(_loc1_ < units.length)
         {
            units[_loc1_].hideMe();
            _loc1_++;
         }
         §_-W1§.visible = false;
         _loc3_;
         §_-6U§.tweenOff();
         Global.lobby_display.finishCustomWeaponGame();
         destroyGame();
      }
   }
}
