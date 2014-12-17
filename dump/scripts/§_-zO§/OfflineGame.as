package §_-zO§
{
   import §_-ZN§.OfflineGameQuitButton;
   import §_-Cv§.GameOverData;
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
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         SafeGlobal.§_-Uq§ = this;
         _loc7_;
         SafeGlobal.playerID = 0;
         _loc8_;
         _loc8_;
         if(!§_-nG§)
         {
            if(param1 == "")
            {
               _loc7_;
               levelData = Global.tutorial_map;
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
            _loc7_;
            _loc7_;
            §_-by§ = §_-by§ + ",";
            §_-by§ = §_-by§ + Global.favourite_colour.getInt();
            §_-by§ = §_-by§ + ",";
            §_-by§ = §_-by§ + Global.favourite_helmet.getInt();
            _loc8_;
            §_-by§ = §_-by§ + ",";
            _loc8_;
            §_-by§ = §_-by§ + Global.anim_idle[0].getInt();
            §_-by§ = §_-by§ + ",";
            _loc8_;
            §_-by§ = §_-by§ + Global.anim_idle[1].getInt();
            _loc8_;
            §_-by§ = §_-by§ + ",";
            §_-by§ = §_-by§ + Global.anim_idle[2].getInt();
            _loc8_;
            _loc8_;
            §_-by§ = §_-by§ + ",";
            §_-by§ = §_-by§ + Global.anim_idle[3].getInt();
            §_-by§ = §_-by§ + ",";
            _loc8_;
            _loc8_;
            §_-by§ = §_-by§ + Global.anim_victory.getInt();
            §_-by§ = §_-by§ + ",1";
            _loc8_;
            §_-by§ = §_-by§ + "|";
            §_-by§ = §_-by§ + SafeGlobal.custom_weapon_string[0];
            §_-by§ = §_-by§ + "+";
            _loc7_;
            §_-by§ = §_-by§ + SafeGlobal.custom_weapon_string[1];
            _loc7_;
            _loc7_;
            §_-by§ = §_-by§ + "+";
            _loc7_;
            §_-by§ = §_-by§ + SafeGlobal.custom_weapon_string[2];
            _loc7_;
            §_-by§ = §_-by§ + "|";
            _loc5_ = false;
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
                  _loc7_;
                  if(_loc5_)
                  {
                     §_-by§ = §_-by§ + "|";
                  }
                  else
                  {
                     _loc5_ = true;
                  }
                  §_-by§ = §_-by§ + Global.unitDetails[_loc6_].health;
                  §_-by§ = §_-by§ + ",";
                  _loc8_;
                  §_-by§ = §_-by§ + Global.unitDetails[_loc6_].accuracy;
                  §_-by§ = §_-by§ + ",";
                  _loc8_;
                  §_-by§ = §_-by§ + Global.unitDetails[_loc6_].name;
                  §_-by§ = §_-by§ + ",";
                  §_-by§ = §_-by§ + "1";
                  _loc7_;
                  _loc7_;
               }
               _loc6_++;
               _loc8_;
               _loc8_;
            }
            _loc8_;
            modData = "";
            _loc8_;
            stockData = "";
            _loc8_;
            _loc8_;
            _loc6_ = 0;
            while(_loc6_ < SafeGlobal.weaponsStock.length)
            {
               stockData = stockData + String(SafeGlobal.weaponsStock[_loc6_]);
               _loc6_++;
            }
            SafeGlobal.gameStock = stockData;
            _loc8_;
            §_-nG§ = true;
            _loc7_;
            _loc7_;
         }
         SafeGlobal.orderDisplayFinished = true;
         SafeGlobal.orderSetupReady = true;
         §_-UR§ = true;
         super(levelData,§_-by§,modData,stockData);
      }
      
      protected var §_-lU§:int = -1;
      
      protected var §_-LC§:Boolean = true;
      
      protected var §_-pA§:Array;
      
      protected var §_-OY§:OfflineGameQuitButton;
      
      override public function gameOver() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         SafeGlobal.game_over_data = new GameOverData();
         _loc3_;
         SafeGlobal.game_over_data.§_-sA§ = screen;
         SafeGlobal.game_over_data.game_radius = SafeGlobal.§_-p§(Global.tutorial_map);
         §_-Wb§(false);
         §_-m8§();
         _loc3_;
         §_-0T§();
         var _loc1_:* = 0;
         while(_loc1_ < units.length)
         {
            units[_loc1_].hideMe();
            _loc3_;
            _loc1_++;
            _loc3_;
            _loc3_;
         }
         _loc2_;
         §_-Yv§.visible = false;
         this.§_-OY§.visible = false;
         this.§_-OY§ = null;
         _loc2_;
         _loc2_;
         if(§_-sH§ != null)
         {
            §_-sH§.stop();
            §_-sH§.removeEventListener(TimerEvent.TIMER,this.callback);
            §_-sH§ = null;
            _loc3_;
         }
         Global.lobby_display.finishOfflineGame();
         destroyGame();
      }
      
      override public function finishBuildLevel() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-pA§ = new Array();
         var _loc1_:* = 0;
         while(_loc1_ < units.length)
         {
            this.§_-pA§[_loc1_] = {
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
         §_-Yi§.y = -100;
         _loc3_;
         _loc3_;
         statusBar.visible = false;
         SafeGlobal.TIMELINE.removeLobbyGameDisplay();
         _loc3_;
         _loc3_;
         this.§_-OY§ = new OfflineGameQuitButton();
         _loc2_;
         _loc2_;
         _loc3_;
         this.§_-OY§.x = 10;
         this.§_-OY§.y = 560;
         §_-wP§.addChild(this.§_-OY§);
         this.§_-aC§();
      }
      
      public function §_-aC§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = undefined;
         _loc3_;
         _loc3_;
         var _loc1_:int = this.§_-7w§();
         _loc3_;
         _loc3_;
         if(_loc1_ != -1)
         {
            _loc3_;
            this.§_-lU§ = _loc1_;
            _loc4_;
            _loc2_ = this.§_-cJ§();
            _loc3_;
            _loc3_;
            this.startTurn(0,_loc1_,"",_loc2_);
         }
         else
         {
            this.§_-PP§();
         }
      }
      
      override public function displayYourTurn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         selectWeapon(0);
         _loc2_;
         _loc2_;
         showWeaponPanelButton();
         _loc3_;
         _loc3_;
         §_-oN§.tweenOnWeaponName();
         _loc3_;
         _loc3_;
         §_-VK§(units[currentUnit]);
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
         §_-sH§ = new Timer(2000);
         _loc1_;
         §_-sH§.addEventListener(TimerEvent.TIMER,this.callback);
         _loc1_;
         _loc1_;
         §_-sH§.start();
      }
      
      override public function callback(param1:TimerEvent) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         §_-4g§ = false;
         _loc3_;
         §_-sH§.stop();
         _loc3_;
         §_-sH§.removeEventListener(TimerEvent.TIMER,this.callback);
         _loc2_;
         §_-sH§ = null;
         _loc3_;
         this.§_-aC§();
      }
      
      override public function sendFireProjectile(param1:int, param2:int, param3:int, param4:int) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc6_;
         _loc6_;
         removeStock(param2);
         _loc5_;
         this.§_-LC§ = true;
      }
      
      override public function sendLayMine(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         removeStock(param2);
         _loc3_;
         _loc3_;
         this.§_-LC§ = true;
      }
      
      override public function sendTeleportTo(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int) : void
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         _loc7_;
         _loc7_;
         removeStock(param2);
         _loc8_;
         this.§_-LC§ = true;
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
         _loc4_;
         _loc4_;
         removeStock(param2);
         _loc5_;
         this.§_-LC§ = true;
      }
      
      override public function sendMelee(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         removeStock(param2);
         _loc4_;
         this.§_-LC§ = true;
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
         this.§_-LC§ = true;
      }
      
      override public function sendPlacePlanetGate(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         removeStock(param2);
         _loc4_;
         _loc4_;
         this.§_-LC§ = true;
      }
      
      public function §_-7w§() : int
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc1_:* = false;
         _loc6_;
         var _loc2_:int = this.§_-lU§;
         var _loc3_:* = 0;
         var _loc4_:* = false;
         var _loc5_:* = 0;
         _loc6_;
         _loc6_;
         if(units.length > 0)
         {
            do
            {
               _loc7_;
               !_loc1_;
               _loc5_++;
               _loc6_;
               _loc2_++;
               _loc6_;
               _loc6_;
               _loc6_;
               if(_loc2_ >= units.length)
               {
                  _loc6_;
                  _loc2_ = 0;
                  _loc6_;
                  _loc6_;
               }
               _loc7_;
               _loc6_;
               if((this.§_-RB§(0,_loc2_)) && units[_loc2_].team == 0)
               {
                  _loc6_;
                  _loc1_ = true;
               }
               _loc3_++;
               _loc7_;
               _loc7_;
               _loc6_;
               _loc6_;
            }
            while(!(!_loc1_ && _loc3_ == units.length));
            
            _loc7_;
            _loc7_;
            _loc4_ = true;
            _loc1_ = true;
         }
         if(_loc4_)
         {
            _loc7_;
            _loc7_;
            return -1;
         }
         return _loc2_;
      }
      
      protected function §_-RB§(param1:int, param2:int) : Boolean
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         while(_loc3_ < units.length)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            if((units[_loc3_] as Unit).team == param1 && (units[_loc3_] as Unit).unitID == param2)
            {
               _loc4_;
               _loc4_;
               _loc4_;
               if((units[_loc3_] as Unit).removed == false)
               {
                  _loc5_;
                  _loc5_;
                  _loc4_;
                  return true;
               }
            }
            _loc3_++;
            _loc4_;
         }
         return false;
      }
      
      public function §_-cJ§() : String
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:* = 0;
         var _loc1_:* = 10;
         var _loc2_:* = "";
         var _loc3_:* = 0;
         while(_loc3_ < _loc1_)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc4_ = this.§_-Fj§(0,9);
            _loc5_;
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            _loc2_ = _loc2_ + String(_loc4_);
            _loc6_;
            _loc3_++;
            _loc6_;
         }
         return _loc2_;
      }
      
      public function §_-Fj§(param1:int, param2:int) : int
      {
         return param1 + Math.random() * (param2 - param1);
      }
      
      override public function requestCacheState() : *
      {
      }
      
      protected function §_-PP§() : void
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
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc7_:Array = null;
         _loc8_;
         _loc8_;
         if(!§_-Y0§)
         {
            _loc8_;
            _loc8_;
            §_-Y0§ = true;
            addEventListener(Event.ENTER_FRAME,§_-kg§);
            stage.addEventListener(MouseEvent.MOUSE_DOWN,§_-K2§);
            stage.addEventListener(KeyboardEvent.KEY_DOWN,§_-ur§);
            _loc9_;
            stage.addEventListener(KeyboardEvent.KEY_UP,§_-UQ§);
            _loc9_;
            _loc9_;
         }
         §_-rf§();
         _loc9_;
         §_-Yi§.reset();
         §_-mu§();
         §_-XG§ = 0;
         _loc8_;
         §_-tO§();
         _loc9_;
         _loc9_;
         camera.emptyList();
         currentTeam = param1;
         simManager.endOfTurnEffectsDone = false;
         _loc9_;
         _loc9_;
         simManager.turnOver = false;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         while(true)
         {
            _loc9_;
            _loc9_;
            if(_loc6_ >= units.length)
            {
               break;
            }
            _loc8_;
            _loc8_;
            if(units[_loc6_].team == param1 && units[_loc6_].unitID == param2)
            {
               _loc9_;
               currentUnit = _loc6_;
               camera.addTarget(units[currentUnit],-1,"unit startTurn");
               §_-a9§.x = units[currentUnit].iX;
               _loc8_;
               _loc8_;
               §_-a9§.y = units[currentUnit].iY;
               _loc8_;
               _loc8_;
               §_-a9§.active = false;
               _loc9_;
               _loc9_;
               _loc5_ = true;
               units[currentUnit].showName(true);
            }
            _loc6_++;
            _loc8_;
         }
         _loc9_;
         if(!_loc5_)
         {
            _loc8_;
         }
         if(SafeGlobal.playerID == param1)
         {
            _loc9_;
            _loc9_;
            myTurn = true;
            _loc8_;
            §_-uU§ = getTimer();
            turnState = "shoot";
            this.displayYourTurn(param1);
         }
         else
         {
            myTurn = false;
            _loc8_;
            _loc8_;
            §_-uU§ = getTimer() + §_-lD§;
            turnState = "shoot";
            _loc8_;
            _loc8_;
            §_-Tw§();
         }
         _loc8_;
         _loc8_;
         _loc8_;
         if(param3 != "")
         {
            _loc7_ = param3.split(",");
            _loc8_;
            _loc8_;
            addPowerUp(_loc7_[0],_loc7_[1],_loc7_[2],_loc7_[3],_loc7_[4],_loc7_[5]);
         }
         §_-IF§ = param4;
         _loc9_;
         _loc9_;
         simManager.sentEndSim = false;
      }
   }
}
