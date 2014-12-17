package §_-zO§
{
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.utils.getTimer;
   import flash.geom.Point;
   import flash.events.MouseEvent;
   import flash.events.KeyboardEvent;
   
   public class §_-FH§ extends Game
   {
      
      public function §_-FH§(param1:String, param2:String, param3:String, param4:String)
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.§_-vD§ = [];
         _loc5_;
         this.timeSkipTime = [];
         this.timeSkipDuration = [];
         _loc6_;
         _loc6_;
         visible = false;
         SafeGlobal.§_-zE§ = this;
         SafeGlobal.playerID = 0;
         _loc6_;
         if(!§_-nG§)
         {
            §_-nG§ = true;
         }
         SafeGlobal.orderDisplayFinished = true;
         SafeGlobal.orderSetupReady = true;
         simOnly = true;
         replay = true;
         _loc5_;
         _loc5_;
         §_-xN§ = 0;
         _loc5_;
         this.§_-Yw§ = param4;
         super(param1,param2,param3,param4);
      }
      
      private var §_-Yw§:String;
      
      private var §_-bq§:Array;
      
      private var §_-e7§:int = 0;
      
      private var §_-jv§:Array;
      
      private var §_-y6§:Array;
      
      private var §_-e3§:Array;
      
      private var §_-lR§:Array;
      
      private var §_-qi§:Array;
      
      private var §_-Nh§:Array;
      
      private var §_-Df§:Array;
      
      private var §_-bz§:Array;
      
      private var §_-eh§ = 0;
      
      private var §_-eN§:§_-kE§;
      
      private var §_-P2§:int = 30000;
      
      public var §_-vD§:Array;
      
      public var timeSkipTime:Array;
      
      public var timeSkipDuration:Array;
      
      private var §_-Vu§:Boolean = false;
      
      override public function addedToStage(param1:Event = null) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         removeEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
         _loc3_;
         _loc3_;
         §_-T2§();
         _loc2_;
         §_-Vf§ = true;
         _loc2_;
         _loc2_;
         if(§null§)
         {
            _loc2_;
            tryBuildGame();
         }
      }
      
      override public function buildLevel() : *
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfucation" for better results.
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      override public function cacheLoop(param1:Event) : *
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:* = false;
         var _loc3_:* = 0;
         while(_loc3_ < §_-e0§.length)
         {
            if(§_-e0§[_loc3_].processQueue.length > 0)
            {
               _loc6_;
               §_-e0§[_loc3_].processQueueItem();
               _loc7_;
               _loc7_;
               _loc2_ = true;
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               §_-ms§--;
               _loc7_;
               _loc7_;
               §_-5H§[0].width = Math.floor(800 * (1 - §_-ms§ / §_-cf§));
               break;
            }
            _loc3_++;
         }
         if(!_loc2_)
         {
            _loc7_;
            _loc7_;
            this.cacheLoopFinished();
         }
      }
      
      override public function addCacheLoadingBar() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         §_-5H§.push(new §_-AV§());
         _loc1_;
         §_-5H§[0].x = 0;
         _loc2_;
         §_-5H§[0].y = 595;
         _loc2_;
         §_-5H§[0].width = 1;
         _loc1_;
         _loc1_;
         SafeGlobal.TIMELINE.timeline.addChild(§_-5H§[0]);
      }
      
      override public function removeCacheLoadingBar() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(SafeGlobal.TIMELINE.timeline.contains(§_-5H§[0]))
         {
            _loc1_;
            SafeGlobal.TIMELINE.timeline.removeChild(§_-5H§[0]);
         }
      }
      
      override public function cacheLoopFinished() : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         removeEventListener(Event.ENTER_FRAME,this.cacheLoop);
         _loc5_;
         _loc5_;
         this.removeCacheLoadingBar();
         var _loc1_:* = 0;
         while(true)
         {
            _loc5_;
            _loc5_;
            if(_loc1_ >= units.length)
            {
               break;
            }
            units[_loc1_].costume = §_-e0§[units[_loc1_].costumeID];
            _loc5_;
            _loc5_;
            units[_loc1_].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
            _loc4_;
            _loc4_;
            _loc1_++;
            _loc4_;
            _loc4_;
         }
         _loc5_;
         stock = [];
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         while(true)
         {
            _loc4_;
            _loc4_;
            if(_loc2_ >= stockData.length)
            {
               break;
            }
            stock.push(3);
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            if(_loc2_ == 0)
            {
               _loc5_;
               _loc5_;
               stock[_loc2_] = 99;
               _loc5_;
               _loc5_;
            }
            _loc2_++;
            _loc5_;
            _loc5_;
         }
         var _loc3_:* = 0;
         _loc5_;
         while(_loc3_ < planets.length)
         {
            if(planets[_loc3_].radioactive > 0)
            {
               planets[_loc3_].activateRadioactivity(planets[_loc3_].radioactive,false);
            }
            if(planets[_loc3_].shieldHealth > 0)
            {
               planets[_loc3_].activateShield(planets[_loc3_].shieldHealth,false,false);
               _loc5_;
            }
            _loc3_++;
            _loc4_;
            _loc4_;
         }
         _loc5_;
         _loc5_;
         §_-dQ§();
         §_-hM§();
         this.finishBuildLevel();
         §_-xX§ = true;
         _loc5_;
         bringToFront(§_-Yi§);
         §_-pG§();
      }
      
      override public function finishBuildLevel() : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc5_:String = null;
         §_-3o§();
         _loc7_;
         _loc7_;
         §_-Yi§.ignore = true;
         §_-Yi§.hideMe();
         statusBar.visible = false;
         this.§_-y6§ = new Array();
         this.§_-e3§ = new Array();
         _loc8_;
         this.§_-lR§ = new Array();
         _loc7_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         this.§_-y6§[0] = generatePlanetsString();
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         this.§_-e3§[0] = generateObjectsString();
         _loc7_;
         _loc7_;
         _loc7_;
         _loc8_;
         _loc8_;
         this.§_-lR§[0] = generateGatesString();
         _loc8_;
         if(this.§_-y6§[0].indexOf("::") != -1)
         {
         }
         var _loc1_:Array = this.§_-Yw§.split("$");
         var _loc2_:* = "";
         _loc8_;
         this.§_-bq§ = new Array();
         var _loc3_:* = false;
         var _loc4_:* = 0;
         while(_loc4_ < _loc1_.length)
         {
            _loc8_;
            _loc8_;
            _loc5_ = _loc1_[_loc4_];
            _loc8_;
            _loc8_;
            _loc8_;
            _loc7_;
            if(!(_loc1_[_loc4_] == "ET%0") && !(_loc5_ == "ET%1"))
            {
               _loc7_;
               _loc7_;
               _loc7_;
               _loc7_;
               if(_loc5_.indexOf("ST") != -1)
               {
                  _loc8_;
                  _loc3_ = true;
               }
               _loc7_;
               _loc7_;
               if(_loc3_)
               {
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc8_;
                  if(_loc2_ != "")
                  {
                     _loc7_;
                     _loc7_;
                     _loc7_;
                     _loc8_;
                     _loc8_;
                     _loc2_ = _loc2_ + "$";
                  }
                  _loc8_;
                  _loc2_ = _loc2_ + _loc5_;
                  if(_loc5_.indexOf("ET") != -1)
                  {
                     this.§_-bq§.push(_loc2_);
                     _loc2_ = "";
                     _loc3_ = false;
                  }
               }
            }
            _loc4_++;
         }
         this.§_-e7§ = this.§_-bq§.length;
         this.§_-qi§ = new Array();
         _loc8_;
         this.§_-Nh§ = new Array();
         _loc7_;
         _loc7_;
         this.§_-eh§ = 0;
         _loc7_;
         this.§_-Vu§ = false;
         _loc8_;
         §_-2h§ = §_-x5§ = this.§_-e7§;
         this.addCacheLoadingBar();
         stage.addEventListener(Event.ENTER_FRAME,this.§_-si§,false,0,true);
      }
      
      public function §_-si§(param1:Event) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         if(!this.§_-Vu§)
         {
            _loc5_;
            _loc5_;
            this.§_-R5§(this.§_-eh§);
            _loc4_;
            _loc4_;
            _loc5_;
            §_-x5§--;
            _loc4_;
            §_-5H§[0].width = Math.floor(800 * (1 - §_-x5§ / §_-2h§));
         }
      }
      
      public function §_-R5§(param1:int) : void
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         _loc8_;
         _loc8_;
         this.§_-Vu§ = true;
         _loc7_;
         this.§_-Cw§(param1);
         var _loc2_:* = 0;
         _loc7_;
         _loc7_;
         simManager.replaySimEnd = false;
         var _loc3_:int = getTimer();
         while(!simManager.replaySimEnd)
         {
            _loc7_;
            _loc2_ = _loc2_ + 1000;
            simManager.simWorld(_loc2_);
         }
         _loc8_;
         _loc8_;
         if(simManager.timeSkipTime.length > 0)
         {
            _loc7_;
            _loc7_;
            _loc8_;
            _loc8_;
            this.timeSkipTime[param1] = simManager.timeSkipTime;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            this.timeSkipDuration[param1] = simManager.timeSkipDuration;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc8_;
            this.§_-vD§[param1] = simManager.lastSimTime - simManager.timeSkipDuration[simManager.timeSkipDuration.length - 1];
            _loc8_;
         }
         else
         {
            _loc7_;
            _loc7_;
            _loc8_;
            _loc8_;
            _loc8_;
            this.timeSkipTime[param1] = [];
            _loc7_;
            _loc8_;
            this.timeSkipDuration[param1] = [];
            this.§_-vD§[param1] = simManager.lastSimTime;
         }
         this.§_-Ln§();
         var _loc4_:String = generatePlanetsString();
         _loc7_;
         _loc7_;
         if(_loc4_.indexOf("::") != -1)
         {
         }
         var _loc5_:String = generateObjectsString(true);
         var _loc6_:String = generateGatesString();
         _loc7_;
         _loc7_;
         this.§_-TB§(param1,_loc4_,_loc5_,_loc6_);
      }
      
      public function §_-Rz§(param1:int, param2:int) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = 0;
         _loc5_;
         _loc5_;
         _loc3_ = 0;
         while(_loc3_ < this.timeSkipTime[param1].length)
         {
            _loc5_;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            _loc5_;
            if(_loc3_ == this.timeSkipTime[param1].length - 1 || this.timeSkipTime[param1][_loc3_ + 1] >= param2)
            {
               _loc5_;
               _loc5_;
               break;
            }
            _loc3_++;
            _loc4_;
         }
         return this.timeSkipDuration[param1][_loc3_];
      }
      
      public function §_-TB§(param1:int, param2:String, param3:String, param4:String) : void
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         _loc7_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         this.§_-y6§[param1 + 1] = param2;
         _loc7_;
         _loc8_;
         _loc7_;
         _loc7_;
         _loc8_;
         _loc8_;
         this.§_-e3§[param1 + 1] = param3;
         this.§_-lR§[param1 + 1] = param4;
         _loc8_;
         _loc8_;
         this.§_-eh§++;
         if(this.§_-eh§ > this.§_-e7§ - 1)
         {
            stage.removeEventListener(Event.ENTER_FRAME,this.§_-si§);
            simOnly = false;
            this.§_-jO§();
            _loc8_;
            _loc8_;
            this.removeCacheLoadingBar();
         }
         else
         {
            this.§_-Vu§ = false;
         }
      }
      
      public function §_-sF§(param1:int, param2:Boolean = true) : void
      {
         var _loc12_:* = true;
         var _loc13_:* = false;
         var _loc3_:Array = null;
         var _loc9_:Array = null;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         _loc12_;
         _loc12_;
         SafeGlobal.§_-Mk§ = param1;
         _loc13_;
         Global.lobby_display.hideReplayCover();
         _loc12_;
         visible = true;
         _loc13_;
         this.§_-jv§ = new Array();
         _loc12_;
         this.§_-jv§ = this.§_-bq§[param1].split("$");
         _loc3_ = this.§_-jv§[0].split("%");
         _loc12_;
         _loc12_;
         currentTeam = int(_loc3_[1]);
         var _loc4_:int = currentTeam;
         _loc13_;
         currentUnit = int(_loc3_[2]);
         var _loc5_:int = currentUnit;
         var _loc6_:String = _loc3_[3];
         §_-IF§ = _loc3_[4];
         this.§_-P2§ = this.§_-vD§[param1];
         _loc12_;
         _loc12_;
         if(!§_-Y0§)
         {
            _loc12_;
            _loc12_;
            §_-Y0§ = true;
            addEventListener(Event.ENTER_FRAME,§_-kg§);
         }
         §_-vA§ = true;
         §_-01§();
         _loc12_;
         §_-rf§();
         §_-Yi§.reset();
         _loc13_;
         _loc13_;
         §_-XG§ = 0;
         §_-tO§();
         camera.emptyList();
         updateTeamHealths();
         currentTeam = _loc4_;
         simManager.endOfTurnEffectsDone = false;
         simManager.turnOver = false;
         _loc13_;
         simManager.doSkip = true;
         var _loc7_:* = false;
         var _loc8_:* = 0;
         while(true)
         {
            _loc13_;
            _loc13_;
            if(_loc8_ >= units.length)
            {
               break;
            }
            if(units[_loc8_].team == _loc4_ && units[_loc8_].unitID == _loc5_)
            {
               currentUnit = _loc8_;
               units[_loc8_].current = true;
               _loc13_;
               _loc13_;
               §_-N7§[_loc8_].makeSelected();
               _loc12_;
               _loc12_;
               bringToFront(§_-N7§[_loc8_]);
               camera.addTarget(units[currentUnit],-1,"unit startTurn");
               §_-a9§.x = units[currentUnit].iX;
               §_-a9§.y = units[currentUnit].iY;
               §_-a9§.active = false;
               _loc12_;
               _loc12_;
               _loc7_ = true;
               _loc13_;
               _loc13_;
               units[currentUnit].showName(true);
               _loc12_;
            }
            else
            {
               units[_loc8_].current = false;
               §_-N7§[_loc8_].makeUnselected();
               _loc13_;
               _loc13_;
            }
            _loc8_++;
            _loc13_;
            _loc13_;
         }
         if(!_loc7_)
         {
            _loc13_;
         }
         if(param2)
         {
            _loc13_;
            _loc13_;
            §_-tS§(units[currentUnit]);
            _loc13_;
            _loc13_;
            units[currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_THINKINGSETUP,SafeGlobal.ANIM_UNIT_THINKING]);
            _loc13_;
         }
         myTurn = false;
         _loc13_;
         _loc13_;
         §_-uU§ = getTimer();
         _loc12_;
         turnState = "shoot";
         §_-N7§[currentUnit].makeUnselected();
         _loc13_;
         _loc13_;
         if(param2)
         {
            showMessage(teams[_loc4_].teamName + "\'s turn",SafeGlobal.colour_hex[teams[_loc4_].colourID]);
         }
         §_-Tw§();
         §_-mA§(_loc4_);
         _loc12_;
         _loc13_;
         _loc12_;
         if(_loc6_ != "")
         {
            _loc9_ = _loc6_.split(",");
            _loc12_;
            addPowerUp(_loc9_[0],_loc9_[1],_loc9_[2],_loc9_[3],_loc9_[4],_loc9_[5]);
         }
         simManager.sentEndSim = false;
         _loc12_;
         if(param2)
         {
            _loc13_;
            _loc13_;
            _loc10_ = 0;
            _loc12_;
            _loc13_;
            _loc13_;
            _loc11_ = 1;
            _loc12_;
            while(_loc11_ < this.§_-jv§.length)
            {
               _loc3_ = this.§_-jv§[_loc11_].split("%");
               _loc10_ = this.§_-Rz§(param1,int(_loc3_[1]));
               _loc12_;
               _loc12_;
               if(_loc3_[0] == "UW")
               {
                  _loc12_;
                  _loc12_;
                  this.§_-5V§(this.§_-jv§[_loc11_],_loc10_);
                  _loc12_;
                  _loc12_;
               }
               else if(_loc3_[0] == "SW")
               {
                  this.§_-4D§(this.§_-jv§[_loc11_],_loc10_);
               }
               else if(_loc3_[0] == "EW")
               {
                  this.§_-Mx§(this.§_-jv§[_loc11_],_loc10_);
                  _loc13_;
               }
               else if(_loc3_[0] == "ET")
               {
                  _loc12_;
                  _loc12_;
                  this.§_-pM§(this.§_-jv§[_loc11_],_loc10_);
                  _loc13_;
               }
               
               
               
               _loc11_++;
            }
            _loc12_;
            _loc12_;
            simManager.checkAndFixNoEndTurn();
         }
         if(param2)
         {
            _loc12_;
            _loc12_;
            _loc13_;
            _loc13_;
            _loc13_;
            _loc13_;
            _loc13_;
            this.§_-eN§.§_-RU§(0,this.§_-P2§);
            _loc13_;
            _loc13_;
         }
         else
         {
            this.§_-eN§.§_-RU§(0,this.§_-P2§,true);
         }
      }
      
      private function §_-jO§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.§_-aI§();
         _loc2_;
         _loc2_;
         this.§_-h1§(0);
         _loc1_;
         _loc1_;
         this.§_-eN§ = new §_-kE§();
         _loc1_;
         this.§_-eN§.init(this.§_-e7§,this.§_-qi§,this.§_-Nh§);
         _loc1_;
         _loc1_;
         SafeGlobal.TIMELINE.timeline.addChild(this.§_-eN§);
         Global.lobby_display.hideReplayLoading();
         _loc2_;
         this.§_-eN§.tweenOn(true);
         this.§_-sF§(0,false);
      }
      
      private function §_-5V§(param1:String, param2:int = 0) : void
      {
         var _loc13_:* = true;
         var _loc14_:* = false;
         var _loc12_:Array = null;
         var _loc3_:Array = param1.split("%");
         var _loc4_:int = int(_loc3_[1]) - param2;
         var _loc5_:int = int(_loc3_[2]);
         var _loc6_:* = -1;
         var _loc7_:* = -1;
         var _loc8_:* = -1;
         var _loc9_:* = -1;
         var _loc10_:* = -1;
         var _loc11_:* = -1;
         _loc13_;
         _loc13_;
         if(_loc3_.length >= 4)
         {
            _loc13_;
            _loc14_;
            _loc14_;
            _loc6_ = int(_loc3_[3]);
         }
         if(_loc3_.length >= 5)
         {
            _loc7_ = int(_loc3_[4]);
            _loc14_;
            _loc14_;
         }
         if(_loc3_.length >= 6)
         {
            _loc8_ = int(_loc3_[5]);
         }
         if(_loc3_.length >= 7)
         {
            _loc9_ = int(_loc3_[6]);
         }
         if(_loc3_.length >= 8)
         {
            _loc13_;
            _loc10_ = int(_loc3_[7]);
            _loc13_;
         }
         if(_loc3_.length >= 9)
         {
            _loc13_;
            _loc13_;
            _loc11_ = int(_loc3_[8]);
         }
         _loc14_;
         _loc14_;
         if(_loc5_ == -1)
         {
            _loc12_ = [-1,-1,-1,-1,"",-1];
         }
         else
         {
            _loc12_ = SafeGlobal.§_-r§(_loc5_);
         }
         if(_loc12_[1] == SafeGlobal.WEAPONTYPE_PROJECTILE)
         {
            this.§_-kL§(_loc4_,_loc12_[2],_loc6_,_loc7_,_loc5_,_loc12_[4]);
            _loc14_;
         }
         else if(_loc12_[1] == SafeGlobal.WEAPONTYPE_MINE)
         {
            this.§_-mZ§(_loc4_,_loc12_[2]);
         }
         else if(_loc12_[1] == SafeGlobal.WEAPONTYPE_MELEE)
         {
            this.§_-NJ§(_loc4_,_loc12_[0]);
            _loc14_;
         }
         else if(_loc12_[1] == SafeGlobal.WEAPONTYPE_INCOMING)
         {
            _loc13_;
            this.§_-v3§(_loc4_,_loc12_[0],_loc6_);
         }
         else if(_loc12_[1] == SafeGlobal.WEAPONTYPE_GATE)
         {
            _loc13_;
            this.§_-jy§(_loc4_,_loc12_[2],_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_);
         }
         else if(_loc12_[1] == SafeGlobal.WEAPONTYPE_TELEPORT)
         {
            this.§_-ns§(_loc4_,_loc12_[0],_loc6_,_loc7_,_loc8_,_loc9_);
         }
         else if(_loc12_[1] == SafeGlobal.WEAPONTYPE_PLANETGATE)
         {
            _loc13_;
            _loc13_;
            this.§_-dC§(_loc4_,_loc12_[0]);
         }
         
         
         
         
         
         
      }
      
      private function §_-4D§(param1:String, param2:int = 0) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:Array = param1.split("%");
         var _loc4_:int = int(_loc3_[1]) - param2;
         var _loc5_:int = int(_loc3_[2]);
         _loc6_;
         addAction(SafeGlobal.SIMEVENT_STARTWALK,_loc4_,{"walkDir":_loc5_});
      }
      
      private function §_-Mx§(param1:String, param2:int = 0) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Array = param1.split("%");
         var _loc4_:int = int(_loc3_[1]) - param2;
         _loc6_;
         addAction(SafeGlobal.SIMEVENT_STOPWALK,_loc4_,null);
      }
      
      private function §_-pM§(param1:String, param2:int = 0) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Array = param1.split("%");
         var _loc4_:int = int(_loc3_[1]) - param2;
         _loc6_;
         _loc6_;
         addAction(SafeGlobal.SIMEVENT_ENDTURN,_loc4_,null);
      }
      
      private function §_-kL§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:String) : void
      {
         var _loc17_:* = true;
         var _loc18_:* = false;
         var _loc14_:Array = null;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc7_:Point = units[currentUnit].startPoint();
         var _loc8_:Number = _loc7_.x;
         var _loc9_:Number = _loc7_.y;
         var _loc10_:* = 500;
         var _loc11_:Array = param6.split("/");
         var _loc12_:Array = _loc11_[0].split(";");
         var _loc13_:* = 0;
         while(_loc13_ < _loc12_.length)
         {
            _loc14_ = _loc12_[_loc13_].split(",");
            if(_loc14_[0] == "r")
            {
               _loc18_;
               _loc18_;
               _loc15_ = int(_loc14_[1]);
               _loc18_;
               _loc17_;
               _loc16_ = int(_loc14_[2]);
               _loc17_;
               _loc17_;
               _loc17_;
               _loc17_;
               _loc17_;
               _loc18_;
               _loc18_;
               _loc17_;
               _loc10_ = (_loc15_ - 1) * _loc16_ * 100 + 500;
               _loc18_;
               _loc18_;
            }
            _loc13_++;
         }
         _loc17_;
         _loc17_;
         addAction(SafeGlobal.SIMEVENT_PROJECTILE,param1,{
            "wepType":param5,
            "pX":_loc8_,
            "pY":_loc9_,
            "mX":param3,
            "mY":param4,
            "pID":param2,
            "extraAim":_loc10_
         });
      }
      
      private function §_-mZ§(param1:int, param2:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Unit = units[currentUnit];
         _loc4_;
         _loc4_;
         addAction(SafeGlobal.SIMEVENT_MINE,param1,{
            "posX":_loc3_.iX,
            "posY":_loc3_.iY,
            "posR":_loc3_.iR,
            "mineType":param2,
            "lPlanet":_loc3_.locationPlanet,
            "lShape":_loc3_.locationShape,
            "lCurve":_loc3_.locationCurve,
            "lCurveX":_loc3_.locationCurveX,
            "lCurveY":_loc3_.locationCurveY,
            "lCurveRadius":_loc3_.locationCurveRadius,
            "lAngle":_loc3_.locationAngle
         });
      }
      
      private function §_-NJ§(param1:int, param2:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Unit = units[currentUnit];
         _loc4_;
         addAction(SafeGlobal.SIMEVENT_MELEE,param1,{"wepType":param2});
      }
      
      private function §_-ns§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int) : void
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc7_:Unit = units[currentUnit];
         _loc8_;
         _loc8_;
         addAction(SafeGlobal.SIMEVENT_POINTSELECT,param1,{
            "wepType":param2,
            "planetID":param3,
            "shapeID":param4,
            "curveID":param5,
            "angle":param6
         });
      }
      
      private function §_-dC§(param1:int, param2:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Unit = units[currentUnit];
         _loc5_;
         addAction(SafeGlobal.SIMEVENT_PLANETSELECT,param1,{"wepType":param2});
      }
      
      private function §_-v3§(param1:int, param2:int, param3:int) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Unit = units[currentUnit];
         _loc5_;
         _loc5_;
         addAction(SafeGlobal.SIMEVENT_INCOMING,param1,{
            "wepType":param2,
            "inAngle":param3
         });
      }
      
      private function §_-jy§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int = -1, param7:int = -1, param8:int = -1) : void
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc9_:Unit = units[currentUnit];
         _loc10_;
         addAction(SafeGlobal.SIMEVENT_GATE,param1,{
            "wepType":param2,
            "pX1":param3,
            "pY1":param4,
            "pR1":param5,
            "pX2":param6,
            "pY2":param7,
            "pR2":param8
         });
      }
      
      override public function displayYourTurn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         selectWeapon(0);
         _loc2_;
         showWeaponPanelButton();
         _loc2_;
         §_-VK§(units[currentUnit]);
      }
      
      override public function sendEndOfTurn(param1:int) : *
      {
      }
      
      override public function sendEndSim() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(!simOnly)
         {
            _loc2_;
            _loc2_;
            this.§_-eN§.tweenOn();
         }
      }
      
      override public function showWaiting() : *
      {
      }
      
      override public function sendFireProjectile(param1:int, param2:int, param3:int, param4:int) : void
      {
      }
      
      override public function sendLayMine(param1:int, param2:int) : void
      {
      }
      
      override public function sendTeleportTo(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int) : void
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
      }
      
      override public function sendMelee(param1:int, param2:int) : void
      {
      }
      
      override public function sendFlashError(param1:String) : void
      {
      }
      
      override public function sendPlaceGate(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int = -1, param7:int = -1, param8:int = -1) : void
      {
      }
      
      override public function sendPlacePlanetGate(param1:int, param2:int) : void
      {
      }
      
      override public function requestCacheState() : *
      {
      }
      
      override public function startTurn(param1:int, param2:int, param3:String, param4:String) : *
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc7_:Array = null;
         if(!§_-Y0§)
         {
            _loc8_;
            _loc8_;
            §_-Y0§ = true;
            _loc8_;
            _loc8_;
            addEventListener(Event.ENTER_FRAME,§_-kg§);
            _loc8_;
            _loc8_;
            stage.addEventListener(MouseEvent.MOUSE_DOWN,§_-K2§);
            stage.addEventListener(KeyboardEvent.KEY_DOWN,§_-ur§);
            stage.addEventListener(KeyboardEvent.KEY_UP,§_-UQ§);
         }
         §_-rf§();
         §_-Yi§.reset();
         §_-mu§();
         §_-XG§ = 0;
         _loc8_;
         _loc8_;
         §_-tO§();
         camera.emptyList();
         currentTeam = param1;
         simManager.endOfTurnEffectsDone = false;
         simManager.turnOver = false;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         while(_loc6_ < units.length)
         {
            _loc9_;
            _loc9_;
            if(units[_loc6_].team == param1 && units[_loc6_].unitID == param2)
            {
               currentUnit = _loc6_;
               camera.addTarget(units[currentUnit],-1,"unit startTurn");
               _loc8_;
               _loc8_;
               §_-a9§.x = units[currentUnit].iX;
               §_-a9§.y = units[currentUnit].iY;
               _loc8_;
               §_-a9§.active = false;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc5_ = true;
               _loc9_;
               units[currentUnit].showName(true);
               _loc9_;
               _loc9_;
            }
            _loc6_++;
            _loc8_;
         }
         if(!_loc5_)
         {
            _loc8_;
         }
         myTurn = false;
         §_-uU§ = getTimer() + §_-lD§;
         turnState = "shoot";
         §_-Tw§();
         _loc9_;
         _loc8_;
         _loc8_;
         if(param3 != "")
         {
            _loc7_ = param3.split(",");
            _loc9_;
            _loc9_;
            addPowerUp(_loc7_[0],_loc7_[1],_loc7_[2],_loc7_[3],_loc7_[4],_loc7_[5]);
         }
         §_-IF§ = param4;
         simManager.sentEndSim = false;
      }
      
      override public function mainLoopReplayEditor(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-eN§.§_-RU§(param1,this.§_-P2§);
      }
      
      public function playFromTurn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-aI§();
         _loc3_;
         _loc3_;
         this.§_-h1§(param1);
         _loc3_;
         _loc3_;
         this.§_-sF§(param1);
      }
      
      public function resetToTurnStart(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-aI§();
         _loc2_;
         this.§_-h1§(param1);
         _loc3_;
         this.§_-sF§(param1,false);
      }
      
      public function §_-QJ§() : void
      {
      }
      
      public function §_-KK§() : void
      {
      }
      
      public function §_-aI§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         §_-Y0§ = false;
         _loc2_;
         removeEventListener(Event.ENTER_FRAME,§_-kg§);
         stage.removeEventListener(MouseEvent.MOUSE_DOWN,§_-K2§);
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,§_-ur§);
         stage.removeEventListener(KeyboardEvent.KEY_UP,§_-UQ§);
         _loc3_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,§_-XE§);
         _loc3_;
         _loc3_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,§_-KU§);
         _loc3_;
         _loc3_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,§_-7a§);
         _loc2_;
         _loc2_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,§_-Tm§);
         stage.removeEventListener(MouseEvent.MOUSE_UP,§_-DK§);
         _loc3_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,incomingDragStop);
         stage.removeEventListener(MouseEvent.MOUSE_UP,§_-iD§);
         var _loc1_:* = 0;
         while(_loc1_ < units.length)
         {
            units[_loc1_].removeListeners();
            _loc2_;
            _loc1_++;
            _loc2_;
            _loc2_;
         }
         _loc3_;
         §_-nL§.splice(0);
         _loc3_;
         this.§_-Ln§();
      }
      
      public function §_-h1§(param1:int) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfucation" for better results.
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §_-Ln§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         §_-m8§();
         §_-0T§();
         §_-Wb§(false);
         §_-1g§();
         _loc2_;
         _loc2_;
         §_-6M§(§_-GD§);
         simManager.emptyList();
         _loc1_;
         simManager.clearSkips();
      }
      
      public function §_-Cw§(param1:int) : void
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc2_:Array = null;
         var _loc9_:Array = null;
         _loc11_;
         _loc11_;
         this.§_-jv§ = new Array();
         _loc11_;
         this.§_-jv§ = this.§_-bq§[param1].split("$");
         _loc2_ = this.§_-jv§[0].split("%");
         _loc10_;
         _loc10_;
         currentTeam = int(_loc2_[1]);
         var _loc3_:int = currentTeam;
         _loc11_;
         _loc11_;
         currentUnit = int(_loc2_[2]);
         var _loc4_:int = currentUnit;
         var _loc5_:String = _loc2_[3];
         §_-IF§ = _loc2_[4];
         _loc11_;
         _loc10_;
         _loc11_;
         _loc11_;
         _loc10_;
         _loc10_;
         this.§_-qi§[param1] = this.§_-Df§[currentTeam];
         _loc10_;
         _loc10_;
         this.§_-Nh§[param1] = this.§_-bz§[currentTeam];
         §_-vA§ = true;
         §_-XG§ = 0;
         _loc10_;
         currentTeam = _loc3_;
         _loc10_;
         simManager.endOfTurnEffectsDone = false;
         simManager.turnOver = false;
         var _loc6_:* = false;
         var _loc7_:* = 0;
         while(true)
         {
            _loc10_;
            if(_loc7_ >= units.length)
            {
               break;
            }
            _loc11_;
            _loc11_;
            if(units[_loc7_].team == _loc3_ && units[_loc7_].unitID == _loc4_)
            {
               currentUnit = _loc7_;
               units[_loc7_].current = true;
               _loc6_ = true;
               _loc11_;
            }
            else
            {
               units[_loc7_].current = false;
               _loc10_;
               _loc10_;
            }
            _loc7_++;
         }
         _loc11_;
         _loc11_;
         _loc10_;
         _loc10_;
         if(_loc6_)
         {
         }
         myTurn = false;
         _loc10_;
         turnState = "shoot";
         _loc11_;
         _loc11_;
         _loc10_;
         _loc11_;
         if(!(_loc5_ == null) && !(_loc5_ == ""))
         {
            _loc11_;
            _loc9_ = _loc5_.split(",");
            _loc10_;
            addPowerUp(_loc9_[0],_loc9_[1],_loc9_[2],_loc9_[3],_loc9_[4],_loc9_[5]);
         }
         simManager.sentEndSim = false;
         var _loc8_:* = 1;
         _loc10_;
         while(_loc8_ < this.§_-jv§.length)
         {
            _loc2_ = this.§_-jv§[_loc8_].split("%");
            _loc11_;
            _loc11_;
            if(_loc2_[0] == "UW")
            {
               this.§_-5V§(this.§_-jv§[_loc8_]);
            }
            else if(_loc2_[0] == "SW")
            {
               this.§_-4D§(this.§_-jv§[_loc8_]);
            }
            else if(_loc2_[0] == "EW")
            {
               this.§_-Mx§(this.§_-jv§[_loc8_]);
            }
            else if(_loc2_[0] == "ET")
            {
               this.§_-pM§(this.§_-jv§[_loc8_]);
               _loc10_;
            }
            
            
            
            _loc8_++;
         }
         _loc10_;
         _loc10_;
         simManager.checkAndFixNoEndTurn();
      }
      
      public function tweenOff() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-eN§.§_-PU§();
         screen.visible = false;
         §_-G9§.visible = false;
         _loc2_;
         §_-xC§.visible = false;
         _loc2_;
         §_-wP§.visible = false;
         _loc1_;
         §_-rI§.visible = false;
      }
      
      public function finishtweenOff() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc2_;
         _loc2_;
         SafeGlobal.TIMELINE.timeline.removeChild(this.§_-eN§);
         _loc1_;
         SafeGlobal.TIMELINE.bringLobbyDisplayToFront();
         _loc1_;
         _loc1_;
         destroyGame();
         _loc1_;
         _loc1_;
         finalDestroy();
      }
   }
}
