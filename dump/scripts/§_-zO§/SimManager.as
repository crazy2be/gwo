package §_-zO§
{
   public class SimManager extends Object
   {
      
      public function SimManager(param1:int, param2:int)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.toSim = new Array();
         this.timeSkipTime = [];
         _loc4_;
         _loc4_;
         this.timeSkipDuration = [];
         super();
         this.turnTime = param1;
         this.§_-QA§ = param2;
      }
      
      public var currentTime:int;
      
      public var toSim:Array;
      
      public var timeStep:int = 20;
      
      public var turnOver:Boolean = false;
      
      public var lastSimTime:int = 0;
      
      public var §_-py§:int = 0;
      
      public var §_-Uh§:int;
      
      public var turnTime:int;
      
      public var sentEndSim:Boolean = false;
      
      public var §_-QA§:int;
      
      public var §_-v9§:int = -1;
      
      public var extraRetreatTime:int = 0;
      
      public var endOfTurnEffectsDone:Boolean = false;
      
      public var §_-vp§:int = 0;
      
      public var replaySimEnd:Boolean = false;
      
      public var doSkip:Boolean = true;
      
      public var timeSkipTime:Array;
      
      public var timeSkipDuration:Array;
      
      public var §_-Pr§:int = 0;
      
      public function startRetreat(param1:int, param2:int = 0) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         this.§_-v9§ = param1;
         _loc4_;
         _loc4_;
         this.extraRetreatTime = param2;
         _loc4_;
         _loc4_;
         this.§_-Uh§ = param1 + this.§_-QA§ + this.extraRetreatTime;
         _loc3_;
         _loc3_;
         SafeGlobal.GAME.hideBubbles();
      }
      
      public function §_-qt§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-v9§ = 0;
         _loc1_;
         _loc1_;
         this.extraRetreatTime = 0;
      }
      
      public function addObject(param1:SimObject, param2:String = "", param3:Boolean = false) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         if(this.toSim.indexOf(param1) == -1)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            if(!(param1 is §_-yR§ && §_-yR§(param1).type == SafeGlobal.SIMEVENT_ENDTURN && (§_-yR§(param1).time == 0 || §_-yR§(param1).time == 1)))
            {
               this.toSim.push(param1);
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               if(!(param1 is §_-yR§))
               {
                  if(!param3)
                  {
                     SafeGlobal.GAME.camera.addTarget(param1,-1,"addobject - not simevent " + param2);
                     _loc4_;
                     _loc4_;
                  }
               }
               else if(§_-yR§(param1).type == SafeGlobal.SIMEVENT_ENDTURN)
               {
               }
               
            }
         }
      }
      
      public function removeObject(param1:SimObject, param2:Boolean = false) : *
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         _loc7_;
         _loc6_;
         if(!(param1 is §_-yR§))
         {
            _loc6_;
            if(!param2)
            {
               _loc7_;
               _loc7_;
               SafeGlobal.GAME.camera.removeTarget(param1);
            }
         }
         var _loc3_:int = this.toSim.indexOf(param1);
         _loc7_;
         _loc7_;
         _loc7_;
         _loc6_;
         _loc6_;
         if(_loc3_ > -1)
         {
            _loc7_;
            _loc7_;
            _loc7_;
            this.toSim.splice(_loc3_,1);
         }
         var _loc4_:int = this.toSim.indexOf(param1);
         _loc6_;
         if(_loc4_ != -1)
         {
         }
         var _loc5_:* = 0;
         while(_loc5_ < this.toSim.length)
         {
            if(this.toSim[_loc5_] is §_-yR§)
            {
               _loc6_;
            }
            _loc5_++;
            _loc7_;
            _loc7_;
         }
      }
      
      public function simWorld(param1:int) : *
      {
         var _loc12_:* = true;
         var _loc13_:* = false;
         var _loc2_:* = NaN;
         var _loc3_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = 0;
         var _loc8_:SimObject = null;
         var _loc9_:* = 0;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         _loc13_;
         _loc13_;
         this.currentTime = param1;
         var _loc4_:* = -1;
         var _loc5_:* = -1;
         _loc12_;
         _loc12_;
         if(this.toSim.length > 0)
         {
            _loc13_;
            _loc13_;
            _loc6_ = 0;
            while(true)
            {
               _loc13_;
               if(_loc6_ >= this.toSim.length)
               {
                  break;
               }
               _loc13_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               if(_loc5_ == -1 || _loc3_ > this.toSim[_loc6_].lastSimTime || _loc3_ >= this.toSim[_loc6_].lastSimTime && this.toSim[_loc6_] is Mine)
               {
                  _loc13_;
                  _loc13_;
                  _loc12_;
                  _loc13_;
                  _loc3_ = this.toSim[_loc6_].lastSimTime;
                  _loc5_ = _loc6_;
               }
               _loc6_++;
            }
            _loc5_ = -1;
            while(true)
            {
               _loc13_;
               _loc13_;
               _loc12_;
               if(!(this.currentTime - _loc3_ >= this.timeStep && this.toSim.length > 0))
               {
                  break;
               }
               _loc6_ = 0;
               while(_loc6_ < this.toSim.length)
               {
                  _loc12_;
                  _loc12_;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  if(_loc5_ == -1 || _loc3_ > this.toSim[_loc6_].lastSimTime || _loc3_ >= this.toSim[_loc6_].lastSimTime && (this.toSim[_loc6_] is §_-yR§ && this.toSim[_loc6_].type == SafeGlobal.SIMEVENT_STOPWALK || this.toSim[_loc6_] is Mine))
                  {
                     _loc12_;
                     _loc12_;
                     _loc12_;
                     _loc3_ = this.toSim[_loc6_].lastSimTime;
                     _loc13_;
                     _loc5_ = _loc6_;
                  }
                  _loc6_++;
                  _loc12_;
                  _loc12_;
               }
               _loc12_;
               _loc12_;
               if((SafeGlobal.GAME.simOnly && this.doSkip) && (!(this.lastSimTime == 0)) && this.lastSimTime - this.§_-py§ > 500)
               {
                  _loc13_;
                  _loc12_;
                  _loc12_;
                  if(this.timeSkipTime.length == 0 && this.§_-py§ > 0)
                  {
                     _loc13_;
                     _loc13_;
                     this.timeSkipTime.push(0);
                     this.timeSkipDuration.push(0);
                  }
                  _loc13_;
                  this.timeSkipTime.push(this.§_-py§);
                  _loc12_;
                  _loc7_ = 0;
                  _loc13_;
                  _loc12_;
                  if(this.timeSkipDuration.length > 0)
                  {
                     _loc12_;
                     _loc13_;
                     _loc7_ = this.timeSkipDuration[this.timeSkipDuration.length - 1];
                     _loc13_;
                  }
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc13_;
                  _loc7_ = _loc7_ + (this.lastSimTime - this.§_-py§);
                  _loc12_;
                  _loc12_;
                  this.timeSkipDuration.push(_loc7_ - 500);
                  this.§_-py§ = this.lastSimTime;
               }
               _loc13_;
               _loc13_;
               _loc4_ = _loc5_;
               _loc5_ = -1;
               _loc13_;
               _loc13_;
               _loc12_;
               _loc12_;
               _loc12_;
               _loc12_;
               if(_loc4_ != -1)
               {
                  _loc13_;
                  _loc8_ = this.toSim[_loc4_];
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc2_ = this.currentTime - this.toSim[_loc4_].lastSimTime;
                  _loc13_;
                  _loc13_;
                  _loc13_;
                  _loc12_;
                  if(_loc2_ >= this.timeStep)
                  {
                     _loc13_;
                     if(this.toSim[_loc4_] is §_-yR§)
                     {
                        this.§_-py§ = this.lastSimTime;
                        _loc12_;
                        _loc13_;
                        _loc9_ = this.toSim[_loc4_].type;
                        _loc12_;
                        this.lastSimTime = SafeGlobal.GAME.simEvent(this.toSim[_loc4_]);
                        _loc12_;
                        this.removeObject(_loc8_);
                     }
                     else
                     {
                        _loc12_;
                        _loc12_;
                        _loc13_;
                        _loc12_;
                        if(this.toSim[_loc4_] is Projectile)
                        {
                           this.§_-py§ = this.lastSimTime;
                           _loc12_;
                           _loc10_ = this.toSim[_loc4_].iX;
                           _loc13_;
                           _loc13_;
                           _loc11_ = this.toSim[_loc4_].iY;
                           this.lastSimTime = SafeGlobal.GAME.simProj(this.toSim[_loc4_]);
                           _loc12_;
                        }
                        else
                        {
                           _loc13_;
                           _loc13_;
                           if(this.toSim[_loc4_] is Mine)
                           {
                              _loc13_;
                              _loc12_;
                              if(this.toSim[_loc4_].triggerTime > 0)
                              {
                                 _loc12_;
                                 _loc12_;
                                 this.§_-py§ = this.lastSimTime;
                                 _loc12_;
                                 _loc12_;
                                 _loc10_ = this.toSim[_loc4_].iX;
                                 _loc12_;
                                 _loc12_;
                                 _loc12_;
                                 _loc11_ = this.toSim[_loc4_].iY;
                                 this.lastSimTime = SafeGlobal.GAME.simMine(this.toSim[_loc4_]);
                              }
                              else if(!this.toSim[_loc4_].active)
                              {
                                 this.toSim[_loc4_].activate();
                                 _loc12_;
                              }
                              else if(this.toSim[_loc4_].lastSimTime - this.toSim[_loc4_].startSimTime > 30000)
                              {
                                 this.§_-py§ = this.lastSimTime;
                                 _loc12_;
                                 _loc12_;
                                 _loc10_ = this.toSim[_loc4_].iX;
                                 _loc12_;
                                 _loc12_;
                                 _loc11_ = this.toSim[_loc4_].iY;
                                 this.lastSimTime = SafeGlobal.GAME.simMine(this.toSim[_loc4_]);
                                 _loc13_;
                              }
                              else
                              {
                                 this.§_-py§ = this.lastSimTime;
                                 this.lastSimTime = SafeGlobal.GAME.simObjectWalk(this.toSim[_loc4_]);
                              }
                              
                              
                           }
                           else
                           {
                              _loc13_;
                              if(this.toSim[_loc4_] is Unit)
                              {
                                 _loc12_;
                                 _loc12_;
                                 _loc12_;
                                 if(this.toSim[_loc4_].walkDir == 1 || this.toSim[_loc4_].walkDir == -1)
                                 {
                                    _loc12_;
                                    _loc12_;
                                    this.§_-py§ = this.lastSimTime;
                                    _loc12_;
                                    this.lastSimTime = SafeGlobal.GAME.simObjectWalk(this.toSim[_loc4_]);
                                    _loc12_;
                                 }
                                 else
                                 {
                                    this.§_-py§ = this.lastSimTime;
                                    _loc13_;
                                    _loc13_;
                                    _loc12_;
                                    _loc12_;
                                    _loc10_ = this.toSim[_loc4_].iX;
                                    _loc12_;
                                    _loc11_ = this.toSim[_loc4_].iY;
                                    this.lastSimTime = SafeGlobal.GAME.killDeadUnit(this.toSim[_loc4_]);
                                 }
                              }
                           }
                        }
                     }
                  }
               }
            }
         }
         if(param1 > 1000000)
         {
            _loc13_;
         }
         _loc12_;
         if(SafeGlobal.GAME.turnState == "end" && this.toSim.length == 0)
         {
            this.§_-OD§();
            _loc13_;
            if(!this.endOfTurnEffectsDone && this.toSim.length == 0 && !this.§_-Rl§())
            {
               _loc13_;
               this.§_-zy§();
               _loc13_;
               _loc13_;
               this.endOfTurnEffectsDone = true;
            }
            _loc12_;
            _loc12_;
            _loc13_;
            _loc13_;
            _loc12_;
            _loc12_;
            if(!this.sentEndSim && (this.endOfTurnEffectsDone) && this.toSim.length == 0 && !this.§_-Rl§() && SafeGlobal.GAME.messageQueue.length == 0 && !SafeGlobal.GAME.summaryShown)
            {
               SafeGlobal.GAME.displayTurnSummary();
               SafeGlobal.GAME.summaryShown = true;
            }
            _loc12_;
            if(!this.sentEndSim && (this.endOfTurnEffectsDone) && this.toSim.length == 0 && !this.§_-Rl§() && SafeGlobal.GAME.messageQueue.length == 0)
            {
               _loc13_;
               _loc13_;
               SafeGlobal.GAME.sendEndSim();
               _loc12_;
               this.sentEndSim = true;
               _loc13_;
               _loc13_;
               this.replaySimEnd = true;
               SafeGlobal.GAME.turnState = "waiting";
               SafeGlobal.GAME.showWaiting();
            }
         }
      }
      
      public function §_-nm§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         while(_loc1_ < this.toSim.length)
         {
            _loc1_++;
            _loc2_;
         }
      }
      
      public function §_-Rl§() : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = false;
         var _loc2_:* = 0;
         while(_loc2_ < SafeGlobal.GAME.units.length)
         {
            _loc4_;
            _loc4_;
            if(SafeGlobal.GAME.units[_loc2_].health <= 0 && !SafeGlobal.GAME.units[_loc2_].removed)
            {
               _loc3_;
               _loc3_;
               _loc4_;
               _loc1_ = true;
               _loc4_;
               break;
            }
            _loc2_++;
            _loc3_;
            _loc3_;
         }
         return _loc1_;
      }
      
      public function §_-zy§() : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Array = SafeGlobal.GAME.units;
         var _loc2_:int = _loc1_.length - 1;
         while(_loc2_ >= 0)
         {
            _loc3_;
            if(!_loc1_[_loc2_].dead && !_loc1_[_loc2_].removed)
            {
               _loc4_;
               if(_loc1_[_loc2_].poison > 0)
               {
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  if(_loc1_[_loc2_].health <= _loc1_[_loc2_].poison)
                  {
                     _loc1_[_loc2_].summarizeDeath = false;
                     _loc4_;
                  }
                  _loc1_[_loc2_].takeDamage(_loc1_[_loc2_].poison,false);
                  if(_loc1_[_loc2_].health <= 0)
                  {
                     _loc1_[_loc2_].newAnimState([SafeGlobal.ANIM_UNIT_VOMIT,SafeGlobal.ANIM_UNIT_FALLONFRONT,SafeGlobal.ANIM_UNIT_LYINGONFRONT],true,20);
                     _loc4_;
                  }
                  else
                  {
                     _loc1_[_loc2_].newAnimState([SafeGlobal.ANIM_UNIT_VOMIT,SafeGlobal.ANIM_UNIT_BOB],true,20);
                     _loc4_;
                  }
               }
               if(SafeGlobal.GAME.planets[_loc1_[_loc2_].locationPlanet].radioactive > 0)
               {
                  if(_loc1_[_loc2_].health <= SafeGlobal.GAME.planets[_loc1_[_loc2_].locationPlanet].radioactive)
                  {
                     _loc3_;
                     _loc3_;
                     _loc1_[_loc2_].summarizeDeath = false;
                  }
                  _loc1_[_loc2_].takeDamage(SafeGlobal.GAME.planets[_loc1_[_loc2_].locationPlanet].radioactive,false);
                  if(_loc1_[_loc2_].health <= 0)
                  {
                     _loc1_[_loc2_].newAnimState([SafeGlobal.ANIM_UNIT_VOMIT,SafeGlobal.ANIM_UNIT_FALLONFRONT,SafeGlobal.ANIM_UNIT_LYINGONFRONT],true,20);
                  }
                  else
                  {
                     _loc1_[_loc2_].newAnimState([SafeGlobal.ANIM_UNIT_VOMIT,SafeGlobal.ANIM_UNIT_BOB],true,10);
                     _loc3_;
                     _loc3_;
                  }
               }
            }
            _loc4_;
            _loc4_;
            _loc4_;
            _loc2_--;
            _loc3_;
            _loc3_;
         }
      }
      
      public function §_-pW§(param1:String) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = false;
         var _loc3_:int = this.toSim.length - 1;
         while(_loc3_ >= 0)
         {
            _loc4_;
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            if(this.toSim[_loc3_] is §_-yR§ && this.toSim[_loc3_].type == SafeGlobal.SIMEVENT_ENDTURN)
            {
               _loc4_;
               _loc4_;
               this.removeObject(this.toSim[_loc3_]);
               _loc5_;
               _loc5_;
               _loc2_ = true;
               _loc4_;
            }
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc3_--;
            _loc4_;
            _loc4_;
         }
         return _loc2_;
      }
      
      public function §_-wE§() : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = -1;
         var _loc2_:int = this.toSim.length - 1;
         while(true)
         {
            _loc3_;
            _loc3_;
            if(_loc2_ < 0)
            {
               _loc3_;
               _loc3_;
               break;
            }
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            if(this.toSim[_loc2_] is §_-yR§ && this.toSim[_loc2_].type == SafeGlobal.SIMEVENT_ENDTURN)
            {
               _loc4_;
               _loc1_ = _loc2_;
               break;
            }
            _loc4_;
            _loc4_;
            _loc2_--;
            _loc4_;
         }
         if(_loc1_ > -1)
         {
            return this.toSim[_loc1_].time;
         }
         return -1;
      }
      
      public function §_-nd§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = this.toSim.length - 1;
         while(_loc1_ >= 0)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc2_;
            if(this.toSim[_loc1_] is §_-yR§ && (this.toSim[_loc1_].type == SafeGlobal.SIMEVENT_PROJAIMSTOP || this.toSim[_loc1_].type == SafeGlobal.SIMEVENT_GATEAIMSTOP || this.toSim[_loc1_].type == SafeGlobal.SIMEVENT_PLANETSELECTAIMSTOP || this.toSim[_loc1_].type == SafeGlobal.SIMEVENT_MINEAIMSTOP))
            {
               this.removeObject(this.toSim[_loc1_]);
            }
            _loc2_;
            _loc3_;
            _loc3_;
            _loc1_--;
         }
      }
      
      public function §_-V5§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:int = this.toSim.length - 1;
         while(_loc1_ >= 0)
         {
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            _loc2_;
            if(this.toSim[_loc1_] is §_-yR§ && this.toSim[_loc1_].type == SafeGlobal.SIMEVENT_PROJAIMSTOP)
            {
               _loc3_;
               _loc3_;
               this.removeObject(this.toSim[_loc1_]);
               _loc2_;
               _loc2_;
            }
            _loc3_;
            _loc3_;
            _loc2_;
            _loc1_--;
            _loc2_;
            _loc2_;
         }
      }
      
      public function §_-OD§() : *
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfucation" for better results.
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      public function checkAndFixNoEndTurn() : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = -1;
         var _loc2_:* = -1;
         var _loc3_:* = 0;
         while(true)
         {
            _loc5_;
            if(_loc3_ >= this.toSim.length)
            {
               break;
            }
            _loc5_;
            _loc5_;
            if(this.toSim[_loc3_] is §_-yR§)
            {
               _loc4_;
               _loc4_;
               _loc4_;
               if(this.toSim[_loc3_].time > _loc2_)
               {
                  _loc5_;
                  _loc4_;
                  _loc4_;
                  _loc1_ = _loc3_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc4_;
                  _loc4_;
                  _loc2_ = this.toSim[_loc3_].time;
               }
            }
            _loc3_++;
         }
         _loc5_;
         if(_loc1_ != -1)
         {
            if(this.toSim[_loc1_].type == SafeGlobal.SIMEVENT_ENDTURN)
            {
               _loc5_;
               _loc5_;
            }
            else
            {
               SafeGlobal.GAME.addAction(SafeGlobal.SIMEVENT_ENDTURN,_loc2_ + 20,null);
            }
         }
      }
      
      public function emptyList() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.toSim.splice(0);
      }
      
      public function clearSkips() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.timeSkipTime = [];
         _loc2_;
         _loc2_;
         this.timeSkipDuration = [];
         _loc3_;
         _loc3_;
         this.doSkip = true;
         _loc2_;
         _loc2_;
         this.lastSimTime = this.§_-py§ = 0;
      }
      
      public function §_-8j§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         while(_loc1_ < this.toSim.length)
         {
            if(this.toSim[_loc1_] is §_-yR§)
            {
               _loc2_;
               _loc2_;
            }
            _loc1_++;
            _loc3_;
            _loc3_;
         }
      }
   }
}
