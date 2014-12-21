package §_-JH§
{
   import §_-bk§.§_-aq§;
   import flash.utils.getTimer;
   import flash.events.MouseEvent;
   import §_-4M§.SoundManager;
   import flash.display.BitmapData;
   import flash.geom.Rectangle;
   import flash.geom.Point;
   import flash.display.BitmapDataChannel;
   
   public class Unit extends SimObject
   {
      
      public function Unit(param1:int, param2:int, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int)
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         this.accuracy = new §_-aq§(0);
         this.healthDisplay = new §_-02§();
         this.nameDisplay = new §_-NF§();
         _loc10_;
         this.§_-vn§ = new §_-my§();
         _loc10_;
         this.§_-UF§ = [];
         _loc10_;
         _loc10_;
         super();
         §_-fX§ = 26;
         _loc10_;
         _loc10_;
         §_-77§ = 46;
         _loc9_;
         §_-cp§ = 16;
         _loc9_;
         _loc9_;
         §_-RN§ = 40;
         §_-mN§ = 24;
         _loc9_;
         §_-Uv§ = -12;
         §_-NJ§ = 34;
         _loc9_;
         §_-zq§(param1,param2);
         _loc10_;
         this.health = param5;
         this.accuracy.setInt(param6);
         _loc9_;
         this.unitID = param4;
         this.team = param3;
         this.takeDamage(0);
         this.updatePoints();
         _loc9_;
         _loc9_;
         addEventListener(MouseEvent.MOUSE_OVER,this.§_-cZ§,false,0,true);
         addEventListener(MouseEvent.MOUSE_OUT,this.§_-YL§,false,0,true);
         _loc9_;
         addChild(this.healthDisplay);
         _loc10_;
         addChild(this.nameDisplay);
         addChild(this.§_-vn§);
         _loc10_;
         this.healthDisplay.cacheAsBitmap = true;
         _loc10_;
         _loc10_;
         _loc9_;
         this.nameDisplay.cacheAsBitmap = true;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         this.healthDisplay.x = 0;
         _loc9_;
         this.healthDisplay.y = -40;
         _loc9_;
         _loc9_;
         _loc10_;
         _loc10_;
         _loc10_;
         this.nameDisplay.x = 0;
         _loc10_;
         _loc10_;
         this.nameDisplay.y = -40;
         _loc10_;
         _loc10_;
         _loc10_;
         _loc10_;
         this.§_-vn§.x = 0;
         _loc10_;
         _loc10_;
         this.§_-vn§.y = -30;
         this.nameDisplay.visible = false;
         this.costumeID = param7;
         this.hidePoison();
      }
      
      public var team:int = 0;
      
      public var unitID:int = 0;
      
      public var health:int = 0;
      
      public var accuracy:§_-aq§;
      
      public var fire:Boolean = false;
      
      public var fireCount:int = 0;
      
      public var poison:int = 0;
      
      public var summarizeDeath:Boolean = true;
      
      public var willCry:Boolean = false;
      
      public var crying:Boolean = false;
      
      public var unitName:String = "";
      
      public var ignoreRocketGloves:Boolean = false;
      
      public var rocketGloves:Boolean = false;
      
      public var §_-WM§:Boolean = false;
      
      public var damage:int = 25;
      
      public var outerRadius:int = 50;
      
      public var explosionRadius:int = 25;
      
      public var healthDisplay:§_-02§;
      
      public var nameDisplay:§_-NF§;
      
      public var nameDisplayStartTime:int = -1;
      
      public var removed:Boolean = false;
      
      public var current:Boolean = false;
      
      public var §_-vn§:§_-my§;
      
      public var fallDamage:Boolean = true;
      
      public var costume:Costume;
      
      public var costumeID:int;
      
      public var §_-9t§:int = 0;
      
      public var §_-u7§:Number = 0;
      
      public var animState:int;
      
      public var §_-UF§:Array;
      
      public function showPoison() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         setChildIndex(this.§_-vn§,numChildren - 1);
         _loc1_;
         _loc1_;
         _loc2_;
         this.§_-vn§.visible = true;
         _loc2_;
         this.§_-vn§.gotoAndPlay(1);
         _loc2_;
         _loc2_;
         SafeGlobal.GAME.showPoisonProjectiles(this);
      }
      
      public function hidePoison() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc1_;
         this.§_-vn§.visible = false;
         _loc1_;
         _loc1_;
         this.§_-vn§.stop();
         _loc2_;
         _loc2_;
         SafeGlobal.GAME.hidePoisonProjectiles(this);
      }
      
      override public function updatePoints() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         §_-LJ§();
      }
      
      public function showName(param1:Boolean) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.nameDisplay.visible = true;
         _loc2_;
         if(param1)
         {
            _loc2_;
            _loc2_;
            this.nameDisplayStartTime = getTimer();
            _loc2_;
            SafeGlobal.GAME.checkNameDisplay();
            _loc3_;
            _loc3_;
         }
         SafeGlobal.GAME.bringUnitToFront(this);
      }
      
      public function hideName() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.nameDisplay.visible = false;
         _loc1_;
         _loc1_;
         this.nameDisplayStartTime = -1;
      }
      
      public function §_-cZ§(param1:MouseEvent) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(!SafeGlobal.GAME.dragging && !(this == SafeGlobal.GAME.units[SafeGlobal.GAME.currentUnit]))
         {
            _loc2_;
            _loc2_;
            this.showName(false);
         }
      }
      
      public function §_-YL§(param1:MouseEvent) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.hideName();
      }
      
      public function takeDamage(param1:int, param2:Boolean = true) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.health = this.health - param1;
         _loc4_;
         _loc3_;
         _loc3_;
         if(this.health < 0)
         {
            _loc4_;
            _loc4_;
            this.health = 0;
         }
         _loc4_;
         _loc4_;
         if(this.health > 300)
         {
            this.health = 300;
         }
         _loc4_;
         _loc4_;
         if(param1 > 0 && (param2))
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(this.team == SafeGlobal.GAME.currentTeam && SafeGlobal.GAME.teams[this.team].teamBattleID == -1 || SafeGlobal.GAME.teams[this.team].teamBattleID == SafeGlobal.GAME.teams[SafeGlobal.GAME.currentTeam].teamBattleID && !(SafeGlobal.GAME.teams[this.team].teamBattleID == -1))
            {
               SafeGlobal.GAME.summaryDamageTaken = SafeGlobal.GAME.summaryDamageTaken + param1;
               if(SafeGlobal.GAME.units[SafeGlobal.GAME.currentUnit] == this)
               {
                  SafeGlobal.GAME.summaryDamageSelf = SafeGlobal.GAME.summaryDamageSelf + param1;
               }
            }
            else
            {
               SafeGlobal.GAME.summaryDamageDealt = SafeGlobal.GAME.summaryDamageDealt + param1;
            }
         }
         _loc4_;
         if(param1 > 0)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            SoundManager.§_-Oc§(SafeGlobal.FX_UNIT_HIT,(SafeGlobal.GAME.simOnly) || (SafeGlobal.GAME.costumeCacheOnly));
            _loc4_;
            this.§_-9t§ = 3;
            _loc4_;
         }
         _loc4_;
         _loc4_;
         if(param1 < 0 && (param2))
         {
            if(this.team == SafeGlobal.GAME.currentTeam && SafeGlobal.GAME.teams[this.team].teamBattleID == -1 || SafeGlobal.GAME.teams[this.team].teamBattleID == SafeGlobal.GAME.teams[SafeGlobal.GAME.currentTeam].teamBattleID && !(SafeGlobal.GAME.teams[this.team].teamBattleID == -1))
            {
               _loc3_;
               SafeGlobal.GAME.summaryHealthTaken = SafeGlobal.GAME.summaryHealthTaken + param1 * -1;
               _loc3_;
               _loc3_;
            }
            else
            {
               SafeGlobal.GAME.summaryHealthDealt = SafeGlobal.GAME.summaryHealthDealt + param1 * -1;
            }
         }
         _loc4_;
         _loc4_;
         this.healthDisplay.num.text = this.health.toString();
         this.healthDisplay.numshadow.text = this.health.toString();
         _loc3_;
         _loc3_;
         if(param1 != 0)
         {
            SafeGlobal.GAME.showDamage(iX,iY,iR,param1,this.team);
         }
         SafeGlobal.GAME.updateTeamHealths();
      }
      
      override public function showMe() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         visible = true;
         _loc2_;
         hidden = false;
         _loc2_;
         _loc2_;
         this.fallDamage = true;
      }
      
      override public function hideMe(param1:Boolean = true) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         visible = false;
         _loc2_;
         _loc2_;
         hidden = true;
         _loc3_;
         _loc3_;
         this.fallDamage = param1;
      }
      
      public function newAnimState(param1:Array, param2:Boolean = false, param3:int = 0, param4:Number = 0) : *
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc5_:* = false;
         var _loc6_:* = 0;
         _loc8_;
         _loc8_;
         if(!SafeGlobal.GAME.costumeCacheOnly)
         {
            this.animState = param1[0];
            _loc8_;
            _loc8_;
            _loc5_ = false;
            if(!this.poison)
            {
               if(SafeGlobal.GAME.planets[locationPlanet].radioactive)
               {
                  _loc5_ = true;
               }
            }
            _loc7_;
            _loc7_;
            _loc8_;
            _loc8_;
            if(this.animState == SafeGlobal.ANIM_UNIT_BOB && ((this.poison) || (_loc5_)))
            {
               this.animState = SafeGlobal.ANIM_UNIT_SICKBOB;
               _loc7_;
               _loc7_;
            }
            _loc8_;
            _loc8_;
            _loc7_;
            _loc7_;
            _loc8_;
            _loc8_;
            if(this.animState == SafeGlobal.ANIM_UNIT_BOB && (this.crying))
            {
               _loc7_;
               _loc7_;
               this.animState = SafeGlobal.ANIM_UNIT_CRY;
               _loc8_;
            }
            _loc7_;
            _loc8_;
            if(!this.§_-WM§ && this.animState == SafeGlobal.ANIM_UNIT_BOB)
            {
               _loc8_;
               animStep = Math.floor(Math.random() * 32);
               this.§_-WM§ = true;
            }
            else if(param2)
            {
               animStep = Math.floor(Math.random() * param3);
               _loc8_;
            }
            else
            {
               animStep = 0;
               _loc8_;
            }
            
            _loc7_;
            _loc7_;
            if(this.animState == SafeGlobal.ANIM_UNIT_AIM)
            {
               _loc7_;
               this.§_-u7§ = param4 - 90;
               _loc8_;
               _loc8_;
               if(this.§_-u7§ < 0)
               {
                  _loc8_;
                  this.§_-u7§ = this.§_-u7§ + 360;
               }
            }
            init(this.costume.spriteSheets[this.animState]);
            _loc7_;
            _loc7_;
            param1.splice(0,1);
            this.§_-UF§ = param1;
            _loc7_;
            _loc7_;
         }
         else
         {
            _loc6_ = 0;
            while(_loc6_ < param1.length)
            {
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc7_;
               _loc7_;
               if(this.costume.§_-G4§.indexOf(param1[_loc6_]) == -1)
               {
                  _loc8_;
                  if(param1[_loc6_] == SafeGlobal.ANIM_UNIT_LYINGONFRONT)
                  {
                     _loc7_;
                     _loc8_;
                     this.costume.§_-G4§.push(SafeGlobal.ANIM_UNIT_LYINGONBACK);
                  }
                  else
                  {
                     _loc7_;
                     _loc7_;
                     if(param1[_loc6_] == SafeGlobal.ANIM_UNIT_LYINGONBACK)
                     {
                        _loc8_;
                        this.costume.§_-G4§.push(SafeGlobal.ANIM_UNIT_LYINGONFRONT);
                        _loc8_;
                        _loc8_;
                     }
                  }
                  _loc8_;
                  if(param1[_loc6_] == SafeGlobal.ANIM_UNIT_STANDONFRONT)
                  {
                     _loc8_;
                     _loc8_;
                     _loc8_;
                     this.costume.§_-G4§.push(SafeGlobal.ANIM_UNIT_STANDONBACK);
                  }
                  else if(param1[_loc6_] == SafeGlobal.ANIM_UNIT_STANDONBACK)
                  {
                     this.costume.§_-G4§.push(SafeGlobal.ANIM_UNIT_STANDONFRONT);
                     _loc7_;
                     _loc7_;
                  }
                  
                  _loc7_;
                  _loc7_;
                  if(param1[_loc6_] == SafeGlobal.ANIM_UNIT_COLLAPSEONFRONT)
                  {
                     _loc7_;
                     _loc7_;
                     _loc8_;
                     this.costume.§_-G4§.push(SafeGlobal.ANIM_UNIT_COLLAPSEONBACK);
                  }
                  else
                  {
                     _loc7_;
                     _loc8_;
                     _loc8_;
                     if(param1[_loc6_] == SafeGlobal.ANIM_UNIT_COLLAPSEONBACK)
                     {
                        _loc7_;
                        _loc8_;
                        this.costume.§_-G4§.push(SafeGlobal.ANIM_UNIT_COLLAPSEONFRONT);
                     }
                  }
                  _loc7_;
                  if(param1[_loc6_] == SafeGlobal.ANIM_UNIT_FALLONFRONT)
                  {
                     this.costume.§_-G4§.push(SafeGlobal.ANIM_UNIT_FALLONBACK);
                  }
                  else if(param1[_loc6_] == SafeGlobal.ANIM_UNIT_FALLONBACK)
                  {
                     _loc7_;
                     _loc7_;
                     this.costume.§_-G4§.push(SafeGlobal.ANIM_UNIT_FALLONFRONT);
                  }
                  
                  this.costume.§_-G4§.push(param1[_loc6_]);
                  _loc7_;
                  _loc7_;
               }
               _loc6_++;
               _loc8_;
            }
         }
      }
      
      public function doFlip(param1:int) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         scaleX = param1;
         _loc2_;
         _loc2_;
         this.healthDisplay.scaleX = param1;
         _loc2_;
         this.nameDisplay.scaleX = param1;
      }
      
      override public function animProgress(param1:int = 0) : *
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc2_:* = NaN;
         var _loc3_:* = 0;
         var _loc4_:* = NaN;
         _loc8_;
         _loc8_;
         _loc8_;
         if(this.animState == SafeGlobal.ANIM_UNIT_AIM)
         {
            _loc8_;
            _loc2_ = this.§_-u7§;
            _loc7_;
            if(_loc2_ > 180)
            {
               _loc8_;
               _loc8_;
               _loc2_ = 360 - _loc2_;
            }
            animStep = int(_loc2_ * 20 / 180);
         }
         else
         {
            _loc7_;
            animStep++;
            _loc7_;
            _loc7_;
            _loc8_;
            _loc3_ = this.costume.spriteSheets[this.animState].frames;
            _loc8_;
            if(animStep >= _loc3_)
            {
               animStep = 0;
               if(this.§_-UF§.length > 0)
               {
                  this.newAnimState(this.§_-UF§);
                  _loc8_;
               }
               else if(this.animState == SafeGlobal.ANIM_UNIT_BOB)
               {
                  _loc7_;
                  _loc7_;
                  _loc8_;
                  _loc8_;
                  _loc4_ = Math.random();
                  _loc8_;
                  _loc8_;
                  _loc7_;
                  _loc8_;
                  if((Math.random()) < 0.03 && !this.current)
                  {
                     this.newAnimState([SafeGlobal.ANIM_UNIT_IDLE1,SafeGlobal.ANIM_UNIT_BOB]);
                  }
                  else
                  {
                     _loc8_;
                     _loc8_;
                     _loc8_;
                     _loc8_;
                     _loc7_;
                     _loc7_;
                     if(_loc4_ < 0.06 && !this.current)
                     {
                        this.newAnimState([SafeGlobal.ANIM_UNIT_IDLE2,SafeGlobal.ANIM_UNIT_BOB]);
                     }
                     else
                     {
                        _loc7_;
                        _loc7_;
                        _loc8_;
                        _loc8_;
                        _loc8_;
                        _loc8_;
                        if(_loc4_ < 0.09 && !this.current)
                        {
                           _loc8_;
                           _loc8_;
                           this.newAnimState([SafeGlobal.ANIM_UNIT_IDLE3,SafeGlobal.ANIM_UNIT_BOB]);
                        }
                        else
                        {
                           _loc7_;
                           if(_loc4_ < 0.12 && !this.current)
                           {
                              _loc8_;
                              this.newAnimState([SafeGlobal.ANIM_UNIT_IDLE4,SafeGlobal.ANIM_UNIT_BOB]);
                              _loc8_;
                           }
                        }
                     }
                  }
               }
               
            }
         }
         _loc8_;
         _loc8_;
         _loc8_;
         this.§_-9t§--;
      }
      
      override public function updateImage() : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:BitmapData = null;
         var _loc1_:Rectangle = this.costume.spriteSheets[this.animState].getChunk(animStep);
         var _loc2_:BitmapData = new BitmapData(_loc1_.width,_loc1_.height,true,0);
         _loc4_;
         _loc2_.copyPixels(this.costume.spriteSheets[this.animState].sheetBD,_loc1_,new Point(0,0),null,null,true);
         _loc5_;
         if(this.§_-9t§ > 0)
         {
            _loc4_;
            _loc3_ = new BitmapData(_loc2_.width,_loc2_.height,true,4.294967295E9);
            _loc4_;
            _loc4_;
            _loc3_.copyChannel(_loc2_,_loc2_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc4_;
            _loc4_;
            _loc2_.fillRect(_loc2_.rect,4.294967295E9);
            _loc4_;
            _loc2_.copyChannel(_loc3_,_loc3_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
         }
         §_-GK§(_loc2_);
      }
      
      public function removeListeners() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         removeEventListener(MouseEvent.MOUSE_OVER,this.§_-cZ§);
         _loc2_;
         removeEventListener(MouseEvent.MOUSE_OUT,this.§_-YL§);
      }
      
      public function destroyMe() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         removeChild(this.healthDisplay);
         _loc1_;
         _loc1_;
         removeChild(this.nameDisplay);
         _loc2_;
         _loc2_;
         removeChild(this.§_-vn§);
         _loc2_;
         §_-Bx§();
         _loc1_;
         this.costume = null;
      }
   }
}
