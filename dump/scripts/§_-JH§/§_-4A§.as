package §_-JH§
{
   import flash.events.Event;
   import flash.geom.ColorTransform;
   import flash.utils.getTimer;
   import flash.geom.Point;
   import flash.events.MouseEvent;
   import flash.events.KeyboardEvent;
   
   public class §_-4A§ extends Game
   {
      
      public function §_-4A§(param1:String, param2:String, param3:String, param4:String)
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         this.§_-Vq§ = [];
         this.timeSkipTime = [];
         this.timeSkipDuration = [];
         _loc6_;
         visible = false;
         SafeGlobal.§_-Rm§ = this;
         _loc5_;
         _loc5_;
         SafeGlobal.playerID = 0;
         if(!§_-xt§)
         {
            §_-xt§ = true;
            _loc6_;
         }
         SafeGlobal.orderDisplayFinished = true;
         SafeGlobal.orderSetupReady = true;
         simOnly = true;
         _loc6_;
         _loc6_;
         replay = true;
         §_-Pi§ = 0;
         _loc5_;
         _loc5_;
         this.§_-5A§ = param4;
         super(param1,param2,param3,param4);
      }
      
      private var §_-5A§:String;
      
      private var §_-vP§:Array;
      
      private var §_-C-§:int = 0;
      
      private var §_-1C§:Array;
      
      private var §_-0-I§:Array;
      
      private var §_-VG§:Array;
      
      private var §_-VQ§:Array;
      
      private var §_-RC§:Array;
      
      private var §_-uC§:Array;
      
      private var §_-Nd§:Array;
      
      private var §_-XY§:Array;
      
      private var §_-Yk§ = 0;
      
      private var §_-KF§:§_-VB§;
      
      private var §_-yl§:int = 30000;
      
      public var §_-Vq§:Array;
      
      public var timeSkipTime:Array;
      
      public var timeSkipDuration:Array;
      
      private var §_-T4§:Boolean = false;
      
      override public function addedToStage(param1:Event = null) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         removeEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
         _loc3_;
         §_-rX§();
         _loc3_;
         _loc3_;
         §_-BW§ = true;
         _loc3_;
         if(§_-Z7§)
         {
            _loc3_;
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
         while(_loc3_ < §_-h2§.length)
         {
            if(§_-h2§[_loc3_].processQueue.length > 0)
            {
               _loc7_;
               _loc7_;
               §_-h2§[_loc3_].processQueueItem();
               _loc7_;
               _loc7_;
               _loc2_ = true;
               _loc7_;
               §_-nv§--;
               _loc7_;
               _loc7_;
               §_-ct§[0].width = Math.floor(800 * (1 - §_-nv§ / §_-sL§));
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
         §_-ct§.push(new §_-xD§());
         _loc1_;
         §_-ct§[0].x = 0;
         _loc1_;
         §_-ct§[0].y = 595;
         _loc2_;
         _loc2_;
         §_-ct§[0].width = 1;
         _loc1_;
         SafeGlobal.TIMELINE.timeline.addChild(§_-ct§[0]);
      }
      
      override public function removeCacheLoadingBar() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         if(SafeGlobal.TIMELINE.timeline.contains(§_-ct§[0]))
         {
            _loc2_;
            _loc2_;
            SafeGlobal.TIMELINE.timeline.removeChild(§_-ct§[0]);
         }
      }
      
      override public function cacheLoopFinished() : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         removeEventListener(Event.ENTER_FRAME,this.cacheLoop);
         _loc4_;
         this.removeCacheLoadingBar();
         var _loc1_:* = 0;
         while(true)
         {
            _loc4_;
            _loc4_;
            if(_loc1_ >= units.length)
            {
               break;
            }
            units[_loc1_].costume = §_-h2§[units[_loc1_].costumeID];
            _loc5_;
            units[_loc1_].newAnimState([SafeGlobal.ANIM_UNIT_BOB]);
            _loc4_;
            _loc4_;
            _loc1_++;
            _loc4_;
            _loc4_;
         }
         _loc4_;
         stock = [];
         var _loc2_:* = 0;
         _loc4_;
         while(true)
         {
            _loc4_;
            if(_loc2_ >= stockData.length)
            {
               break;
            }
            stock.push(3);
            _loc5_;
            _loc4_;
            _loc4_;
            if(_loc2_ == 0)
            {
               _loc4_;
               stock[_loc2_] = 99;
               _loc4_;
               _loc4_;
            }
            _loc2_++;
            _loc4_;
         }
         var _loc3_:* = 0;
         while(_loc3_ < planets.length)
         {
            if(planets[_loc3_].radioactive > 0)
            {
               planets[_loc3_].activateRadioactivity(planets[_loc3_].radioactive,false);
               _loc5_;
            }
            if(planets[_loc3_].shieldHealth > 0)
            {
               planets[_loc3_].activateShield(planets[_loc3_].shieldHealth,false,false);
            }
            _loc3_++;
         }
         _loc4_;
         _loc4_;
         §_-hv§();
         _loc5_;
         _loc5_;
         §_-xl§();
         this.finishBuildLevel();
         §_-aF§ = true;
         bringToFront(§_-Jz§);
         §_-Co§();
      }
      
      override public function finishBuildLevel() : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc5_:String = null;
         _loc7_;
         _loc7_;
         §_-OI§();
         §_-Jz§.ignore = true;
         §_-Jz§.hideMe();
         statusBar.visible = false;
         this.§_-0-I§ = new Array();
         _loc8_;
         this.§_-VG§ = new Array();
         _loc7_;
         this.§_-VQ§ = new Array();
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         this.§_-0-I§[0] = generatePlanetsString();
         _loc8_;
         _loc8_;
         _loc8_;
         this.§_-VG§[0] = generateObjectsString();
         _loc7_;
         _loc7_;
         _loc8_;
         _loc8_;
         this.§_-VQ§[0] = generateGatesString();
         if(this.§_-0-I§[0].indexOf("::") != -1)
         {
         }
         var _loc1_:Array = this.§_-5A§.split("$");
         var _loc2_:* = "";
         _loc7_;
         _loc7_;
         this.§_-vP§ = new Array();
         var _loc3_:* = false;
         var _loc4_:* = 0;
         while(_loc4_ < _loc1_.length)
         {
            _loc8_;
            _loc8_;
            _loc7_;
            _loc5_ = _loc1_[_loc4_];
            _loc7_;
            _loc7_;
            _loc7_;
            if(!(_loc1_[_loc4_] == "ET%0") && !(_loc5_ == "ET%1"))
            {
               _loc7_;
               _loc8_;
               _loc8_;
               _loc8_;
               if(_loc5_.indexOf("ST") != -1)
               {
                  _loc8_;
                  _loc3_ = true;
                  _loc8_;
               }
               if(_loc3_)
               {
                  _loc7_;
                  if(_loc2_ != "")
                  {
                     _loc8_;
                     _loc7_;
                     _loc8_;
                     _loc8_;
                     _loc2_ = _loc2_ + "$";
                     _loc7_;
                  }
                  _loc2_ = _loc2_ + _loc5_;
                  _loc7_;
                  if(_loc5_.indexOf("ET") != -1)
                  {
                     _loc7_;
                     _loc7_;
                     this.§_-vP§.push(_loc2_);
                     _loc2_ = "";
                     _loc8_;
                     _loc8_;
                     _loc3_ = false;
                     _loc7_;
                     _loc7_;
                  }
               }
            }
            _loc4_++;
         }
         _loc7_;
         this.§_-C-§ = this.§_-vP§.length;
         this.§_-RC§ = new Array();
         this.§_-uC§ = new Array();
         this.§_-Yk§ = 0;
         this.§_-T4§ = false;
         _loc7_;
         §_-U7§ = §_-tO§ = this.§_-C-§;
         this.addCacheLoadingBar();
         _loc8_;
         stage.addEventListener(Event.ENTER_FRAME,this.§_-zr§,false,0,true);
      }
      
      public function §_-zr§(param1:Event) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         if(!this.§_-T4§)
         {
            _loc4_;
            _loc4_;
            this.§_-Fv§(this.§_-Yk§);
            _loc4_;
            _loc4_;
            §_-tO§--;
            _loc5_;
            §_-ct§[0].width = Math.floor(800 * (1 - §_-tO§ / §_-U7§));
         }
      }
      
      public function §_-Fv§(param1:int) : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         _loc7_;
         this.§_-T4§ = true;
         _loc8_;
         _loc8_;
         this.§_-EP§(param1);
         var _loc2_:* = 0;
         _loc7_;
         _loc7_;
         simManager.replaySimEnd = false;
         var _loc3_:int = getTimer();
         while(!simManager.replaySimEnd)
         {
            _loc7_;
            _loc2_ = _loc2_ + 1000;
            _loc8_;
            simManager.simWorld(_loc2_);
         }
         if(simManager.timeSkipTime.length > 0)
         {
            _loc8_;
            _loc8_;
            this.timeSkipTime[param1] = simManager.timeSkipTime;
            _loc7_;
            _loc7_;
            _loc8_;
            _loc8_;
            this.timeSkipDuration[param1] = simManager.timeSkipDuration;
            _loc8_;
            _loc8_;
            this.§_-Vq§[param1] = simManager.lastSimTime - simManager.timeSkipDuration[simManager.timeSkipDuration.length - 1];
         }
         else
         {
            _loc8_;
            _loc8_;
            _loc8_;
            this.timeSkipTime[param1] = [];
            _loc8_;
            _loc8_;
            _loc8_;
            this.timeSkipDuration[param1] = [];
            this.§_-Vq§[param1] = simManager.lastSimTime;
            _loc7_;
            _loc7_;
         }
         this.§_-hg§();
         var _loc4_:String = generatePlanetsString();
         _loc8_;
         if(_loc4_.indexOf("::") != -1)
         {
         }
         var _loc5_:String = generateObjectsString(true);
         var _loc6_:String = generateGatesString();
         _loc8_;
         this.§_-Lr§(param1,_loc4_,_loc5_,_loc6_);
      }
      
      public function §_-0-J§(param1:int, param2:int) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         _loc5_;
         _loc5_;
         _loc3_ = 0;
         while(_loc3_ < this.timeSkipTime[param1].length)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            if(_loc3_ == this.timeSkipTime[param1].length - 1 || this.timeSkipTime[param1][_loc3_ + 1] >= param2)
            {
               _loc5_;
               _loc5_;
               break;
            }
            _loc3_++;
            _loc5_;
         }
         return this.timeSkipDuration[param1][_loc3_];
      }
      
      public function §_-Lr§(param1:int, param2:String, param3:String, param4:String) : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         _loc8_;
         _loc8_;
         _loc7_;
         _loc8_;
         _loc8_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         this.§_-0-I§[param1 + 1] = param2;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc7_;
         _loc7_;
         _loc7_;
         this.§_-VG§[param1 + 1] = param3;
         _loc8_;
         _loc8_;
         this.§_-VQ§[param1 + 1] = param4;
         _loc7_;
         _loc7_;
         _loc7_;
         this.§_-Yk§++;
         _loc8_;
         if(this.§_-Yk§ > this.§_-C-§ - 1)
         {
            _loc8_;
            stage.removeEventListener(Event.ENTER_FRAME,this.§_-zr§);
            simOnly = false;
            _loc8_;
            _loc8_;
            this.§_-lj§();
            this.removeCacheLoadingBar();
         }
         else
         {
            this.§_-T4§ = false;
         }
      }
      
      public function §_-7E§(param1:int, param2:Boolean = true) : void
      {
         var _loc12_:* = true;
         var _loc13_:* = false;
         var _loc3_:Array = null;
         var _loc9_:Array = null;
         var _loc10_:* = 0;
         var _loc11_:* = 0;
         _loc12_;
         _loc12_;
         SafeGlobal.§_-ER§ = param1;
         _loc12_;
         Global.lobby_display.hideReplayCover();
         _loc13_;
         _loc13_;
         visible = true;
         _loc13_;
         this.§_-1C§ = new Array();
         _loc13_;
         this.§_-1C§ = this.§_-vP§[param1].split("$");
         _loc3_ = this.§_-1C§[0].split("%");
         _loc13_;
         currentTeam = int(_loc3_[1]);
         var _loc4_:int = currentTeam;
         _loc12_;
         currentUnit = int(_loc3_[2]);
         var _loc5_:int = currentUnit;
         var _loc6_:String = _loc3_[3];
         _loc12_;
         §_-fz§ = _loc3_[4];
         this.§_-yl§ = this.§_-Vq§[param1];
         if(!§_-g1§)
         {
            §_-g1§ = true;
            addEventListener(Event.ENTER_FRAME,§_-Tx§);
         }
         §_-qI§ = true;
         _loc12_;
         §_-B7§();
         _loc12_;
         _loc12_;
         §_-fP§();
         §_-Jz§.reset();
         §_-d3§ = 0;
         _loc13_;
         §_-PE§();
         camera.emptyList();
         _loc12_;
         _loc12_;
         updateTeamHealths();
         currentTeam = _loc4_;
         simManager.endOfTurnEffectsDone = false;
         simManager.turnOver = false;
         _loc13_;
         _loc13_;
         simManager.doSkip = true;
         var _loc7_:* = false;
         var _loc8_:* = 0;
         while(true)
         {
            _loc13_;
            if(_loc8_ >= units.length)
            {
               break;
            }
            if(units[_loc8_].team == _loc4_ && units[_loc8_].unitID == _loc5_)
            {
               _loc13_;
               _loc13_;
               currentUnit = _loc8_;
               units[_loc8_].current = true;
               §_-Nb§[_loc8_].makeSelected();
               bringToFront(§_-Nb§[_loc8_]);
               camera.addTarget(units[currentUnit],-1,"unit startTurn");
               §_-7X§.x = units[currentUnit].iX;
               _loc12_;
               _loc12_;
               §_-7X§.y = units[currentUnit].iY;
               _loc13_;
               _loc13_;
               §_-7X§.active = false;
               _loc13_;
               _loc13_;
               _loc7_ = true;
               _loc12_;
               _loc12_;
               units[currentUnit].showName(true);
            }
            else
            {
               units[_loc8_].current = false;
               _loc12_;
               §_-Nb§[_loc8_].makeUnselected();
            }
            _loc8_++;
            _loc12_;
            _loc12_;
         }
         _loc13_;
         _loc13_;
         _loc13_;
         _loc13_;
         if(_loc7_)
         {
         }
         _loc13_;
         if(param2)
         {
            _loc12_;
            _loc12_;
            §_-o6§(units[currentUnit]);
            _loc12_;
            units[currentUnit].newAnimState([SafeGlobal.ANIM_UNIT_THINKINGSETUP,SafeGlobal.ANIM_UNIT_THINKING]);
         }
         myTurn = false;
         §_-Y8§ = getTimer();
         turnState = "shoot";
         §_-Nb§[currentUnit].makeUnselected();
         _loc13_;
         _loc13_;
         if(param2)
         {
            _loc13_;
            showMessage(teams[_loc4_].teamName + "\'s turn",SafeGlobal.colour_hex[teams[_loc4_].colourID]);
         }
         §_-M2§();
         §_-pB§(_loc4_);
         _loc12_;
         _loc13_;
         if(_loc6_ != "")
         {
            _loc13_;
            _loc13_;
            _loc9_ = _loc6_.split(",");
            _loc12_;
            _loc12_;
            addPowerUp(_loc9_[0],_loc9_[1],_loc9_[2],_loc9_[3],_loc9_[4],_loc9_[5]);
         }
         simManager.sentEndSim = false;
         if(param2)
         {
            _loc13_;
            _loc13_;
            _loc10_ = 0;
            _loc12_;
            _loc11_ = 1;
            while(_loc11_ < this.§_-1C§.length)
            {
               _loc3_ = this.§_-1C§[_loc11_].split("%");
               _loc13_;
               _loc13_;
               _loc10_ = this.§_-0-J§(param1,int(_loc3_[1]));
               if(_loc3_[0] == "UW")
               {
                  this.§_-FZ§(this.§_-1C§[_loc11_],_loc10_);
                  _loc12_;
               }
               else if(_loc3_[0] == "SW")
               {
                  _loc12_;
                  _loc12_;
                  this.§_-je§(this.§_-1C§[_loc11_],_loc10_);
               }
               else if(_loc3_[0] == "EW")
               {
                  this.§_-JL§(this.§_-1C§[_loc11_],_loc10_);
               }
               else if(_loc3_[0] == "ET")
               {
                  this.§_-LU§(this.§_-1C§[_loc11_],_loc10_);
               }
               
               
               
               _loc11_++;
            }
            _loc13_;
            simManager.checkAndFixNoEndTurn();
         }
         if(param2)
         {
            _loc13_;
            _loc13_;
            _loc13_;
            _loc13_;
            _loc12_;
            this.§_-KF§.§_-94§(0,this.§_-yl§);
            _loc13_;
         }
         else
         {
            this.§_-KF§.§_-94§(0,this.§_-yl§,true);
         }
      }
      
      private function §_-lj§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.§_-wL§();
         this.§_-Wv§(0);
         this.§_-KF§ = new §_-VB§();
         _loc1_;
         _loc1_;
         _loc2_;
         this.§_-KF§.init(this.§_-C-§,this.§_-RC§,this.§_-uC§);
         _loc1_;
         _loc1_;
         SafeGlobal.TIMELINE.timeline.addChild(this.§_-KF§);
         Global.lobby_display.hideReplayLoading();
         this.§_-KF§.tweenOn(true);
         _loc2_;
         this.§_-7E§(0,false);
      }
      
      private function §_-FZ§(param1:String, param2:int = 0) : void
      {
         var _loc13_:* = false;
         var _loc14_:* = true;
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
         if(_loc3_.length >= 4)
         {
            _loc13_;
            _loc6_ = int(_loc3_[3]);
            _loc13_;
            _loc13_;
         }
         if(_loc3_.length >= 5)
         {
            _loc7_ = int(_loc3_[4]);
            _loc14_;
         }
         if(_loc3_.length >= 6)
         {
            _loc8_ = int(_loc3_[5]);
            _loc13_;
            _loc13_;
         }
         if(_loc3_.length >= 7)
         {
            _loc13_;
            _loc13_;
            _loc9_ = int(_loc3_[6]);
            _loc13_;
         }
         if(_loc3_.length >= 8)
         {
            _loc10_ = int(_loc3_[7]);
         }
         if(_loc3_.length >= 9)
         {
            _loc14_;
            _loc14_;
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
            _loc12_ = SafeGlobal.§_-AT§(_loc5_);
         }
         if(_loc12_[1] == SafeGlobal.WEAPONTYPE_PROJECTILE)
         {
            this.§_-qt§(_loc4_,_loc12_[2],_loc6_,_loc7_,_loc5_,_loc12_[4]);
            _loc13_;
            _loc13_;
         }
         else if(_loc12_[1] == SafeGlobal.WEAPONTYPE_MINE)
         {
            _loc13_;
            _loc13_;
            this.§_-Wy§(_loc4_,_loc12_[2]);
            _loc13_;
            _loc13_;
         }
         else if(_loc12_[1] == SafeGlobal.WEAPONTYPE_MELEE)
         {
            _loc14_;
            this.§_-GO§(_loc4_,_loc12_[0]);
         }
         else if(_loc12_[1] == SafeGlobal.WEAPONTYPE_INCOMING)
         {
            _loc14_;
            this.§_-Yh§(_loc4_,_loc12_[0],_loc6_);
            _loc13_;
            _loc13_;
         }
         else if(_loc12_[1] == SafeGlobal.WEAPONTYPE_GATE)
         {
            this.§_-kJ§(_loc4_,_loc12_[2],_loc6_,_loc7_,_loc8_,_loc9_,_loc10_,_loc11_);
            _loc14_;
         }
         else if(_loc12_[1] == SafeGlobal.WEAPONTYPE_TELEPORT)
         {
            this.§_-Ok§(_loc4_,_loc12_[0],_loc6_,_loc7_,_loc8_,_loc9_);
         }
         else if(_loc12_[1] == SafeGlobal.WEAPONTYPE_PLANETGATE)
         {
            _loc14_;
            _loc14_;
            this.§_-jX§(_loc4_,_loc12_[0]);
         }
         
         
         
         
         
         
      }
      
      private function §_-je§(param1:String, param2:int = 0) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:Array = param1.split("%");
         var _loc4_:int = int(_loc3_[1]) - param2;
         var _loc5_:int = int(_loc3_[2]);
         _loc7_;
         addAction(SafeGlobal.SIMEVENT_STARTWALK,_loc4_,{"walkDir":_loc5_});
      }
      
      private function §_-JL§(param1:String, param2:int = 0) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Array = param1.split("%");
         var _loc4_:int = int(_loc3_[1]) - param2;
         _loc6_;
         _loc6_;
         addAction(SafeGlobal.SIMEVENT_STOPWALK,_loc4_,null);
      }
      
      private function §_-LU§(param1:String, param2:int = 0) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Array = param1.split("%");
         var _loc4_:int = int(_loc3_[1]) - param2;
         _loc5_;
         addAction(SafeGlobal.SIMEVENT_ENDTURN,_loc4_,null);
      }
      
      private function §_-qt§(param1:int, param2:int, param3:Number, param4:Number, param5:int, param6:String) : void
      {
         var _loc17_:* = false;
         var _loc18_:* = true;
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
               _loc17_;
               _loc17_;
               _loc17_;
               _loc15_ = int(_loc14_[1]);
               _loc17_;
               _loc17_;
               _loc17_;
               _loc16_ = int(_loc14_[2]);
               _loc17_;
               _loc17_;
               _loc17_;
               _loc17_;
               _loc17_;
               _loc17_;
               _loc17_;
               _loc10_ = (_loc15_ - 1) * _loc16_ * 100 + 500;
               _loc18_;
            }
            _loc13_++;
         }
         _loc18_;
         _loc18_;
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
      
      private function §_-Wy§(param1:int, param2:int) : void
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
      
      private function §_-GO§(param1:int, param2:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Unit = units[currentUnit];
         _loc5_;
         addAction(SafeGlobal.SIMEVENT_MELEE,param1,{"wepType":param2});
      }
      
      private function §_-Ok§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int) : void
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc7_:Unit = units[currentUnit];
         _loc9_;
         addAction(SafeGlobal.SIMEVENT_POINTSELECT,param1,{
            "wepType":param2,
            "planetID":param3,
            "shapeID":param4,
            "curveID":param5,
            "angle":param6
         });
      }
      
      private function §_-jX§(param1:int, param2:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Unit = units[currentUnit];
         _loc4_;
         addAction(SafeGlobal.SIMEVENT_PLANETSELECT,param1,{"wepType":param2});
      }
      
      private function §_-Yh§(param1:int, param2:int, param3:int) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:Unit = units[currentUnit];
         _loc5_;
         addAction(SafeGlobal.SIMEVENT_INCOMING,param1,{
            "wepType":param2,
            "inAngle":param3
         });
      }
      
      private function §_-kJ§(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int = -1, param7:int = -1, param8:int = -1) : void
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc9_:Unit = units[currentUnit];
         _loc11_;
         _loc11_;
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
         _loc3_;
         selectWeapon(0);
         _loc3_;
         showWeaponPanelButton();
         _loc3_;
         _loc3_;
         §_-se§(units[currentUnit]);
      }
      
      override public function sendEndOfTurn(param1:int) : *
      {
      }
      
      override public function sendEndSim() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         if(!simOnly)
         {
            _loc2_;
            _loc2_;
            this.§_-KF§.tweenOn();
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
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc7_:Array = null;
         if(!§_-g1§)
         {
            §_-g1§ = true;
            addEventListener(Event.ENTER_FRAME,§_-Tx§);
            _loc8_;
            stage.addEventListener(MouseEvent.MOUSE_DOWN,§_-iA§);
            stage.addEventListener(KeyboardEvent.KEY_DOWN,§_-54§);
            _loc9_;
            stage.addEventListener(KeyboardEvent.KEY_UP,§_-W9§);
         }
         §_-fP§();
         §_-Jz§.reset();
         _loc8_;
         _loc8_;
         §_-hQ§();
         _loc9_;
         §_-d3§ = 0;
         §_-PE§();
         _loc9_;
         camera.emptyList();
         currentTeam = param1;
         _loc8_;
         simManager.endOfTurnEffectsDone = false;
         _loc9_;
         simManager.turnOver = false;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         while(_loc6_ < units.length)
         {
            _loc9_;
            if(units[_loc6_].team == param1 && units[_loc6_].unitID == param2)
            {
               currentUnit = _loc6_;
               camera.addTarget(units[currentUnit],-1,"unit startTurn");
               §_-7X§.x = units[currentUnit].iX;
               §_-7X§.y = units[currentUnit].iY;
               _loc9_;
               §_-7X§.active = false;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc5_ = true;
               units[currentUnit].showName(true);
            }
            _loc6_++;
         }
         if(!_loc5_)
         {
            _loc9_;
         }
         myTurn = false;
         _loc8_;
         _loc8_;
         §_-Y8§ = getTimer() + §_-rR§;
         turnState = "shoot";
         _loc8_;
         _loc8_;
         §_-M2§();
         _loc8_;
         _loc8_;
         _loc8_;
         if(param3 != "")
         {
            _loc7_ = param3.split(",");
            _loc9_;
            _loc9_;
            addPowerUp(_loc7_[0],_loc7_[1],_loc7_[2],_loc7_[3],_loc7_[4],_loc7_[5]);
         }
         §_-fz§ = param4;
         _loc9_;
         simManager.sentEndSim = false;
      }
      
      override public function mainLoopReplayEditor(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-KF§.§_-94§(param1,this.§_-yl§);
      }
      
      public function playFromTurn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-wL§();
         _loc2_;
         _loc2_;
         this.§_-Wv§(param1);
         _loc3_;
         this.§_-7E§(param1);
      }
      
      public function resetToTurnStart(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-wL§();
         _loc2_;
         _loc2_;
         this.§_-Wv§(param1);
         _loc2_;
         this.§_-7E§(param1,false);
      }
      
      public function §_-T1§() : void
      {
      }
      
      public function §_-Bc§() : void
      {
      }
      
      public function §_-wL§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         §_-g1§ = false;
         _loc3_;
         removeEventListener(Event.ENTER_FRAME,§_-Tx§);
         _loc3_;
         stage.removeEventListener(MouseEvent.MOUSE_DOWN,§_-iA§);
         _loc2_;
         _loc2_;
         stage.removeEventListener(KeyboardEvent.KEY_DOWN,§_-54§);
         _loc2_;
         stage.removeEventListener(KeyboardEvent.KEY_UP,§_-W9§);
         stage.removeEventListener(MouseEvent.MOUSE_UP,§_-G9§);
         stage.removeEventListener(MouseEvent.MOUSE_UP,§_-W0§);
         stage.removeEventListener(MouseEvent.MOUSE_UP,§_-HE§);
         _loc3_;
         _loc3_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,§_-2B§);
         stage.removeEventListener(MouseEvent.MOUSE_UP,§_-2I§);
         stage.removeEventListener(MouseEvent.MOUSE_UP,incomingDragStop);
         _loc2_;
         _loc2_;
         stage.removeEventListener(MouseEvent.MOUSE_UP,§_-eZ§);
         var _loc1_:* = 0;
         while(_loc1_ < units.length)
         {
            units[_loc1_].removeListeners();
            _loc3_;
            _loc1_++;
            _loc3_;
            _loc3_;
         }
         _loc2_;
         §_-wl§.splice(0);
         _loc3_;
         this.§_-hg§();
      }
      
      public function §_-Wv§(param1:int) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfucation" for better results.
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function §_-hg§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         §_-tz§();
         §_-sA§();
         §_-qm§(false);
         _loc2_;
         _loc2_;
         §_-0o§();
         _loc1_;
         _loc1_;
         §_-fp§(§_-OZ§);
         simManager.emptyList();
         _loc1_;
         _loc1_;
         simManager.clearSkips();
      }
      
      public function §_-EP§(param1:int) : void
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         var _loc2_:Array = null;
         var _loc9_:Array = null;
         _loc10_;
         _loc10_;
         this.§_-1C§ = new Array();
         _loc10_;
         this.§_-1C§ = this.§_-vP§[param1].split("$");
         _loc2_ = this.§_-1C§[0].split("%");
         _loc11_;
         _loc11_;
         currentTeam = int(_loc2_[1]);
         var _loc3_:int = currentTeam;
         _loc10_;
         _loc10_;
         currentUnit = int(_loc2_[2]);
         var _loc4_:int = currentUnit;
         var _loc5_:String = _loc2_[3];
         §_-fz§ = _loc2_[4];
         _loc11_;
         _loc10_;
         _loc10_;
         _loc11_;
         this.§_-RC§[param1] = this.§_-Nd§[currentTeam];
         _loc11_;
         this.§_-uC§[param1] = this.§_-XY§[currentTeam];
         _loc11_;
         _loc11_;
         §_-qI§ = true;
         §_-d3§ = 0;
         _loc10_;
         currentTeam = _loc3_;
         simManager.endOfTurnEffectsDone = false;
         simManager.turnOver = false;
         var _loc6_:* = false;
         var _loc7_:* = 0;
         while(true)
         {
            _loc11_;
            _loc11_;
            if(_loc7_ >= units.length)
            {
               break;
            }
            _loc11_;
            if(units[_loc7_].team == _loc3_ && units[_loc7_].unitID == _loc4_)
            {
               _loc11_;
               _loc11_;
               currentUnit = _loc7_;
               units[_loc7_].current = true;
               _loc11_;
               _loc11_;
               _loc6_ = true;
            }
            else
            {
               units[_loc7_].current = false;
               _loc10_;
            }
            _loc7_++;
         }
         _loc11_;
         if(_loc6_)
         {
         }
         myTurn = false;
         turnState = "shoot";
         _loc10_;
         if(!(_loc5_ == null) && !(_loc5_ == ""))
         {
            _loc9_ = _loc5_.split(",");
            _loc10_;
            _loc10_;
            addPowerUp(_loc9_[0],_loc9_[1],_loc9_[2],_loc9_[3],_loc9_[4],_loc9_[5]);
         }
         simManager.sentEndSim = false;
         var _loc8_:* = 1;
         _loc11_;
         while(_loc8_ < this.§_-1C§.length)
         {
            _loc2_ = this.§_-1C§[_loc8_].split("%");
            _loc10_;
            if(_loc2_[0] == "UW")
            {
               this.§_-FZ§(this.§_-1C§[_loc8_]);
            }
            else if(_loc2_[0] == "SW")
            {
               this.§_-je§(this.§_-1C§[_loc8_]);
               _loc10_;
               _loc10_;
            }
            else if(_loc2_[0] == "EW")
            {
               this.§_-JL§(this.§_-1C§[_loc8_]);
            }
            else if(_loc2_[0] == "ET")
            {
               _loc10_;
               _loc10_;
               this.§_-LU§(this.§_-1C§[_loc8_]);
            }
            
            
            
            _loc8_++;
         }
         _loc11_;
         _loc11_;
         simManager.checkAndFixNoEndTurn();
      }
      
      public function tweenOff() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.§_-KF§.§_-TL§();
         _loc1_;
         screen.visible = false;
         §_-5t§.visible = false;
         _loc1_;
         §_-w6§.visible = false;
         _loc2_;
         §_-pn§.visible = false;
         §_-RB§.visible = false;
      }
      
      public function finishtweenOff() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         SafeGlobal.TIMELINE.timeline.removeChild(this.§_-KF§);
         _loc1_;
         _loc1_;
         SafeGlobal.TIMELINE.bringLobbyDisplayToFront();
         _loc1_;
         destroyGame();
         _loc1_;
         finalDestroy();
      }
   }
}
