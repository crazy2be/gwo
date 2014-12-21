package §_-JH§
{
   import fl.transitions.Tween;
   import flash.geom.Point;
   import §_-9X§.*;
   import §_-bk§.§_-Kw§;
   import §_-4M§.SoundManager;
   import flash.display.Sprite;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   
   public class Projectile extends SimObject
   {
      
      public function Projectile(param1:Number, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean, param7:Number, param8:Array)
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         this.§_-b-§ = new §_-tU§();
         this.§_-DB§ = new Array(400,800,1350,2000);
         this.§_-tL§ = [];
         _loc10_;
         this.§_-YJ§ = new Array();
         _loc10_;
         this.§_-HO§ = new Array();
         this.initialPoint = new Point(0,0);
         this.§_-e3§ = new Point(0,0);
         _loc11_;
         _loc11_;
         this.§_-gk§ = new Point(0,0);
         _loc10_;
         this.§_-oA§ = new Point(0,0);
         this.§_-NO§ = new Array();
         this.§_-YT§ = [];
         super();
         _loc10_;
         x = §_-cl§(param1);
         y = §_-cl§(param2);
         iX = §_-cl§(param1);
         _loc10_;
         _loc10_;
         iY = §_-cl§(param2);
         this.radius = param7;
         this.§_-gh§ = iX;
         this.§_-uE§ = iY;
         _loc10_;
         this.momX = param3;
         this.momY = param4;
         startSimTime = lastSimTime = param5;
         _loc10_;
         _loc10_;
         this.mass = this.§_-Bk§(5);
         this.skillShot = param6;
         _loc11_;
         _loc11_;
         this.§_-YJ§ = [];
         _loc11_;
         this.§_-NO§ = param8;
      }
      
      public var damage:int = 0;
      
      public var §_-P0§:int;
      
      public var outerRadius:int;
      
      public var explosionRadius:int;
      
      public var unit:Unit;
      
      public var mine:Mine;
      
      public var §_-W§:int = -1;
      
      public var payloadCount:int = 0;
      
      public var §_-fs§:String = "";
      
      public var §_-oW§:int = 0;
      
      public var insidePlanet:Boolean = false;
      
      public var §_-n-§:int = 0;
      
      public var §_-mR§:int = 0;
      
      public var §_-bE§:int = 0;
      
      public var §else§:int = 0;
      
      public var push:int = 0;
      
      public var §_-tR§:Boolean = false;
      
      public var fire:Boolean = false;
      
      public var §_-kA§:int = 0;
      
      public var §_-b-§:§_-tU§;
      
      public var fallStartTime:int;
      
      public var emp:Boolean = false;
      
      public var empRadius:int = 0;
      
      public var §_-Hx§:int = 0;
      
      public var §_-Wp§:int = 0;
      
      public var poison:int = 0;
      
      public var §_-Ni§:int = 0;
      
      public var radioactive:int = 0;
      
      public var §_-CW§:Boolean = false;
      
      public var track:Boolean = false;
      
      public var §_-jg§:Boolean = true;
      
      public var §_-qa§:int = 10;
      
      public var §_-Pf§:Number = 0;
      
      public var §_-dU§:int = 0;
      
      public var §_-0§:int = 0;
      
      public var §_-q4§:int = 0;
      
      public var §_-Yj§:int = 0;
      
      public var §_-Dz§:int = 0;
      
      public var §_-w-§:int = 0;
      
      public var §_-DB§:Array;
      
      public var hasSmoke:Boolean = false;
      
      public var active:Boolean = false;
      
      public var test:Boolean = false;
      
      public var §_-tL§:Array;
      
      public var §_-YJ§:Array;
      
      public var §_-HO§:Array;
      
      public var §_-lw§:Boolean = false;
      
      public var §_-un§:int = 0;
      
      public var §_-9t§:int = 0;
      
      public var §_-sS§:Tween;
      
      public var §_-Wt§:Tween;
      
      public var §_-iQ§:Boolean = false;
      
      public var initialPlanetCheck:Boolean = false;
      
      public var initialPoint:Point;
      
      public var §_-5g§:int = 0;
      
      public var §_-e3§:Point;
      
      public var §_-18§:int = -1;
      
      public var §_-Ns§:int;
      
      public var §_-kp§:int;
      
      public var §_-qo§:int;
      
      public var §_-IZ§:Number;
      
      public var §_-uK§:int;
      
      public var §_-C5§:int;
      
      public var orientToPath:Boolean = true;
      
      public var spin:Number = 0;
      
      public var momX:Number = 0;
      
      public var momY:Number = 0;
      
      public var mass:Number = 100;
      
      public var §_-gh§:Number = 0;
      
      public var §_-uE§:Number = 0;
      
      public var radius:int = 5;
      
      public var §_-jo§:Boolean = true;
      
      public var §_-n5§:Number = -1;
      
      public var §_-Tb§:Number = -1;
      
      public var §_-gk§:Point;
      
      public var §_-oA§:Point;
      
      public var §_-81§:Point;
      
      public var §_-B0§:Point;
      
      public var skillShot:Boolean;
      
      public var §_-NO§:Array;
      
      public var custom:Boolean = false;
      
      public var ignoreUnit:int = -1;
      
      public var §_-rx§:int = -1;
      
      public var §_-VN§:§_-my§;
      
      public var §_-YT§:Array;
      
      public var sound_uid:int = -1;
      
      public function §_-QQ§(param1:Array, param2:Array) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:* = 0;
         while(_loc3_ < param2.length)
         {
            param1.push(param2[_loc3_]);
            _loc4_;
            _loc4_;
            _loc3_++;
            _loc4_;
            _loc4_;
         }
      }
      
      public function showPoisonBubbles() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc2_;
         _loc2_;
         if((this.unit) && this.unit.health > 0)
         {
            _loc2_;
            if(this.§_-VN§)
            {
               _loc1_;
               _loc1_;
               if(!contains(this.§_-VN§))
               {
                  addChild(this.§_-VN§);
                  _loc1_;
                  _loc1_;
               }
            }
            else
            {
               this.§_-VN§ = new §_-my§();
               _loc2_;
               this.§_-VN§.rotation = 180;
               _loc2_;
               _loc2_;
               addChild(this.§_-VN§);
            }
         }
      }
      
      public function hidePoisonBubbles() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         if(this.§_-VN§)
         {
            _loc2_;
            _loc2_;
            if(contains(this.§_-VN§))
            {
               _loc1_;
               removeChild(this.§_-VN§);
            }
         }
      }
      
      public function §_-sa§(param1:§_-Kw§) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc5_;
         _loc5_;
         if(this.test)
         {
         }
         var _loc2_:Array = SafeGlobal.GAME.gates;
         var _loc3_:Point = param1.pos;
         var _loc4_:SimManager = SafeGlobal.GAME.simManager;
         _loc5_;
         if(_loc2_[param1.gateID] is §_-st§)
         {
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            if(this.unit)
            {
               _loc6_;
               _loc6_;
               _loc5_;
               if(!this.unit.fallDamage)
               {
                  _loc5_;
                  SoundManager.§_-sQ§(SafeGlobal.FX_JETPACK,this.sound_uid);
               }
               SafeGlobal.GAME.addEffect(SafeGlobal.EFFECTS_UNITHITBOUNCESHIELD,_loc3_.x,_loc3_.y,rotation,this.unit);
               _loc4_.removeObject(this);
               _loc6_;
               _loc5_;
               if(this.unit)
               {
                  SafeGlobal.GAME.removeUnit(this.unit);
                  SafeGlobal.GAME.updateTeamHealths();
                  _loc6_;
                  _loc6_;
               }
               SafeGlobal.GAME.removeProjectile(this);
               _loc6_;
               _loc6_;
               _loc6_;
               _loc6_;
               SoundManager.§_-Oc§(SafeGlobal.FX_ELECTROCUTE,(SafeGlobal.GAME.simOnly) || (SafeGlobal.GAME.costumeCacheOnly));
               _loc6_;
               _loc6_;
            }
            else
            {
               if(!this.test)
               {
                  _loc6_;
                  _loc6_;
                  SafeGlobal.GAME.addEffect(SafeGlobal.EFFECTS_PROJHITBOUNCESHIELD,_loc3_.x,_loc3_.y,Math.random() * 10);
               }
               _loc5_;
               if((this.test) && (this.§_-tR§))
               {
                  dead = true;
                  this.§_-e3§.x = param1.pos.x;
                  _loc6_;
                  this.§_-e3§.y = param1.pos.y;
                  _loc5_;
                  _loc5_;
               }
               else
               {
                  SafeGlobal.GAME.reflectProjectile(this,_loc3_,_loc2_[param1.gateID].angle,1,true);
               }
            }
            if(this.skillShot)
            {
               this.§_-qL§(_loc3_.x,_loc3_.y);
               this.§_-YJ§ = [];
               _loc6_;
               this.§_-HO§ = [];
            }
            if(!this.test)
            {
               _loc2_[param1.gateID].loseLife();
            }
         }
         else if(_loc2_[param1.gateID] is §_-3x§)
         {
            _loc5_;
            _loc5_;
            if(this.test)
            {
               _loc6_;
               _loc6_;
               dead = true;
               this.§_-e3§.x = param1.pos.x;
               _loc5_;
               _loc5_;
               this.§_-e3§.y = param1.pos.y;
               _loc6_;
            }
            else
            {
               _loc5_;
               if(this.unit)
               {
                  SafeGlobal.GAME.addEffect(SafeGlobal.EFFECTS_UNITHITDISSOLVESHIELD,_loc3_.x,_loc3_.y,rotation,this.unit);
                  if(!this.unit.fallDamage)
                  {
                     SoundManager.§_-sQ§(SafeGlobal.FX_JETPACK,this.sound_uid);
                     _loc5_;
                     _loc5_;
                  }
               }
               else
               {
                  SafeGlobal.GAME.addEffect(SafeGlobal.EFFECTS_PROJHITDISSOLVESHIELD,_loc3_.x,_loc3_.y,Math.random() * 10);
               }
               SafeGlobal.GAME.dissolveProjectile(this);
               _loc5_;
               _loc5_;
               _loc2_[param1.gateID].loseLife();
            }
         }
         else if(_loc2_[param1.gateID] is Wormhole)
         {
            this.§_-jg§ = false;
            if(!this.test)
            {
               _loc5_;
               _loc5_;
               _loc6_;
               _loc6_;
               SoundManager.§_-Oc§(SafeGlobal.FX_WORMHOLE,(SafeGlobal.GAME.simOnly) || (SafeGlobal.GAME.costumeCacheOnly));
            }
            SafeGlobal.GAME.transportProjectile(this,_loc3_,_loc2_[param1.gateID],param1.side);
            _loc6_;
            if(this.skillShot)
            {
               this.§_-Q§(iX,iY);
            }
         }
         
         
      }
      
      public function each(param1:§_-Kw§) : *
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         _loc7_;
         _loc7_;
         if(this.test)
         {
         }
         var _loc2_:Array = SafeGlobal.GAME.planets;
         _loc7_;
         if(!this.test)
         {
            _loc2_[param1.planetGateID].loseShieldHealth();
         }
         else
         {
            _loc7_;
            _loc7_;
            _loc2_[param1.planetGateID].testShieldHealth--;
         }
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         if((this.test) && (this.§_-tR§))
         {
            dead = true;
            this.§_-e3§.x = param1.pos.x;
            _loc7_;
            this.§_-e3§.y = param1.pos.y;
         }
         _loc7_;
         var _loc3_:Number = _loc2_[param1.planetGateID].x - param1.pos.x;
         _loc7_;
         _loc7_;
         var _loc4_:Number = _loc2_[param1.planetGateID].y - param1.pos.y;
         _loc8_;
         _loc7_;
         if(this.unit)
         {
            SafeGlobal.GAME.addEffect(SafeGlobal.EFFECTS_UNITHITBOUNCESHIELD,param1.pos.x,param1.pos.y,rotation,this.unit);
            SafeGlobal.GAME.simManager.removeObject(this);
            if(!this.test)
            {
               _loc7_;
               _loc8_;
               _loc8_;
               _loc7_;
               _loc7_;
               SoundManager.§_-Oc§(SafeGlobal.FX_ELECTROCUTE,(SafeGlobal.GAME.simOnly) || (SafeGlobal.GAME.costumeCacheOnly));
               _loc8_;
               _loc8_;
               if(!this.unit.fallDamage)
               {
                  SoundManager.§_-sQ§(SafeGlobal.FX_JETPACK,this.sound_uid);
                  _loc8_;
                  _loc8_;
               }
            }
            SafeGlobal.GAME.removeUnit(this.unit);
            SafeGlobal.GAME.updateTeamHealths();
            SafeGlobal.GAME.removeProjectile(this);
            _loc8_;
            _loc8_;
         }
         else
         {
            _loc8_;
            if(!this.test)
            {
               SafeGlobal.GAME.addEffect(SafeGlobal.EFFECTS_PROJHITBOUNCESHIELD,param1.pos.x,param1.pos.y,Math.random() * 10);
            }
            SafeGlobal.GAME.reflectProjectile(this,new Point(param1.pos.x,param1.pos.y),Math.atan2(_loc4_,_loc3_) + SafeGlobal.PI / 2,1,true);
         }
         _loc7_;
         if(!this.test && (this.skillShot))
         {
            this.§_-qL§(param1.pos.x,param1.pos.y);
            this.§_-YJ§ = [];
            this.§_-HO§ = [];
         }
      }
      
      public function §_-t6§(param1:§_-Kw§) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:Point = null;
         _loc6_;
         if(!this.test)
         {
            _loc6_;
            _loc6_;
         }
         iX = this.§_-gh§ = §_-cl§(param1.pos.x);
         _loc5_;
         _loc5_;
         iY = this.§_-uE§ = §_-cl§(param1.pos.y);
         var _loc2_:Point = param1.pos;
         _loc6_;
         _loc6_;
         _loc6_;
         if(param1.objectType == SafeGlobal.OBJECTTYPE_UNIT)
         {
            _loc5_;
            if(!(this.unit && this.unit.rocketGloves))
            {
               this.§_-e3§.x = iX;
               this.§_-e3§.y = iY;
               dead = true;
               _loc5_;
               this.§_-uK§ = SafeGlobal.DEADREASON_HITUNIT;
               this.§_-C5§ = param1.objectID;
               _loc6_;
               _loc6_;
               this.§_-18§ = SafeGlobal.GAME.units[param1.objectID].locationPlanet;
               _loc5_;
            }
            else
            {
               SafeGlobal.GAME.units[param1.objectID].ignoreRocketGloves = true;
               _loc3_ = SafeGlobal.GAME.units[param1.objectID].startPoint();
               _loc6_;
               SafeGlobal.GAME.addUnitProjectile(_loc3_.x,_loc3_.y,§_-cl§(this.momX * 0.6),§_-cl§(this.momY * 0.6),lastSimTime,SafeGlobal.GAME.units[param1.objectID],true);
               _loc6_;
               _loc6_;
               SafeGlobal.GAME.units[param1.objectID].takeDamage(30);
               _loc6_;
               if(SafeGlobal.GAME.units[param1.objectID].health <= 0)
               {
                  SafeGlobal.GAME.projectiles[SafeGlobal.GAME.projectiles.length - 1].init(SafeGlobal.GAME.units[param1.objectID].costume.spriteSheets[SafeGlobal.ANIM_UNIT_FLYINGDEAD]);
                  SafeGlobal.GAME.projectiles[SafeGlobal.GAME.projectiles.length - 1].orientToPath = false;
                  SafeGlobal.GAME.projectiles[SafeGlobal.GAME.projectiles.length - 1].spin = 4;
                  _loc5_;
                  SafeGlobal.GAME.projectiles[SafeGlobal.GAME.projectiles.length - 1].animStep = -1;
                  _loc5_;
               }
               else
               {
                  SafeGlobal.GAME.projectiles[SafeGlobal.GAME.projectiles.length - 1].init(SafeGlobal.GAME.units[param1.objectID].costume.spriteSheets[SafeGlobal.ANIM_UNIT_FLYING]);
               }
            }
         }
         else
         {
            _loc5_;
            _loc5_;
            if(param1.objectType == SafeGlobal.OBJECTTYPE_BARREL)
            {
               this.§_-e3§.x = iX;
               _loc6_;
               _loc6_;
               this.§_-e3§.y = iY;
               dead = true;
               this.§_-uK§ = SafeGlobal.DEADREASON_HITBARREL;
               this.§_-C5§ = param1.objectID;
               this.§_-18§ = SafeGlobal.GAME.barrels[param1.objectID].locationPlanet;
            }
            else if(param1.objectType == SafeGlobal.OBJECTTYPE_POWERUP)
            {
               _loc6_;
               _loc6_;
               _loc5_;
               if(!(this.unit && this.unit.rocketGloves))
               {
                  _loc5_;
                  _loc5_;
                  this.§_-e3§.x = iX;
                  _loc5_;
                  _loc5_;
                  this.§_-e3§.y = iY;
                  _loc5_;
                  _loc5_;
                  dead = true;
                  _loc5_;
                  _loc5_;
                  this.§_-uK§ = SafeGlobal.DEADREASON_HITPOWERUP;
                  this.§_-C5§ = param1.objectID;
                  this.§_-18§ = SafeGlobal.GAME.powerUps[param1.objectID].locationPlanet;
               }
            }
            
         }
      }
      
      public function §_-OG§(param1:§_-Kw§) : *
      {
         var _loc28_:* = false;
         var _loc29_:* = true;
         var _loc4_:Shape = null;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = undefined;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:* = NaN;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc17_:Point = null;
         var _loc18_:* = NaN;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = NaN;
         var _loc22_:* = undefined;
         var _loc23_:* = NaN;
         var _loc24_:* = NaN;
         var _loc25_:* = NaN;
         var _loc2_:* = false;
         var _loc3_:Array = SafeGlobal.GAME.planets;
         _loc29_;
         _loc29_;
         if(!_loc3_[param1.planetID].sun && !_loc3_[param1.planetID].blackHole)
         {
            _loc28_;
            if(this.§_-Wp§ > 0)
            {
               _loc29_;
               _loc29_;
               _loc28_;
               _loc28_;
               this.§_-Wp§--;
               _loc4_ = _loc3_[param1.planetID].shapes[param1.shapeID];
               _loc29_;
               _loc29_;
               _loc29_;
               _loc29_;
               _loc5_ = param1.pos.x - _loc4_.curves[param1.curveID].x;
               _loc29_;
               _loc29_;
               _loc29_;
               _loc29_;
               _loc6_ = param1.pos.y - _loc4_.curves[param1.curveID].y;
               _loc7_ = Math.atan2(_loc6_,_loc5_);
               _loc28_;
               _loc28_;
               if(_loc4_.curves[param1.curveID].origCurve)
               {
                  _loc7_ = §_-cl§(_loc7_ + PI / 2);
                  _loc28_;
               }
               else
               {
                  _loc7_ = §_-cl§(_loc7_ - PI / 2);
               }
               SafeGlobal.GAME.reflectProjectile(this,param1.pos,_loc7_,1,false);
               _loc28_;
               _loc28_;
               if(this.skillShot)
               {
                  _loc29_;
                  _loc29_;
                  this.§_-qL§(param1.pos.x,param1.pos.y);
                  _loc29_;
                  this.§_-YJ§ = [];
                  _loc28_;
                  this.§_-HO§ = [];
               }
            }
            else
            {
               if(this.test)
               {
               }
               _loc28_;
               if(!this.insidePlanet)
               {
                  _loc28_;
                  if(this.test)
                  {
                     this.§_-e3§.x = param1.pos.x;
                     _loc28_;
                     this.§_-e3§.y = param1.pos.y;
                     dead = true;
                     _loc28_;
                     _loc28_;
                  }
                  else
                  {
                     _loc29_;
                     _loc29_;
                     _loc5_ = iX - this.§_-gh§;
                     _loc29_;
                     _loc6_ = iY - this.§_-uE§;
                     _loc29_;
                     _loc29_;
                     _loc29_;
                     _loc29_;
                     _loc10_ = Math.atan2(_loc6_,_loc5_);
                     iX = §_-cl§(param1.pos.x + 0.1 * Math.cos(_loc10_));
                     iY = §_-cl§(param1.pos.y + 0.1 * Math.sin(_loc10_));
                     if(SafeGlobal.GAME.planets[param1.planetID].shapes[param1.shapeID].pointInside(new Point(iX,iY)))
                     {
                        _loc28_;
                        _loc29_;
                        _loc29_;
                        this.§_-oW§--;
                        _loc29_;
                        _loc29_;
                        this.insidePlanet = !this.insidePlanet;
                        _loc28_;
                        _loc28_;
                        if(this.insidePlanet)
                        {
                           _loc28_;
                           visible = false;
                           _loc29_;
                           _loc28_;
                           _loc28_;
                           if(this.§_-oW§ >= 0)
                           {
                              _loc29_;
                              _loc29_;
                              _loc28_;
                              this.sound_uid = SoundManager.§_-rg§(SafeGlobal.FX_DRILL,10000,true,(SafeGlobal.GAME.simOnly) || (SafeGlobal.GAME.costumeCacheOnly));
                           }
                        }
                        else
                        {
                           visible = true;
                           _loc29_;
                           SoundManager.§_-sQ§(SafeGlobal.FX_DRILL,this.sound_uid);
                           _loc28_;
                           _loc28_;
                           this.§_-iQ§ = true;
                           this.§_-n5§ = -1;
                           _loc29_;
                           this.§_-Tb§ = -1;
                        }
                     }
                  }
               }
               else if(this.test)
               {
                  this.§_-e3§.x = param1.pos.x;
                  this.§_-e3§.y = param1.pos.y;
                  _loc28_;
                  _loc28_;
                  dead = true;
               }
               else
               {
                  _loc29_;
                  _loc29_;
                  _loc28_;
                  _loc5_ = iX - this.§_-gh§;
                  _loc29_;
                  _loc6_ = iY - this.§_-uE§;
                  _loc10_ = Math.atan2(_loc6_,_loc5_);
                  _loc29_;
                  _loc29_;
                  iX = §_-cl§(param1.pos.x + 0.1 * Math.cos(_loc10_));
                  iY = §_-cl§(param1.pos.y + 0.1 * Math.sin(_loc10_));
                  if(!SafeGlobal.GAME.planets[param1.planetID].shapes[param1.shapeID].pointInside(new Point(iX,iY)))
                  {
                     _loc29_;
                     _loc29_;
                     _loc28_;
                     _loc28_;
                     this.§_-oW§--;
                     _loc28_;
                     this.insidePlanet = !this.insidePlanet;
                     if(this.insidePlanet)
                     {
                        _loc29_;
                        _loc29_;
                        visible = false;
                        _loc28_;
                        _loc28_;
                        if(this.§_-oW§ >= 0)
                        {
                           _loc28_;
                           _loc28_;
                           _loc28_;
                           _loc28_;
                           _loc28_;
                           this.sound_uid = SoundManager.§_-rg§(SafeGlobal.FX_DRILL,10000,true,(SafeGlobal.GAME.simOnly) || (SafeGlobal.GAME.costumeCacheOnly));
                        }
                     }
                     else
                     {
                        visible = true;
                        _loc28_;
                        SoundManager.§_-sQ§(SafeGlobal.FX_DRILL,this.sound_uid);
                        this.§_-iQ§ = true;
                        this.§_-n5§ = -1;
                        this.§_-Tb§ = -1;
                        _loc28_;
                        _loc28_;
                     }
                  }
               }
               
               _loc29_;
               _loc29_;
               if(this.§_-oW§ >= 0)
               {
                  this.§_-gh§ = x = iX;
                  _loc29_;
                  this.§_-uE§ = y = iY;
                  if(this.skillShot)
                  {
                     this.§_-Ey§(param1.pos.x,param1.pos.y);
                  }
               }
               else
               {
                  if((this.unit) || (this.mine))
                  {
                     _loc29_;
                     _loc29_;
                     _loc11_ = iX - this.§_-gh§;
                     _loc28_;
                     _loc12_ = iY - this.§_-uE§;
                     _loc29_;
                     _loc29_;
                     _loc13_ = Math.sqrt(_loc11_ * _loc11_ + _loc12_ * _loc12_);
                     _loc29_;
                     _loc29_;
                     _loc14_ = Math.atan2(_loc12_,_loc11_);
                     _loc28_;
                     _loc15_ = param1.shapeID;
                     _loc28_;
                     _loc28_;
                     _loc16_ = param1.curveID;
                     _loc17_ = param1.pos;
                     _loc4_ = _loc3_[param1.planetID].shapes[_loc15_];
                     _loc28_;
                     _loc28_;
                     _loc28_;
                     _loc29_;
                     _loc5_ = param1.pos.x - _loc4_.curves[param1.curveID].x;
                     _loc29_;
                     _loc29_;
                     _loc28_;
                     _loc6_ = param1.pos.y - _loc4_.curves[param1.curveID].y;
                     _loc7_ = Math.atan2(_loc6_,_loc5_);
                     _loc29_;
                     if(_loc4_.curves[param1.curveID].origCurve)
                     {
                        _loc7_ = §_-cl§(_loc7_ + PI / 2);
                        _loc28_;
                        _loc28_;
                     }
                     else
                     {
                        _loc7_ = §_-cl§(_loc7_ - PI / 2);
                     }
                     _loc29_;
                     _loc18_ = _loc14_ - _loc7_;
                     _loc28_;
                     _loc28_;
                     _loc28_;
                     _loc19_ = _loc14_ - (_loc7_ + SafeGlobal.PI);
                     _loc29_;
                     _loc29_;
                     _loc28_;
                     _loc28_;
                     if((this.mine) && _loc13_ > 5)
                     {
                        SafeGlobal.GAME.reflectProjectile(this,_loc17_,_loc7_,0.8,false);
                        _loc2_ = true;
                        _loc28_;
                        this.insidePlanet = false;
                        _loc29_;
                     }
                     else if(this.mine)
                     {
                     }
                     
                  }
                  if(!_loc2_)
                  {
                     _loc4_ = _loc3_[param1.planetID].shapes[param1.shapeID];
                     dead = true;
                     this.§_-uK§ = SafeGlobal.DEADREASON_HITPLANET;
                     this.§_-C5§ = param1.planetID;
                     _loc28_;
                     _loc28_;
                     this.§_-e3§ = new Point(param1.pos.x,param1.pos.y);
                     this.§_-18§ = param1.planetID;
                     this.§_-Ns§ = param1.shapeID;
                     _loc28_;
                     _loc28_;
                     this.§_-kp§ = param1.curveID;
                     _loc29_;
                     _loc5_ = §_-cl§(param1.pos.x - _loc4_.curves[param1.curveID].x);
                     _loc28_;
                     _loc6_ = §_-cl§(param1.pos.y - _loc4_.curves[param1.curveID].y);
                     this.§_-IZ§ = §_-cl§(§_-HM§(Math.atan2(_loc6_,_loc5_)));
                  }
               }
            }
         }
         else if(!this.test)
         {
            _loc20_ = _loc3_[param1.planetID].x - param1.pos.x;
            _loc29_;
            _loc29_;
            _loc28_;
            _loc28_;
            _loc21_ = _loc3_[param1.planetID].y - param1.pos.y;
            _loc22_ = Math.atan2(_loc21_,_loc20_);
            _loc28_;
            if(_loc3_[param1.planetID].sun)
            {
               SafeGlobal.GAME.addEffect(SafeGlobal.EFFECTS_SUNBLAST,param1.pos.x,param1.pos.y,_loc22_ * 180 / Math.PI - 90);
               _loc28_;
               _loc28_;
            }
            SafeGlobal.GAME.simManager.removeObject(this);
            if(_loc3_[param1.planetID].blackHole)
            {
               _loc28_;
               _loc28_;
               _loc29_;
               _loc29_;
               _loc28_;
               _loc23_ = _loc3_[param1.planetID].x - param1.pos.x;
               _loc29_;
               _loc29_;
               _loc24_ = _loc3_[param1.planetID].y - param1.pos.y;
               _loc28_;
               _loc25_ = Math.atan2(_loc24_,_loc23_) * 180 / PI;
               _loc29_;
               _loc29_;
               SafeGlobal.GAME.addEffect(SafeGlobal.§_-UE§,_loc3_[param1.planetID].x,_loc3_[param1.planetID].y,_loc25_);
               _loc28_;
               _loc29_;
               _loc29_;
               _loc28_;
               if(!SafeGlobal.GAME.simOnly && !SafeGlobal.GAME.costumeCacheOnly)
               {
                  _loc29_;
                  SafeGlobal.GAME.effects[SafeGlobal.GAME.effects.length - 1].scaleX = SafeGlobal.GAME.effects[SafeGlobal.GAME.effects.length - 1].scaleY = _loc3_[param1.planetID].radius / 50;
                  _loc28_;
               }
            }
            _loc29_;
            if(this.unit)
            {
               _loc29_;
               _loc29_;
               _loc29_;
               if(!this.unit.fallDamage || (this.unit.rocketGloves))
               {
                  _loc28_;
                  SoundManager.§_-sQ§(SafeGlobal.FX_JETPACK,this.sound_uid);
               }
               this.unit.health = 0;
               _loc29_;
               _loc29_;
               SafeGlobal.GAME.removeUnit(this.unit);
               SafeGlobal.GAME.updateTeamHealths();
               _loc29_;
            }
            if(this.mine)
            {
               _loc29_;
               SafeGlobal.GAME.removeMine(this.mine);
               SafeGlobal.GAME.simManager.removeObject(this.mine);
               _loc28_;
               _loc28_;
            }
            SafeGlobal.GAME.removeProjectile(this);
            _loc29_;
            _loc29_;
            _loc28_;
            SoundManager.§_-Oc§(SafeGlobal.FX_BURN,(SafeGlobal.GAME.simOnly) || (SafeGlobal.GAME.costumeCacheOnly));
         }
         else
         {
            this.§_-e3§.x = param1.pos.x;
            _loc28_;
            this.§_-e3§.y = param1.pos.y;
            dead = true;
         }
         
      }
      
      public function §_-jv§(param1:§_-Kw§) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Projectile = SafeGlobal.GAME.projectiles[param1.projectileID];
         _loc3_;
         _loc3_;
         _loc2_.dead = true;
         _loc3_;
         _loc3_;
         _loc2_.§_-uK§ = SafeGlobal.§_-03§;
         _loc3_;
         _loc3_;
         _loc2_.§_-C5§ = param1.projectileID;
         _loc4_;
         _loc2_.§_-e3§ = new Point(param1.pos.x,param1.pos.y);
      }
      
      public function §_-QJ§(param1:§_-Kw§) : *
      {
         var _loc17_:* = false;
         var _loc18_:* = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = NaN;
         var _loc14_:Point = null;
         var _loc2_:* = false;
         var _loc3_:Array = SafeGlobal.GAME.skyMines;
         if(this.§_-Wp§ > 0)
         {
            _loc17_;
            _loc17_;
            _loc17_;
            _loc18_;
            this.§_-Wp§--;
            _loc18_;
            _loc4_ = param1.pos.x - _loc3_[param1.skyMineID].x;
            _loc17_;
            _loc17_;
            _loc18_;
            _loc5_ = param1.pos.y - _loc3_[param1.skyMineID].y;
            _loc17_;
            _loc6_ = Math.atan2(_loc5_,_loc4_);
            _loc17_;
            _loc17_;
            _loc17_;
            _loc17_;
            _loc6_ = §_-cl§(_loc6_ + PI / 2);
            SafeGlobal.GAME.reflectProjectile(this,param1.pos,_loc6_,1,false);
            _loc17_;
            _loc17_;
            if(this.skillShot)
            {
               this.§_-qL§(param1.pos.x,param1.pos.y);
               _loc17_;
               this.§_-YJ§ = [];
               _loc18_;
               this.§_-HO§ = [];
               _loc18_;
            }
         }
         else
         {
            _loc18_;
            if(this.test)
            {
               this.§_-e3§.x = param1.pos.x;
               _loc18_;
               _loc18_;
               this.§_-e3§.y = param1.pos.y;
               dead = true;
            }
            else
            {
               _loc18_;
               _loc4_ = iX - this.§_-gh§;
               _loc5_ = iY - this.§_-uE§;
               _loc18_;
               _loc18_;
               _loc9_ = Math.atan2(_loc5_,_loc4_);
               iX = §_-cl§(param1.pos.x + 0.1 * Math.cos(_loc9_));
               iY = §_-cl§(param1.pos.y + 0.1 * Math.sin(_loc9_));
            }
            _loc17_;
            _loc17_;
            if((this.unit) || (this.mine))
            {
               _loc18_;
               _loc18_;
               _loc10_ = iX - this.§_-gh§;
               _loc18_;
               _loc11_ = iY - this.§_-uE§;
               _loc18_;
               _loc12_ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
               _loc18_;
               _loc18_;
               _loc18_;
               _loc13_ = Math.atan2(_loc11_,_loc10_);
               _loc14_ = param1.pos;
               _loc18_;
               _loc18_;
               _loc17_;
               _loc17_;
               _loc4_ = param1.pos.x - _loc3_[param1.skyMineID].x;
               _loc17_;
               _loc17_;
               _loc18_;
               _loc5_ = param1.pos.y - _loc3_[param1.skyMineID].y;
               _loc17_;
               _loc17_;
               _loc17_;
               _loc6_ = Math.atan2(_loc5_,_loc4_);
               _loc17_;
               _loc6_ = §_-cl§(_loc6_ + PI / 2);
               if(this.mine)
               {
                  SafeGlobal.GAME.reflectProjectile(this,_loc14_,_loc6_,0.8,false);
                  _loc18_;
                  _loc18_;
                  _loc2_ = true;
               }
            }
            if(!_loc2_)
            {
               dead = true;
               this.§_-uK§ = SafeGlobal.§_-Cg§;
               this.§_-C5§ = param1.skyMineID;
               _loc17_;
               this.§_-qo§ = param1.skyMineID;
               this.§_-e3§ = new Point(param1.pos.x,param1.pos.y);
               _loc4_ = §_-cl§(param1.pos.x - _loc3_[param1.skyMineID].x);
               _loc17_;
               _loc17_;
               _loc5_ = §_-cl§(param1.pos.y - _loc3_[param1.skyMineID].y);
               _loc17_;
               _loc17_;
               this.§_-IZ§ = §_-cl§(§_-HM§(Math.atan2(_loc5_,_loc4_)));
            }
         }
      }
      
      public function setUnit(param1:Unit) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.unit = param1;
         _loc2_;
         this.§_-9t§ = this.unit.§_-9t§;
      }
      
      public function showFire() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!contains(this.§_-b-§))
         {
            addChild(this.§_-b-§);
            setChildIndex(this.§_-b-§,0);
         }
         scaleX = 1;
         _loc2_;
         this.§_-b-§.scaleX = this.§_-b-§.scaleY = 0;
         _loc3_;
         _loc3_;
         this.§_-5g§ = 0;
         _loc3_;
         _loc3_;
         this.§_-sS§ = new Tween(this.§_-b-§,"scaleX",null,0,1,10,false);
         this.§_-Wt§ = new Tween(this.§_-b-§,"scaleY",null,0,1,10,false);
      }
      
      public function §_-zx§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         scaleX = 1;
         _loc3_;
         _loc3_;
         this.§_-b-§.scaleX = this.§_-b-§.scaleY = 1;
         _loc2_;
         this.§_-sS§ = new Tween(this.§_-b-§,"scaleX",null,1,0,10,false);
         _loc3_;
         this.§_-Wt§ = new Tween(this.§_-b-§,"scaleY",null,1,0,10,false);
      }
      
      public function §_-Ru§(param1:int) : *
      {
         var _loc23_:* = false;
         var _loc24_:* = true;
         var _loc2_:Array = null;
         var _loc3_:§_-Kw§ = null;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         var _loc7_:* = 0;
         var _loc8_:* = NaN;
         var _loc9_:* = 0;
         var _loc10_:* = NaN;
         var _loc11_:* = NaN;
         var _loc12_:* = NaN;
         var _loc13_:* = 0;
         var _loc14_:Array = null;
         var _loc15_:Sprite = null;
         var _loc16_:Array = null;
         var _loc17_:§_-Kw§ = null;
         var _loc18_:Array = null;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = 0;
         var _loc22_:* = 0;
         _loc24_;
         _loc24_;
         if(this.initialPlanetCheck)
         {
            _loc2_ = SafeGlobal.GAME.collisionProjectilePlanet(this,this.initialPoint,new Point(iX,iY));
            _loc24_;
            _loc23_;
            if((_loc2_) && _loc2_.length > 1)
            {
               _loc24_;
               _loc24_;
               _loc24_;
               _loc8_ = 9.999999999E9;
               _loc24_;
               _loc24_;
               _loc9_ = 0;
               while(_loc9_ < _loc2_.length)
               {
                  _loc23_;
                  _loc23_;
                  _loc4_ = _loc2_[_loc9_].pos.x - this.initialPoint.x;
                  _loc23_;
                  _loc23_;
                  _loc5_ = _loc2_[_loc9_].pos.y - this.initialPoint.y;
                  _loc24_;
                  _loc24_;
                  _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                  _loc23_;
                  _loc23_;
                  if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) < _loc8_)
                  {
                     _loc8_ = _loc6_;
                     _loc23_;
                     _loc23_;
                     _loc24_;
                     _loc7_ = _loc9_;
                  }
                  _loc9_++;
               }
               _loc23_;
               _loc23_;
               _loc3_ = _loc2_[_loc7_];
               _loc24_;
            }
            else
            {
               _loc23_;
               _loc23_;
               if((_loc2_) && _loc2_.length == 1)
               {
                  _loc23_;
                  _loc23_;
                  _loc3_ = _loc2_[0];
               }
               else if(!_loc2_)
               {
                  this.initialPlanetCheck = false;
               }
               
            }
            if(this.initialPlanetCheck)
            {
               _loc23_;
               _loc23_;
               this.initialPlanetCheck = false;
               _loc23_;
               this.§_-OG§(_loc3_);
            }
         }
         _loc23_;
         if(!this.initialPlanetCheck)
         {
            _loc23_;
            _loc23_;
            if(!visible && !this.insidePlanet)
            {
               visible = true;
               _loc23_;
               _loc23_;
            }
            this.§_-gh§ = iX;
            this.§_-uE§ = iY;
            _loc24_;
            if((this.insidePlanet) && !this.test)
            {
               _loc24_;
               _loc24_;
               iX = SafeGlobal.§_-cl§(iX + this.momX / 3000 * param1);
               iY = SafeGlobal.§_-cl§(iY + this.momY / 3000 * param1);
               _loc23_;
               if(!dead)
               {
                  SafeGlobal.GAME.doPlanetBumps(this);
                  _loc24_;
                  _loc24_;
               }
            }
            else
            {
               iX = SafeGlobal.§_-cl§(iX + this.momX / 1000 * param1);
               iY = SafeGlobal.§_-cl§(iY + this.momY / 1000 * param1);
            }
            _loc24_;
            _loc24_;
            _loc10_ = this.§_-gh§ - iX;
            _loc23_;
            _loc23_;
            _loc11_ = this.§_-uE§ - iY;
            _loc24_;
            _loc24_;
            if(this.orientToPath)
            {
               rotation = Math.atan2(_loc11_,_loc10_) * 180 / SafeGlobal.PI - 90;
            }
            else if(this.spin != 0)
            {
               _loc23_;
               _loc23_;
               rotation = rotation + this.spin;
            }
            
            _loc24_;
            _loc24_;
            _loc23_;
            _loc23_;
            if((this.unit) && (this.unit.fire))
            {
               _loc24_;
               _loc24_;
               _loc24_;
               _loc23_;
               this.§_-b-§.rotation = Math.atan2(_loc11_,_loc10_) * 180 / SafeGlobal.PI - 90 - rotation;
            }
            x = iX;
            y = iY;
            lastSimTime = lastSimTime + param1;
            _loc24_;
            _loc23_;
            _loc23_;
            if((this.unit) && !this.unit.fire)
            {
               SafeGlobal.GAME.checkSpecialPlanetProximity(this);
            }
            _loc8_ = 9999999;
            _loc23_;
            _loc23_;
            this.§_-tL§.splice(0);
            _loc14_ = SafeGlobal.GAME.collisionProjectileGate(this);
            if(_loc14_)
            {
               _loc24_;
               _loc24_;
               this.§_-QQ§(this.§_-tL§,_loc14_);
               _loc23_;
               _loc23_;
               _loc14_.splice(0);
            }
            _loc14_ = SafeGlobal.GAME.collisionProjectilePlanetGate(this);
            if(_loc14_)
            {
               _loc23_;
               this.§_-QQ§(this.§_-tL§,_loc14_);
               _loc14_.splice(0);
            }
            _loc24_;
            _loc24_;
            _loc23_;
            _loc24_;
            _loc24_;
            if((!this.unit || this.unit && this.unit.rocketGloves) && (!this.mine) && !((this.test) && (this.§_-tR§)))
            {
               _loc14_ = SafeGlobal.GAME.collisionProjectileObjects(this);
               if(_loc14_)
               {
                  _loc23_;
                  _loc23_;
                  this.§_-QQ§(this.§_-tL§,_loc14_);
                  _loc24_;
                  _loc24_;
                  _loc14_.splice(0);
               }
            }
            _loc14_ = SafeGlobal.GAME.collisionProjectileProjectile(this);
            if(_loc14_)
            {
               _loc23_;
               this.§_-QQ§(this.§_-tL§,_loc14_);
               _loc23_;
               _loc23_;
               _loc14_.splice(0);
            }
            _loc14_ = SafeGlobal.GAME.collisionProjectileSkyMine(this);
            if(_loc14_)
            {
               _loc23_;
               this.§_-QQ§(this.§_-tL§,_loc14_);
               _loc23_;
               _loc23_;
               _loc14_.splice(0);
            }
            _loc14_ = SafeGlobal.GAME.collisionProjectilePlanet(this);
            if(_loc14_)
            {
               _loc23_;
               this.§_-QQ§(this.§_-tL§,_loc14_);
               _loc14_.splice(0);
               _loc23_;
               _loc23_;
            }
            _loc23_;
            _loc23_;
            if(this.§_-tL§.length > 0)
            {
               _loc23_;
               _loc9_ = 0;
               _loc23_;
               _loc23_;
               while(_loc9_ < this.§_-tL§.length)
               {
                  _loc23_;
                  _loc23_;
                  _loc23_;
                  _loc24_;
                  _loc24_;
                  _loc10_ = this.§_-tL§[_loc9_].pos.x - this.§_-gh§;
                  _loc24_;
                  _loc24_;
                  _loc24_;
                  _loc24_;
                  _loc23_;
                  _loc23_;
                  _loc11_ = this.§_-tL§[_loc9_].pos.y - this.§_-uE§;
                  _loc23_;
                  _loc23_;
                  _loc24_;
                  _loc24_;
                  _loc23_;
                  _loc23_;
                  _loc23_;
                  _loc23_;
                  _loc12_ = _loc10_ * _loc10_ + _loc11_ * _loc11_;
                  if((_loc10_ * _loc10_ + _loc11_ * _loc11_) <= _loc8_)
                  {
                     _loc24_;
                     _loc24_;
                     _loc8_ = _loc12_;
                     _loc24_;
                     _loc24_;
                     _loc24_;
                     _loc13_ = _loc9_;
                     _loc23_;
                  }
                  _loc9_++;
               }
               _loc24_;
               _loc24_;
               _loc23_;
               _loc23_;
               _loc23_;
               _loc17_ = this.§_-tL§[_loc13_];
               _loc24_;
               _loc24_;
               _loc24_;
               if(_loc17_.type == SafeGlobal.COLLTYPE_GATE)
               {
                  _loc24_;
                  _loc24_;
                  this.§_-sa§(_loc17_);
               }
               else
               {
                  _loc23_;
                  _loc23_;
                  _loc23_;
                  _loc23_;
                  if(_loc17_.type == SafeGlobal.COLLTYPE_PLANETGATE)
                  {
                     this.each(_loc17_);
                  }
                  else
                  {
                     _loc23_;
                     _loc23_;
                     if(_loc17_.type == SafeGlobal.COLLTYPE_OBJECT)
                     {
                        _loc23_;
                        this.§_-t6§(_loc17_);
                        _loc24_;
                     }
                     else
                     {
                        _loc24_;
                        _loc24_;
                        _loc24_;
                        _loc24_;
                        if(_loc17_.type == SafeGlobal.COLLTYPE_PLANET)
                        {
                           _loc23_;
                           this.§_-OG§(_loc17_);
                        }
                        else
                        {
                           _loc23_;
                           _loc23_;
                           _loc24_;
                           _loc24_;
                           if(_loc17_.type == SafeGlobal.§_-W-§)
                           {
                              this.§_-QJ§(_loc17_);
                           }
                           else if(_loc17_.type == SafeGlobal.§_-hb§)
                           {
                              this.§_-jv§(_loc17_);
                           }
                           
                        }
                     }
                  }
               }
            }
            this.§_-tL§.splice(0);
            _loc23_;
            _loc23_;
            SafeGlobal.GAME.checkBounds(this);
            _loc24_;
            _loc24_;
            _loc24_;
            if(lastSimTime - startSimTime > §_-CZ§ && !this.test)
            {
               _loc24_;
               _loc24_;
               if(this.unit)
               {
                  SafeGlobal.GAME.addExplosion(this.unit.iX,this.unit.iY,this.unit.explosionRadius,this.unit.outerRadius,this.unit.damage,25,lastSimTime);
                  SafeGlobal.GAME.dissolveProjectile(this);
                  _loc23_;
               }
               else
               {
                  this.§_-z6§();
                  _loc24_;
                  _loc24_;
               }
            }
            _loc23_;
            _loc23_;
            if(!this.test)
            {
               _loc23_;
               _loc23_;
               if(this.unit)
               {
               }
            }
            if(this.skillShot)
            {
               _loc24_;
               _loc24_;
               _loc23_;
               _loc23_;
               _loc10_ = this.§_-gh§ - iX;
               _loc23_;
               _loc23_;
               _loc23_;
               _loc23_;
               _loc11_ = this.§_-uE§ - iY;
               _loc12_ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
               _loc24_;
               _loc24_;
               _loc24_;
               _loc24_;
               this.§_-Pf§ = SafeGlobal.§_-cl§(this.§_-Pf§ + _loc12_);
               this.§_-dU§ = this.§_-0§;
               _loc23_;
               _loc24_;
               _loc24_;
               if(this.§_-Pf§ >= this.§_-DB§[3])
               {
                  _loc24_;
                  this.§_-0§ = 4;
               }
               else
               {
                  _loc23_;
                  _loc24_;
                  if(this.§_-Pf§ >= this.§_-DB§[2])
                  {
                     this.§_-0§ = 3;
                  }
                  else
                  {
                     _loc24_;
                     _loc24_;
                     _loc23_;
                     _loc23_;
                     if(this.§_-Pf§ >= this.§_-DB§[1])
                     {
                        _loc24_;
                        this.§_-0§ = 2;
                     }
                     else if(this.§_-Pf§ >= this.§_-DB§[0])
                     {
                        _loc23_;
                        _loc23_;
                        this.§_-0§ = 1;
                     }
                     
                  }
               }
               _loc23_;
               _loc23_;
               _loc23_;
               if(this.§_-0§ > this.§_-dU§)
               {
                  _loc24_;
                  _loc24_;
                  if(this.§_-0§ == 1)
                  {
                     _loc24_;
                     SafeGlobal.GAME.showSkillShot(SafeGlobal.SKILLMARKER_LONGSHOT,iX,iY);
                  }
                  else
                  {
                     _loc24_;
                     if(this.§_-0§ == 2)
                     {
                        SafeGlobal.GAME.showSkillShot(SafeGlobal.SKILLMARKER_SUPERLONGSHOT,iX,iY);
                     }
                     else
                     {
                        _loc23_;
                        _loc23_;
                        if(this.§_-0§ == 3)
                        {
                           _loc24_;
                           _loc24_;
                           SafeGlobal.GAME.showSkillShot(SafeGlobal.SKILLMARKER_ULTRALONGSHOT,iX,iY);
                           _loc23_;
                        }
                        else if(this.§_-0§ == 4)
                        {
                           SafeGlobal.GAME.showSkillShot(SafeGlobal.SKILLMARKER_MEGALONGSHOT,iX,iY);
                        }
                        
                     }
                  }
               }
               _loc18_ = SafeGlobal.GAME.planets;
               _loc24_;
               if(this.§_-YJ§.length == 0)
               {
                  _loc24_;
                  _loc24_;
                  _loc21_ = 0;
                  while(true)
                  {
                     _loc24_;
                     _loc24_;
                     if(_loc21_ >= _loc18_.length)
                     {
                        break;
                     }
                     _loc23_;
                     this.§_-YJ§.push(new Point(-999,-999));
                     _loc23_;
                     _loc23_;
                     _loc21_++;
                     _loc24_;
                  }
               }
               _loc23_;
               _loc21_ = 0;
               _loc24_;
               _loc24_;
               while(_loc21_ < _loc18_.length)
               {
                  _loc24_;
                  if(_loc18_[_loc21_].mass > 0 && !this.insidePlanet)
                  {
                     _loc23_;
                     _loc24_;
                     _loc24_;
                     _loc10_ = _loc18_[_loc21_].x - iX;
                     _loc23_;
                     _loc11_ = _loc18_[_loc21_].y - iY;
                     _loc24_;
                     _loc24_;
                     _loc12_ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                     _loc23_;
                     _loc24_;
                     _loc24_;
                     if(_loc12_ <= _loc18_[_loc21_].radius + 100 && _loc12_ >= _loc18_[_loc21_].radius - 20)
                     {
                        _loc24_;
                        _loc24_;
                        _loc19_ = SafeGlobal.§_-cl§(Math.atan2(_loc11_,_loc10_));
                        _loc23_;
                        _loc23_;
                        _loc23_;
                        _loc23_;
                        if(this.§_-YJ§[_loc21_].x == -999 && this.§_-YJ§[_loc21_].y == -999)
                        {
                           this.§_-YJ§[_loc21_] = new Point(_loc19_,_loc19_);
                        }
                        else
                        {
                           _loc24_;
                           _loc23_;
                           _loc23_;
                           _loc23_;
                           _loc23_;
                           if(_loc19_ < this.§_-YJ§[_loc21_].x)
                           {
                              _loc23_;
                              _loc23_;
                              if(this.§_-YJ§[_loc21_].x - _loc19_ > SafeGlobal.PI * 0.65)
                              {
                                 _loc23_;
                                 _loc24_;
                                 _loc24_;
                                 _loc19_ = SafeGlobal.§_-cl§(_loc19_ + SafeGlobal.PI * 2);
                                 _loc24_;
                                 _loc24_;
                                 this.§_-YJ§[_loc21_].y = _loc19_;
                                 _loc23_;
                                 _loc23_;
                              }
                              else
                              {
                                 _loc24_;
                                 this.§_-YJ§[_loc21_].x = _loc19_;
                                 _loc23_;
                              }
                           }
                           else
                           {
                              _loc24_;
                              _loc24_;
                              _loc23_;
                              if(_loc19_ > this.§_-YJ§[_loc21_].y)
                              {
                                 _loc23_;
                                 _loc24_;
                                 _loc23_;
                                 if(_loc19_ - this.§_-YJ§[_loc21_].y > SafeGlobal.PI * 0.65)
                                 {
                                    _loc23_;
                                    _loc23_;
                                    _loc23_;
                                    _loc23_;
                                    _loc23_;
                                    _loc19_ = SafeGlobal.§_-cl§(_loc19_ - SafeGlobal.PI * 2);
                                    _loc23_;
                                    _loc23_;
                                    _loc24_;
                                    _loc24_;
                                    this.§_-YJ§[_loc21_].x = _loc19_;
                                 }
                                 else
                                 {
                                    _loc24_;
                                    _loc24_;
                                    this.§_-YJ§[_loc21_].y = _loc19_;
                                 }
                              }
                           }
                           _loc24_;
                           _loc24_;
                           _loc20_ = SafeGlobal.§_-cl§(this.§_-YJ§[_loc21_].y - this.§_-YJ§[_loc21_].x);
                           if((SafeGlobal.§_-cl§(this.§_-YJ§[_loc21_].y - this.§_-YJ§[_loc21_].x)) >= SafeGlobal.PI)
                           {
                              if(this.§_-HO§.length == 0 || this.§_-HO§[this.§_-HO§.length - 1] == _loc21_)
                              {
                                 this.§_-Ss§(iX,iY);
                              }
                              else
                              {
                                 this.§_-d0§(iX,iY);
                              }
                              this.§_-HO§.push(_loc21_);
                              _loc23_;
                              this.§_-YJ§[_loc21_].x = -999;
                              this.§_-YJ§[_loc21_].y = -999;
                           }
                        }
                     }
                     else
                     {
                        this.§_-YJ§[_loc21_].x = -999;
                        this.§_-YJ§[_loc21_].y = -999;
                        _loc23_;
                        _loc23_;
                     }
                  }
                  else if(this.insidePlanet)
                  {
                     _loc23_;
                     this.§_-YJ§[_loc21_].x = -999;
                     this.§_-YJ§[_loc21_].y = -999;
                  }
                  
                  _loc21_++;
                  _loc24_;
                  _loc24_;
               }
            }
            _loc15_ = SafeGlobal.GAME.debugLayer;
            _loc16_ = SafeGlobal.GAME.planets;
            _loc23_;
            _loc21_ = 0;
            while(true)
            {
               _loc23_;
               _loc24_;
               _loc24_;
               if(_loc21_ >= this.§_-YJ§.length)
               {
                  break;
               }
               _loc24_;
               _loc24_;
               _loc23_;
               _loc24_;
               if(!(this.§_-YJ§[_loc21_].x == -999) && !(this.§_-YJ§[_loc21_].y == -999))
               {
                  _loc23_;
               }
               _loc21_++;
            }
            _loc23_;
            _loc23_;
            this.§_-gJ§();
            _loc23_;
            if(this.unit)
            {
               _loc24_;
               _loc24_;
               _loc24_;
               this.unit.iX = iX;
               this.unit.iY = iY;
               _loc24_;
               SafeGlobal.GAME.checkMineProximity(this.unit,lastSimTime);
               SafeGlobal.GAME.checkPowerUpProximity(this.unit,this.unit.lastSimTime);
            }
            _loc24_;
            _loc24_;
            if(this.mine)
            {
               _loc24_;
               this.mine.iX = iX;
               _loc24_;
               _loc23_;
               this.mine.iY = iY;
               _loc24_;
               _loc23_;
               if(this.mine.triggerTime == 0)
               {
                  SafeGlobal.GAME.checkUnitProximity(this.mine,lastSimTime);
               }
            }
            _loc24_;
            if(!this.test && !SafeGlobal.GAME.simOnly)
            {
               _loc24_;
               _loc22_ = 0;
               while(_loc22_ < this.§_-NO§.length)
               {
                  this.§_-NO§[_loc22_].nextPos(iX,iY,rotation,scaleX);
                  _loc23_;
                  _loc23_;
                  _loc22_++;
               }
               _loc23_;
               _loc23_;
               SafeGlobal.GAME.doEmitters(this);
            }
         }
      }
      
      public function §_-nT§() : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.§_-5g§ < 12)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            this.§_-5g§++;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            this.§_-b-§.scaleY = 1 / 10 * this.§_-5g§;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc4_;
            this.§_-b-§.scaleX = _loc1_;
         }
         else if(this.§_-5g§ <= 15)
         {
            _loc4_;
            _loc3_;
            this.§_-5g§++;
            _loc4_;
            _loc4_;
            this.§_-b-§.scaleX = this.§_-b-§.scaleY = 1 + (15 - this.§_-5g§) / 10;
         }
         
      }
      
      public function §_-z6§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         dead = true;
         _loc2_;
         _loc2_;
         this.§_-uK§ = SafeGlobal.DEADREASON_TIMEOUT;
         _loc1_;
         _loc1_;
         this.§_-C5§ = 0;
         _loc1_;
         this.§_-e3§.x = iX;
         _loc1_;
         this.§_-e3§.y = iY;
      }
      
      public function §_-gJ§() : *
      {
      }
      
      public function §_-Bk§(param1:*) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         return SafeGlobal.§_-cl§(1.3 * SafeGlobal.PI * param1 * param1 * param1);
      }
      
      public function §_-qL§(param1:Number, param2:Number) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc5_;
         _loc6_;
         if(this.§_-q4§ < 4)
         {
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            this.§_-q4§++;
            _loc6_;
            _loc6_;
            _loc6_;
            if(this.§_-q4§ == 1)
            {
               _loc6_;
               _loc6_;
               SafeGlobal.GAME.showSkillShot(SafeGlobal.SKILLMARKER_BOUNCE,param1,param2);
            }
            else
            {
               _loc5_;
               _loc5_;
               _loc5_;
               if(this.§_-q4§ == 2)
               {
                  SafeGlobal.GAME.showSkillShot(SafeGlobal.SKILLMARKER_SUPERBOUNCE,param1,param2);
                  _loc6_;
                  _loc6_;
               }
               else
               {
                  _loc6_;
                  _loc5_;
                  if(this.§_-q4§ == 3)
                  {
                     SafeGlobal.GAME.showSkillShot(SafeGlobal.SKILLMARKER_ULTRABOUNCE,param1,param2);
                     _loc5_;
                     _loc5_;
                  }
                  else if(this.§_-q4§ == 4)
                  {
                     _loc6_;
                     SafeGlobal.GAME.showSkillShot(SafeGlobal.SKILLMARKER_MEGABOUNCE,param1,param2);
                  }
                  
               }
            }
         }
      }
      
      public function §_-Ey§(param1:Number, param2:Number) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc5_;
         _loc5_;
         if(this.§_-Yj§ < 4)
         {
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            this.§_-Yj§++;
            _loc5_;
            SafeGlobal.GAME.showSkillShot(SafeGlobal.SKILLMARKER_DIG,param1,param2);
         }
      }
      
      public function §_-Ss§(param1:Number, param2:Number) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc5_;
         if(this.§_-Dz§ < 4)
         {
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            this.§_-Dz§++;
            _loc6_;
            SafeGlobal.GAME.showSkillShot(SafeGlobal.SKILLMARKER_HALFORBIT,param1,param2);
         }
      }
      
      public function §_-d0§(param1:Number, param2:Number) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc5_;
         if(this.§_-Dz§ < 4)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            this.§_-Dz§++;
            _loc6_;
            SafeGlobal.GAME.showSkillShot(SafeGlobal.SKILLMARKER_FULLORBIT,param1,param2);
         }
      }
      
      public function §_-Q§(param1:Number, param2:Number) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc6_;
         _loc6_;
         if(this.§_-w-§ < 4)
         {
            _loc6_;
            _loc5_;
            _loc5_;
            _loc6_;
            this.§_-w-§++;
            _loc5_;
            SafeGlobal.GAME.showSkillShot(SafeGlobal.SKILLMARKER_WORMHOLE,param1,param2);
         }
      }
      
      public function setMine(param1:Mine) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.mine = param1;
         _loc3_;
         this.orientToPath = false;
      }
      
      public function §_-5E§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-lw§ = false;
      }
      
      public function useProjString(param1:String, param2:Boolean) : *
      {
         var _loc11_:* = false;
         var _loc12_:* = true;
         var _loc7_:Array = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         _loc11_;
         this.§_-5E§();
         _loc12_;
         _loc12_;
         this.custom = param2;
         _loc12_;
         this.§_-Wp§ = 0;
         var _loc3_:Array = param1.split("/");
         var _loc4_:String = _loc3_[0];
         var _loc5_:* = "";
         _loc12_;
         if(_loc3_.length > 1)
         {
            _loc11_;
            _loc11_;
            _loc9_ = 1;
            while(_loc9_ < _loc3_.length)
            {
               _loc12_;
               if(_loc9_ > 1)
               {
                  _loc12_;
                  _loc12_;
                  _loc11_;
                  _loc5_ = _loc5_ + "/";
                  _loc12_;
                  _loc12_;
               }
               _loc12_;
               _loc12_;
               _loc11_;
               _loc5_ = _loc5_ + _loc3_[_loc9_];
               _loc11_;
               _loc9_++;
               _loc11_;
            }
            _loc11_;
         }
         this.§_-fs§ = _loc5_;
         var _loc6_:Array = _loc4_.split(";");
         var _loc8_:* = 0;
         _loc12_;
         _loc12_;
         while(_loc8_ < _loc6_.length)
         {
            _loc7_ = _loc6_[_loc8_].split(",");
            if(_loc7_[0] == "g")
            {
               if(!param2)
               {
                  init(SafeGlobal.GAME.projGFX[int(_loc7_[1])]);
                  _loc12_;
               }
               else
               {
                  init(SafeGlobal.GAME.customProjectileGFX[int(_loc7_[2])]);
               }
            }
            else if(_loc7_[0] == "e")
            {
               if(int(_loc7_[1]) == SafeGlobal.TRAILTYPE_NONE)
               {
                  this.setupEmittors(SafeGlobal.TRAILTYPE_NONE,[]);
                  _loc11_;
                  _loc11_;
               }
               else if(int(_loc7_[1]) == SafeGlobal.TRAILTYPE_THINSMOKE)
               {
                  this.setupEmittors(SafeGlobal.TRAILTYPE_THINSMOKE,[uint(_loc7_[2])]);
               }
               else if(int(_loc7_[1]) == SafeGlobal.TRAILTYPE_THICKSMOKE)
               {
                  this.setupEmittors(SafeGlobal.TRAILTYPE_THICKSMOKE,[uint(_loc7_[2])]);
                  _loc12_;
                  _loc12_;
               }
               else if(int(_loc7_[1]) == SafeGlobal.TRAILTYPE_BULLET)
               {
                  _loc12_;
                  _loc12_;
                  this.setupEmittors(SafeGlobal.TRAILTYPE_BULLET,[]);
                  _loc12_;
                  _loc12_;
               }
               else if(int(_loc7_[1]) == SafeGlobal.§_-SM§)
               {
                  _loc12_;
                  this.setupEmittors(SafeGlobal.§_-SM§,[uint(_loc7_[2])]);
               }
               else if(int(_loc7_[1]) == SafeGlobal.TRAILTYPE_METEORSMALL)
               {
                  this.setupEmittors(SafeGlobal.TRAILTYPE_METEORSMALL,[uint(_loc7_[2])]);
                  _loc11_;
               }
               else if(int(_loc7_[1]) == SafeGlobal.TRAILTYPE_METEORMEDIUM)
               {
                  _loc12_;
                  _loc12_;
                  this.setupEmittors(SafeGlobal.TRAILTYPE_METEORMEDIUM,[uint(_loc7_[2])]);
               }
               else if(int(_loc7_[1]) == SafeGlobal.TRAILTYPE_METEORLARGE)
               {
                  this.setupEmittors(SafeGlobal.TRAILTYPE_METEORLARGE,[uint(_loc7_[2])]);
                  _loc11_;
               }
               else if(int(_loc7_[1]) == SafeGlobal.TRAILTYPE_JETPACK)
               {
                  this.setupEmittors(SafeGlobal.TRAILTYPE_JETPACK,[uint(_loc7_[2])]);
                  _loc12_;
                  _loc12_;
               }
               else if(int(_loc7_[1]) == SafeGlobal.§_-zk§)
               {
                  _loc11_;
                  _loc11_;
                  this.setupEmittors(SafeGlobal.§_-zk§,[uint(_loc7_[2])]);
                  _loc11_;
               }
               else if(int(_loc7_[1]) == SafeGlobal.§_-cc§)
               {
                  this.setupEmittors(SafeGlobal.§_-cc§,[uint(_loc7_[2])]);
                  _loc12_;
               }
               
               
               
               
               
               
               
               
               
               
            }
            else if(_loc7_[0] == "x")
            {
               this.§_-lw§ = true;
            }
            else if(_loc7_[0] == "d")
            {
               this.damage = int(_loc7_[2]) * 10;
               this.push = this.damage + 20;
               _loc11_;
               _loc11_;
               this.explosionRadius = (int(_loc7_[1]) + 3) * 5;
               this.outerRadius = this.explosionRadius + 20;
               _loc12_;
            }
            else if(_loc7_[0] == "p")
            {
               _loc12_;
               _loc10_ = (int(_loc7_[2]) + 1) * 5;
               this.push = _loc10_ + 20;
               this.explosionRadius = (int(_loc7_[1]) + 3) * 5;
               _loc11_;
               _loc11_;
               this.outerRadius = this.explosionRadius + 20;
            }
            else if(_loc7_[0] == "h")
            {
               _loc11_;
               _loc11_;
               this.§_-n-§ = int(_loc7_[2]) * 10;
               this.§_-mR§ = (int(_loc7_[1]) + 3) * 5;
            }
            else if(_loc7_[0] == "m")
            {
               this.emp = true;
               this.§_-Hx§ = int(_loc7_[2]);
               _loc11_;
               _loc11_;
               this.empRadius = (int(_loc7_[1]) + 3) * 5;
            }
            else if(_loc7_[0] == "f")
            {
               _loc11_;
               this.fire = true;
               this.§_-kA§ = (int(_loc7_[1]) + 3) * 5;
            }
            else if(_loc7_[0] == "r")
            {
               this.radioactive = int(_loc7_[1]) * 5;
               _loc11_;
            }
            else if(_loc7_[0] == "a")
            {
               this.§_-CW§ = true;
            }
            else if(_loc7_[0] == "b")
            {
               _loc11_;
               _loc11_;
               this.§_-Wp§ = int(_loc7_[1]);
               _loc12_;
               _loc12_;
            }
            else if(_loc7_[0] == "i")
            {
               this.§_-oW§ = int(_loc7_[1]);
            }
            else if(_loc7_[0] == "o")
            {
               this.§_-Ni§ = (int(_loc7_[1]) + 3) * 5;
               _loc11_;
               _loc11_;
               this.poison = int(_loc7_[2]) * 5;
            }
            else if(_loc7_[0] == "y")
            {
               this.payloadCount = int(_loc7_[1]);
            }
            else if(_loc7_[0] == "u")
            {
               this.§_-bE§ = (int(_loc7_[1]) + 3) * 5;
               this.§else§ = int(_loc7_[2]) * 10;
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            _loc8_++;
         }
      }
      
      public function setIgnoreUnit(param1:int) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.ignoreUnit = param1;
         _loc3_;
         this.§_-rx§ = startSimTime + 1000;
      }
      
      public function §_-QP§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.ignoreUnit = -1;
         _loc2_;
         this.§_-rx§ = -1;
      }
      
      public function §_-qy§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         while(_loc1_ < this.§_-NO§.length)
         {
            this.§_-NO§[_loc1_].skipNext = true;
            _loc2_;
            _loc2_;
            _loc1_++;
            _loc2_;
         }
      }
      
      public function setupEmittors(param1:int, param2:Array) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         if(param1 == SafeGlobal.TRAILTYPE_NONE)
         {
            this.§_-NO§ = [];
            _loc3_;
         }
         else if(param1 == SafeGlobal.TRAILTYPE_THINSMOKE)
         {
            this.§_-NO§ = [new StandardEmitter(param2[0],this.custom,12)];
         }
         else
         {
            _loc3_;
            _loc3_;
            if(param1 == SafeGlobal.TRAILTYPE_THICKSMOKE)
            {
               _loc3_;
               _loc3_;
               this.§_-NO§ = [new StandardEmitter(param2[0],this.custom,12)];
            }
            else
            {
               _loc3_;
               if(param1 == SafeGlobal.TRAILTYPE_BULLET)
               {
                  this.§_-NO§ = [new StraightEmitter(0,this.custom,4)];
                  _loc3_;
                  _loc3_;
               }
               else if(param1 == SafeGlobal.§_-SM§)
               {
                  this.§_-NO§ = [new StandardEmitter(param2[0],this.custom,12)];
               }
               else if(param1 == SafeGlobal.TRAILTYPE_METEORSMALL)
               {
                  this.§_-NO§ = [new WideEmitter(param2[0],this.custom,0)];
                  _loc3_;
                  _loc3_;
               }
               else
               {
                  _loc4_;
                  if(param1 == SafeGlobal.TRAILTYPE_METEORMEDIUM)
                  {
                     this.§_-NO§ = [new WideEmitter(param2[0],this.custom,0)];
                  }
                  else
                  {
                     _loc4_;
                     if(param1 == SafeGlobal.TRAILTYPE_METEORLARGE)
                     {
                        _loc4_;
                        _loc4_;
                        this.§_-NO§ = [new WideEmitter(param2[0],this.custom,0)];
                        _loc3_;
                     }
                     else
                     {
                        _loc4_;
                        _loc4_;
                        if(param1 == SafeGlobal.TRAILTYPE_JETPACK)
                        {
                           _loc3_;
                           _loc3_;
                           this.§_-NO§ = [new JetpackEmitter(param2[0],this.custom,12)];
                        }
                        else
                        {
                           _loc3_;
                           if(param1 == SafeGlobal.TRAILTYPE_METEORSMALL)
                           {
                              this.§_-NO§ = [new JetpackEmitter(param2[0],this.custom,12)];
                              _loc4_;
                           }
                           else
                           {
                              _loc3_;
                              _loc3_;
                              if(param1 == SafeGlobal.TRAILTYPE_METEORMEDIUM)
                              {
                                 _loc4_;
                                 _loc4_;
                                 this.§_-NO§ = [new JetpackEmitter(param2[0],this.custom,12)];
                                 _loc4_;
                              }
                              else
                              {
                                 _loc3_;
                                 _loc3_;
                                 if(param1 == SafeGlobal.TRAILTYPE_METEORLARGE)
                                 {
                                    _loc4_;
                                    _loc4_;
                                    this.§_-NO§ = [new JetpackEmitter(param2[0],this.custom,12)];
                                 }
                                 else
                                 {
                                    _loc4_;
                                    _loc4_;
                                    if(param1 == SafeGlobal.§_-zk§)
                                    {
                                       _loc3_;
                                       _loc3_;
                                       this.§_-NO§ = [new §_-Pg§(param2[0],this.custom,12)];
                                       _loc3_;
                                    }
                                    else if(param1 == SafeGlobal.§_-cc§)
                                    {
                                       _loc3_;
                                       this.§_-NO§ = [new §_-pz§(param2[0],this.custom,12)];
                                    }
                                    
                                 }
                              }
                           }
                        }
                     }
                  }
               }
               
               
            }
         }
         
      }
      
      override public function animProgress(param1:int = 0) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         if(this.mine)
         {
            if(this.mine.triggerTime > 0)
            {
               _loc5_;
               _loc5_;
               _loc4_;
               animStep++;
               _loc4_;
               _loc4_;
               if(animStep >= spriteSheet.frames)
               {
                  animStep = animStep - spriteSheet.frames;
               }
            }
            else
            {
               animStep = 0;
            }
         }
         else
         {
            _loc5_;
            _loc5_;
            animStep++;
            if(animStep >= spriteSheet.frames)
            {
               _loc4_;
               _loc4_;
               animStep = animStep - spriteSheet.frames;
               _loc5_;
               _loc5_;
            }
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-9t§--;
         }
      }
      
      override public function updateImage() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:BitmapData = null;
         tempRect = spriteSheet.getChunk(animStep);
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         if(tempBD.width == tempRect.width && tempBD.height == tempRect.height)
         {
            _loc2_;
            _loc2_;
         }
         else
         {
            tempBD.dispose();
            _loc2_;
            _loc2_;
            tempBD = new BitmapData(tempRect.width,tempRect.height,true,0);
         }
         tempBD.copyPixels(spriteSheet.sheetBD,tempRect,§_-XI§,null,null,false);
         if(this.§_-9t§ > 0)
         {
            _loc3_;
            _loc3_;
            _loc1_ = new BitmapData(tempBD.width,tempBD.height,true,4.294967295E9);
            _loc2_;
            _loc2_;
            _loc1_.copyChannel(tempBD,tempBD.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc2_;
            tempBD.fillRect(tempBD.rect,4.294967295E9);
            _loc2_;
            tempBD.copyChannel(_loc1_,_loc1_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
         }
         §_-GK§(tempBD);
      }
      
      public function destroyMe() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         §_-Bx§();
      }
   }
}
