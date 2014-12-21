package §_-JH§
{
   import §_-bY§.OfflineGameQuitButton;
   import §_-Ff§.GameOverData;
   import flash.events.TimerEvent;
   import flash.utils.Timer;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.events.KeyboardEvent;
   import flash.utils.getTimer;
   
   public class OfflineGame extends Game
   {
      
      public function OfflineGame(param1:String, param2:String, param3:String, param4:String)
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         SafeGlobal.§_-vX§ = this;
         SafeGlobal.playerID = 0;
         if(!§_-xt§)
         {
            _loc8_;
            if(param1 == "")
            {
               levelData = Global.tutorial_map;
            }
            else
            {
               levelData = param1;
               _loc8_;
               _loc8_;
            }
            §_-o5§ = TimelineGlobal.player_name;
            §_-o5§ = §_-o5§ + ",";
            _loc7_;
            §_-o5§ = §_-o5§ + TimelineGlobal.player_uid;
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + Global.favourite_colour.getInt();
            §_-o5§ = §_-o5§ + ",";
            _loc7_;
            _loc7_;
            §_-o5§ = §_-o5§ + Global.favourite_helmet.getInt();
            _loc8_;
            _loc8_;
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + Global.anim_idle[0].getInt();
            _loc7_;
            _loc7_;
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + Global.anim_idle[1].getInt();
            _loc8_;
            §_-o5§ = §_-o5§ + ",";
            _loc7_;
            §_-o5§ = §_-o5§ + Global.anim_idle[2].getInt();
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + Global.anim_idle[3].getInt();
            _loc7_;
            _loc7_;
            §_-o5§ = §_-o5§ + ",";
            §_-o5§ = §_-o5§ + Global.anim_victory.getInt();
            §_-o5§ = §_-o5§ + ",1";
            §_-o5§ = §_-o5§ + "|";
            §_-o5§ = §_-o5§ + SafeGlobal.custom_weapon_string[0];
            §_-o5§ = §_-o5§ + "+";
            _loc7_;
            _loc7_;
            §_-o5§ = §_-o5§ + SafeGlobal.custom_weapon_string[1];
            §_-o5§ = §_-o5§ + "+";
            §_-o5§ = §_-o5§ + SafeGlobal.custom_weapon_string[2];
            _loc7_;
            §_-o5§ = §_-o5§ + "|";
            _loc7_;
            _loc7_;
            _loc5_ = false;
            _loc8_;
            _loc6_ = 0;
            while(true)
            {
               _loc7_;
               if(_loc6_ >= 6)
               {
                  break;
               }
               if(Global.unitDetails[_loc6_].active == true)
               {
                  _loc7_;
                  if(_loc5_)
                  {
                     _loc8_;
                     §_-o5§ = §_-o5§ + "|";
                  }
                  else
                  {
                     _loc5_ = true;
                     _loc7_;
                  }
                  §_-o5§ = §_-o5§ + Global.unitDetails[_loc6_].health;
                  §_-o5§ = §_-o5§ + ",";
                  §_-o5§ = §_-o5§ + Global.unitDetails[_loc6_].accuracy;
                  _loc8_;
                  §_-o5§ = §_-o5§ + ",";
                  _loc7_;
                  §_-o5§ = §_-o5§ + Global.unitDetails[_loc6_].name;
                  _loc8_;
                  §_-o5§ = §_-o5§ + ",";
                  _loc8_;
                  §_-o5§ = §_-o5§ + "1";
               }
               _loc6_++;
            }
            _loc7_;
            _loc7_;
            modData = "";
            _loc7_;
            _loc7_;
            stockData = "";
            _loc7_;
            _loc7_;
            _loc8_;
            _loc6_ = 0;
            while(_loc6_ < SafeGlobal.weaponsStock.length)
            {
               stockData = stockData + String(SafeGlobal.weaponsStock[_loc6_]);
               _loc6_++;
            }
            SafeGlobal.gameStock = stockData;
            §_-xt§ = true;
            _loc8_;
         }
         SafeGlobal.orderDisplayFinished = true;
         SafeGlobal.orderSetupReady = true;
         §_-i-§ = true;
         super(levelData,§_-o5§,modData,stockData);
      }
      
      protected var §_-uU§:int = -1;
      
      protected var §_-yp§:Boolean = true;
      
      protected var §_-iu§:Array;
      
      protected var §_-6U§:OfflineGameQuitButton;
      
      override public function gameOver() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         SafeGlobal.game_over_data = new GameOverData();
         _loc3_;
         SafeGlobal.game_over_data.§_-ts§ = screen;
         SafeGlobal.game_over_data.game_radius = SafeGlobal.§_-5k§(Global.tutorial_map);
         _loc3_;
         _loc3_;
         §_-qm§(false);
         §_-tz§();
         _loc2_;
         §_-sA§();
         var _loc1_:* = 0;
         while(_loc1_ < units.length)
         {
            units[_loc1_].hideMe();
            _loc2_;
            _loc1_++;
         }
         §_-W1§.visible = false;
         this.§_-6U§.visible = false;
         this.§_-6U§ = null;
         _loc2_;
         if(§_-GV§ != null)
         {
            §_-GV§.stop();
            §_-GV§.removeEventListener(TimerEvent.TIMER,this.callback);
            §_-GV§ = null;
         }
         Global.lobby_display.finishOfflineGame();
         _loc2_;
         _loc2_;
         destroyGame();
      }
      
      override public function finishBuildLevel() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-iu§ = new Array();
         var _loc1_:* = 0;
         while(_loc1_ < units.length)
         {
            this.§_-iu§[_loc1_] = {
               "x":units[_loc1_].iX,
               "y":units[_loc1_].iY,
               "r":units[_loc1_].iR,
               "locationPlanet":units[_loc1_].locationPlanet,
               "locationShape":units[_loc1_].locationShape,
               "locationCurve":units[_loc1_].locationCurve,
               "locationAngle":units[_loc1_].locationAngle,
               "health":units[_loc1_].health
            };
            _loc2_;
            _loc2_;
            _loc1_++;
            _loc2_;
         }
         §_-Jz§.y = -100;
         statusBar.visible = false;
         SafeGlobal.TIMELINE.removeLobbyGameDisplay();
         _loc3_;
         this.§_-6U§ = new OfflineGameQuitButton();
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         this.§_-6U§.x = 10;
         _loc2_;
         this.§_-6U§.y = 560;
         _loc3_;
         §_-pn§.addChild(this.§_-6U§);
         this.§_-yn§();
      }
      
      public function §_-yn§() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = undefined;
         _loc3_;
         var _loc1_:int = this.§_-bS§();
         _loc3_;
         if(_loc1_ != -1)
         {
            _loc3_;
            this.§_-uU§ = _loc1_;
            _loc3_;
            _loc3_;
            _loc2_ = this.§_-eF§();
            _loc3_;
            _loc3_;
            this.startTurn(0,_loc1_,"",_loc2_);
         }
         else
         {
            this.§_-ss§();
         }
      }
      
      override public function displayYourTurn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         selectWeapon(0);
         _loc2_;
         _loc2_;
         showWeaponPanelButton();
         _loc3_;
         §_-5K§.tweenOnWeaponName();
         _loc3_;
         §_-se§(units[currentUnit]);
      }
      
      override public function sendEndOfTurn(param1:int) : *
      {
      }
      
      override public function sendEndSim() : void
      {
      }
      
      override public function showWaiting() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         §_-GV§ = new Timer(2000);
         _loc2_;
         _loc2_;
         §_-GV§.addEventListener(TimerEvent.TIMER,this.callback);
         _loc1_;
         _loc1_;
         §_-GV§.start();
      }
      
      override public function callback(param1:TimerEvent) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         §_-Vm§ = false;
         _loc2_;
         _loc2_;
         §_-GV§.stop();
         _loc2_;
         _loc2_;
         §_-GV§.removeEventListener(TimerEvent.TIMER,this.callback);
         _loc2_;
         _loc2_;
         §_-GV§ = null;
         _loc3_;
         this.§_-yn§();
      }
      
      override public function sendFireProjectile(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc5_;
         removeStock(param2);
         _loc6_;
         this.§_-yp§ = true;
      }
      
      override public function sendLayMine(param1:int, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         removeStock(param2);
         _loc3_;
         _loc3_;
         this.§_-yp§ = true;
      }
      
      override public function sendTeleportTo(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int) : void
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         _loc8_;
         _loc8_;
         removeStock(param2);
         _loc7_;
         _loc7_;
         this.§_-yp§ = true;
      }
      
      override public function sendUpdateCache(param1:Number) : void
      {
      }
      
      override public function sendStartWalk(param1:int, param2:int) : void
      {
      }
      
      override public function sendStopWalk(param1:int) : void
      {
      }
      
      override public function sendIncoming(param1:int, param2:int, param3:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         removeStock(param2);
         _loc4_;
         _loc4_;
         this.§_-yp§ = true;
      }
      
      override public function sendMelee(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         removeStock(param2);
         _loc4_;
         _loc4_;
         this.§_-yp§ = true;
      }
      
      override public function sendFlashError(param1:String) : void
      {
      }
      
      override public function sendPlaceGate(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int = -1, param7:int = -1, param8:int = -1) : void
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         _loc10_;
         _loc10_;
         removeStock(param2);
         _loc9_;
         _loc9_;
         this.§_-yp§ = true;
      }
      
      override public function sendPlacePlanetGate(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         removeStock(param2);
         _loc4_;
         this.§_-yp§ = true;
      }
      
      public function §_-bS§() : int
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc1_:* = false;
         _loc6_;
         _loc6_;
         var _loc2_:int = this.§_-uU§;
         var _loc3_:* = 0;
         var _loc4_:* = false;
         var _loc5_:* = 0;
         _loc7_;
         _loc7_;
         if(units.length > 0)
         {
            do
            {
               !_loc1_;
               _loc5_++;
               _loc7_;
               _loc7_;
               _loc2_++;
               _loc6_;
               if(_loc2_ >= units.length)
               {
                  _loc7_;
                  _loc2_ = 0;
               }
               _loc6_;
               _loc6_;
               _loc6_;
               _loc7_;
               _loc7_;
               if((this.§_-Sa§(0,_loc2_)) && units[_loc2_].team == 0)
               {
                  _loc1_ = true;
               }
               _loc3_++;
            }
            while(!(!_loc1_ && _loc3_ == units.length));
            
            _loc6_;
            _loc4_ = true;
            _loc6_;
            _loc1_ = true;
         }
         if(_loc4_)
         {
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            return -1;
         }
         return _loc2_;
      }
      
      protected function §_-Sa§(param1:int, param2:int) : Boolean
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         while(_loc3_ < units.length)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            if((units[_loc3_] as Unit).team == param1 && (units[_loc3_] as Unit).unitID == param2)
            {
               _loc5_;
               _loc5_;
               _loc5_;
               if((units[_loc3_] as Unit).removed == false)
               {
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  return true;
               }
            }
            _loc3_++;
            _loc5_;
            _loc5_;
         }
         return false;
      }
      
      public function §_-eF§() : String
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:* = 0;
         var _loc1_:* = 10;
         var _loc2_:* = "";
         var _loc3_:* = 0;
         while(_loc3_ < _loc1_)
         {
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            _loc4_ = this.§_-Le§(0,9);
            _loc6_;
            _loc6_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc2_ = _loc2_ + String(_loc4_);
            _loc5_;
            _loc3_++;
            _loc6_;
            _loc6_;
         }
         return _loc2_;
      }
      
      public function §_-Le§(param1:int, param2:int) : int
      {
         return param1 + Math.random() * (param2 - param1);
      }
      
      override public function requestCacheState() : *
      {
      }
      
      protected function §_-ss§() : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfucation" for better results.
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override public function startTurn(param1:int, param2:int, param3:String, param4:String) : *
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc7_:Array = null;
         if(!§_-g1§)
         {
            _loc9_;
            §_-g1§ = true;
            addEventListener(Event.ENTER_FRAME,§_-Tx§);
            stage.addEventListener(MouseEvent.MOUSE_DOWN,§_-iA§);
            stage.addEventListener(KeyboardEvent.KEY_DOWN,§_-54§);
            stage.addEventListener(KeyboardEvent.KEY_UP,§_-W9§);
         }
         §_-fP§();
         §_-Jz§.reset();
         §_-hQ§();
         _loc9_;
         §_-d3§ = 0;
         §_-PE§();
         _loc9_;
         _loc9_;
         camera.emptyList();
         currentTeam = param1;
         simManager.endOfTurnEffectsDone = false;
         simManager.turnOver = false;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         while(true)
         {
            _loc9_;
            if(_loc6_ >= units.length)
            {
               break;
            }
            _loc9_;
            if(units[_loc6_].team == param1 && units[_loc6_].unitID == param2)
            {
               currentUnit = _loc6_;
               _loc8_;
               _loc8_;
               camera.addTarget(units[currentUnit],-1,"unit startTurn");
               _loc9_;
               §_-7X§.x = units[currentUnit].iX;
               §_-7X§.y = units[currentUnit].iY;
               _loc9_;
               §_-7X§.active = false;
               _loc9_;
               _loc8_;
               _loc5_ = true;
               units[currentUnit].showName(true);
            }
            _loc6_++;
         }
         _loc9_;
         _loc9_;
         if(!_loc5_)
         {
            _loc9_;
            _loc9_;
         }
         if(SafeGlobal.playerID == param1)
         {
            myTurn = true;
            §_-Y8§ = getTimer();
            turnState = "shoot";
            _loc8_;
            _loc8_;
            this.displayYourTurn(param1);
            _loc8_;
            _loc8_;
         }
         else
         {
            myTurn = false;
            §_-Y8§ = getTimer() + §_-rR§;
            _loc8_;
            turnState = "shoot";
            §_-M2§();
         }
         _loc9_;
         _loc9_;
         if(param3 != "")
         {
            _loc7_ = param3.split(",");
            _loc8_;
            addPowerUp(_loc7_[0],_loc7_[1],_loc7_[2],_loc7_[3],_loc7_[4],_loc7_[5]);
         }
         §_-fz§ = param4;
         _loc8_;
         _loc8_;
         simManager.sentEndSim = false;
      }
   }
}
