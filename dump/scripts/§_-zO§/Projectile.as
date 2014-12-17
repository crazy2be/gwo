package §_-zO§
{
   import fl.transitions.Tween;
   import flash.geom.Point;
   import §_-CA§.*;
   import §_-WX§.§_-i2§;
   import §_-8Y§.SoundManager;
   import flash.display.Sprite;
   import flash.display.BitmapData;
   import flash.display.BitmapDataChannel;
   
   public class Projectile extends SimObject
   {
      
      public function Projectile(param1:Number, param2:Number, param3:Number, param4:Number, param5:int, param6:Boolean, param7:Number, param8:Array)
      {
         var _loc10_:* = false;
         var _loc11_:* = true;
         this.§_-0t§ = new §_-qS§();
         this.§_-Ql§ = new Array(400,800,1350,2000);
         _loc11_;
         _loc11_;
         this.§_-wJ§ = [];
         this.§_-Cp§ = new Array();
         _loc11_;
         this.§_-zD§ = new Array();
         _loc10_;
         this.initialPoint = new Point(0,0);
         _loc11_;
         _loc11_;
         this.§_-p-§ = new Point(0,0);
         _loc10_;
         this.§_-kb§ = new Point(0,0);
         _loc11_;
         _loc11_;
         this.§_-Fz§ = new Point(0,0);
         _loc11_;
         _loc11_;
         this.§_-W5§ = new Array();
         _loc11_;
         this.§_-Tz§ = [];
         super();
         x = §_-yl§(param1);
         y = §_-yl§(param2);
         _loc10_;
         _loc10_;
         iX = §_-yl§(param1);
         iY = §_-yl§(param2);
         _loc11_;
         _loc11_;
         this.radius = param7;
         _loc10_;
         this.§_-JB§ = iX;
         _loc11_;
         _loc11_;
         this.§_-Uv§ = iY;
         this.momX = param3;
         this.momY = param4;
         startSimTime = lastSimTime = param5;
         this.mass = this.§_-oz§(5);
         _loc10_;
         this.skillShot = param6;
         _loc10_;
         _loc10_;
         this.§_-Cp§ = [];
         _loc11_;
         _loc11_;
         this.§_-W5§ = param8;
      }
      
      public var damage:int = 0;
      
      public var §_-H§:int;
      
      public var outerRadius:int;
      
      public var explosionRadius:int;
      
      public var unit:Unit;
      
      public var mine:Mine;
      
      public var §_-1b§:int = -1;
      
      public var payloadCount:int = 0;
      
      public var §_-l2§:String = "";
      
      public var §_-9r§:int = 0;
      
      public var insidePlanet:Boolean = false;
      
      public var §_-b4§:int = 0;
      
      public var §_-T0§:int = 0;
      
      public var §_-tV§:int = 0;
      
      public var §_-xS§:int = 0;
      
      public var push:int = 0;
      
      public var §_-8z§:Boolean = false;
      
      public var fire:Boolean = false;
      
      public var §_-O-§:int = 0;
      
      public var §_-0t§:§_-qS§;
      
      public var fallStartTime:int;
      
      public var emp:Boolean = false;
      
      public var empRadius:int = 0;
      
      public var §_-Qc§:int = 0;
      
      public var §_-ny§:int = 0;
      
      public var poison:int = 0;
      
      public var §_-Ve§:int = 0;
      
      public var radioactive:int = 0;
      
      public var §_-2W§:Boolean = false;
      
      public var track:Boolean = false;
      
      public var §_-gN§:Boolean = true;
      
      public var §_-eI§:int = 10;
      
      public var §_-wu§:Number = 0;
      
      public var §_-TG§:int = 0;
      
      public var §_-i3§:int = 0;
      
      public var §_-Gc§:int = 0;
      
      public var §do §:int = 0;
      
      public var §_-c7§:int = 0;
      
      public var §_-5s§:int = 0;
      
      public var §_-Ql§:Array;
      
      public var hasSmoke:Boolean = false;
      
      public var active:Boolean = false;
      
      public var test:Boolean = false;
      
      public var §_-wJ§:Array;
      
      public var §_-Cp§:Array;
      
      public var §_-zD§:Array;
      
      public var §_-s-§:Boolean = false;
      
      public var §_-yX§:int = 0;
      
      public var §_-Vn§:int = 0;
      
      public var §_-gX§:Tween;
      
      public var §_-1Y§:Tween;
      
      public var §_-Te§:Boolean = false;
      
      public var initialPlanetCheck:Boolean = false;
      
      public var initialPoint:Point;
      
      public var §_-sK§:int = 0;
      
      public var §_-p-§:Point;
      
      public var §_-Du§:int = -1;
      
      public var §_-jW§:int;
      
      public var §_-0-S§:int;
      
      public var §_-Ul§:int;
      
      public var §_-UA§:Number;
      
      public var §_-23§:int;
      
      public var §_-2i§:int;
      
      public var orientToPath:Boolean = true;
      
      public var spin:Number = 0;
      
      public var momX:Number = 0;
      
      public var momY:Number = 0;
      
      public var mass:Number = 100;
      
      public var §_-JB§:Number = 0;
      
      public var §_-Uv§:Number = 0;
      
      public var radius:int = 5;
      
      public var §_-hJ§:Boolean = true;
      
      public var §_-E5§:Number = -1;
      
      public var §_-wo§:Number = -1;
      
      public var §_-kb§:Point;
      
      public var §_-Fz§:Point;
      
      public var §_-Z4§:Point;
      
      public var §_-e2§:Point;
      
      public var skillShot:Boolean;
      
      public var §_-W5§:Array;
      
      public var custom:Boolean = false;
      
      public var ignoreUnit:int = -1;
      
      public var §_-EZ§:int = -1;
      
      public var §_-Jc§:§_-t3§;
      
      public var §_-Tz§:Array;
      
      public var sound_uid:int = -1;
      
      public function §_-JN§(param1:Array, param2:Array) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:* = 0;
         while(_loc3_ < param2.length)
         {
            param1.push(param2[_loc3_]);
            _loc5_;
            _loc3_++;
            _loc4_;
            _loc4_;
         }
      }
      
      public function showPoisonBubbles() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if((this.unit) && this.unit.health > 0)
         {
            _loc1_;
            if(this.§_-Jc§)
            {
               _loc2_;
               _loc2_;
               if(!contains(this.§_-Jc§))
               {
                  _loc2_;
                  _loc2_;
                  addChild(this.§_-Jc§);
               }
            }
            else
            {
               this.§_-Jc§ = new §_-t3§();
               this.§_-Jc§.rotation = 180;
               addChild(this.§_-Jc§);
            }
         }
      }
      
      public function hidePoisonBubbles() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(this.§_-Jc§)
         {
            _loc1_;
            _loc1_;
            if(contains(this.§_-Jc§))
            {
               _loc1_;
               removeChild(this.§_-Jc§);
            }
         }
      }
      
      public function §_-Sx§(param1:§_-i2§) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc5_;
         if(this.test)
         {
         }
         var _loc2_:Array = SafeGlobal.GAME.gates;
         var _loc3_:Point = param1.pos;
         var _loc4_:SimManager = SafeGlobal.GAME.simManager;
         if(_loc2_[param1.gateID] is §_-ed§)
         {
            _loc5_;
            _loc5_;
            if(this.unit)
            {
               _loc6_;
               _loc6_;
               if(!this.unit.fallDamage)
               {
                  SoundManager.§_-xT§(SafeGlobal.FX_JETPACK,this.sound_uid);
                  _loc6_;
                  _loc6_;
               }
               SafeGlobal.GAME.addEffect(SafeGlobal.EFFECTS_UNITHITBOUNCESHIELD,_loc3_.x,_loc3_.y,rotation,this.unit);
               _loc4_.removeObject(this);
               _loc5_;
               if(this.unit)
               {
                  SafeGlobal.GAME.removeUnit(this.unit);
                  SafeGlobal.GAME.updateTeamHealths();
               }
               SafeGlobal.GAME.removeProjectile(this);
               _loc5_;
               _loc5_;
               _loc6_;
               _loc6_;
               _loc6_;
               SoundManager.§_-wF§(SafeGlobal.FX_ELECTROCUTE,(SafeGlobal.GAME.simOnly) || (SafeGlobal.GAME.costumeCacheOnly));
            }
            else
            {
               _loc5_;
               _loc5_;
               if(!this.test)
               {
                  SafeGlobal.GAME.addEffect(SafeGlobal.EFFECTS_PROJHITBOUNCESHIELD,_loc3_.x,_loc3_.y,Math.random() * 10);
               }
               _loc5_;
               _loc5_;
               if((this.test) && (this.§_-8z§))
               {
                  dead = true;
                  _loc6_;
                  this.§_-p-§.x = param1.pos.x;
                  this.§_-p-§.y = param1.pos.y;
               }
               else
               {
                  SafeGlobal.GAME.reflectProjectile(this,_loc3_,_loc2_[param1.gateID].angle,1,true);
               }
            }
            _loc5_;
            _loc5_;
            if(this.skillShot)
            {
               this.§_-my§(_loc3_.x,_loc3_.y);
               this.§_-Cp§ = [];
               _loc5_;
               _loc5_;
               this.§_-zD§ = [];
            }
            if(!this.test)
            {
               _loc2_[param1.gateID].loseLife();
            }
         }
         else if(_loc2_[param1.gateID] is §_-dk§)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            if(this.test)
            {
               dead = true;
               this.§_-p-§.x = param1.pos.x;
               this.§_-p-§.y = param1.pos.y;
            }
            else
            {
               _loc5_;
               _loc5_;
               if(this.unit)
               {
                  SafeGlobal.GAME.addEffect(SafeGlobal.EFFECTS_UNITHITDISSOLVESHIELD,_loc3_.x,_loc3_.y,rotation,this.unit);
                  if(!this.unit.fallDamage)
                  {
                     SoundManager.§_-xT§(SafeGlobal.FX_JETPACK,this.sound_uid);
                     _loc6_;
                     _loc6_;
                  }
               }
               else
               {
                  SafeGlobal.GAME.addEffect(SafeGlobal.EFFECTS_PROJHITDISSOLVESHIELD,_loc3_.x,_loc3_.y,Math.random() * 10);
                  _loc6_;
               }
               SafeGlobal.GAME.dissolveProjectile(this);
               _loc2_[param1.gateID].loseLife();
            }
         }
         else if(_loc2_[param1.gateID] is Wormhole)
         {
            _loc5_;
            _loc5_;
            this.§_-gN§ = false;
            if(!this.test)
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               SoundManager.§_-wF§(SafeGlobal.FX_WORMHOLE,(SafeGlobal.GAME.simOnly) || (SafeGlobal.GAME.costumeCacheOnly));
            }
            SafeGlobal.GAME.transportProjectile(this,_loc3_,_loc2_[param1.gateID],param1.side);
            _loc5_;
            _loc5_;
            if(this.skillShot)
            {
               _loc6_;
               this.§_-If§(iX,iY);
            }
         }
         
         
      }
      
      public function §_-70§(param1:§_-i2§) : *
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         _loc8_;
         if(this.test)
         {
         }
         var _loc2_:Array = SafeGlobal.GAME.planets;
         _loc8_;
         _loc8_;
         _loc7_;
         _loc7_;
         if(!this.test)
         {
            _loc2_[param1.planetGateID].loseShieldHealth();
            _loc8_;
         }
         else
         {
            _loc7_;
            _loc7_;
            _loc2_[param1.planetGateID].testShieldHealth--;
            _loc7_;
            _loc7_;
         }
         _loc7_;
         _loc8_;
         if((this.test) && (this.§_-8z§))
         {
            dead = true;
            this.§_-p-§.x = param1.pos.x;
            this.§_-p-§.y = param1.pos.y;
         }
         _loc7_;
         _loc7_;
         var _loc3_:Number = _loc2_[param1.planetGateID].x - param1.pos.x;
         _loc7_;
         _loc7_;
         var _loc4_:Number = _loc2_[param1.planetGateID].y - param1.pos.y;
         _loc8_;
         _loc8_;
         _loc7_;
         _loc7_;
         if(this.unit)
         {
            SafeGlobal.GAME.addEffect(SafeGlobal.EFFECTS_UNITHITBOUNCESHIELD,param1.pos.x,param1.pos.y,rotation,this.unit);
            _loc8_;
            _loc8_;
            SafeGlobal.GAME.simManager.removeObject(this);
            _loc7_;
            _loc7_;
            if(!this.test)
            {
               _loc7_;
               _loc7_;
               SoundManager.§_-wF§(SafeGlobal.FX_ELECTROCUTE,(SafeGlobal.GAME.simOnly) || (SafeGlobal.GAME.costumeCacheOnly));
               _loc7_;
               _loc7_;
               if(!this.unit.fallDamage)
               {
                  _loc7_;
                  _loc7_;
                  SoundManager.§_-xT§(SafeGlobal.FX_JETPACK,this.sound_uid);
               }
            }
            SafeGlobal.GAME.removeUnit(this.unit);
            SafeGlobal.GAME.updateTeamHealths();
            SafeGlobal.GAME.removeProjectile(this);
            _loc7_;
            _loc7_;
         }
         else
         {
            if(!this.test)
            {
               SafeGlobal.GAME.addEffect(SafeGlobal.EFFECTS_PROJHITBOUNCESHIELD,param1.pos.x,param1.pos.y,Math.random() * 10);
               _loc8_;
            }
            SafeGlobal.GAME.reflectProjectile(this,new Point(param1.pos.x,param1.pos.y),Math.atan2(_loc4_,_loc3_) + SafeGlobal.PI / 2,1,true);
         }
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         if(!this.test && (this.skillShot))
         {
            _loc7_;
            this.§_-my§(param1.pos.x,param1.pos.y);
            this.§_-Cp§ = [];
            _loc8_;
            _loc8_;
            this.§_-zD§ = [];
         }
      }
      
      public function §_-ac§(param1:§_-i2§) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc3_:Point = null;
         _loc6_;
         if(!this.test)
         {
            _loc6_;
            _loc6_;
         }
         iX = this.§_-JB§ = §_-yl§(param1.pos.x);
         _loc6_;
         iY = this.§_-Uv§ = §_-yl§(param1.pos.y);
         var _loc2_:Point = param1.pos;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(param1.objectType == SafeGlobal.OBJECTTYPE_UNIT)
         {
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            if(!(this.unit && this.unit.rocketGloves))
            {
               this.§_-p-§.x = iX;
               this.§_-p-§.y = iY;
               _loc6_;
               dead = true;
               this.§_-23§ = SafeGlobal.DEADREASON_HITUNIT;
               _loc5_;
               _loc5_;
               this.§_-2i§ = param1.objectID;
               _loc5_;
               this.§_-Du§ = SafeGlobal.GAME.units[param1.objectID].locationPlanet;
            }
            else
            {
               SafeGlobal.GAME.units[param1.objectID].ignoreRocketGloves = true;
               _loc5_;
               _loc5_;
               _loc3_ = SafeGlobal.GAME.units[param1.objectID].startPoint();
               _loc6_;
               _loc6_;
               SafeGlobal.GAME.addUnitProjectile(_loc3_.x,_loc3_.y,§_-yl§(this.momX * 0.6),§_-yl§(this.momY * 0.6),lastSimTime,SafeGlobal.GAME.units[param1.objectID],true);
               _loc5_;
               SafeGlobal.GAME.units[param1.objectID].takeDamage(30);
               _loc5_;
               if(SafeGlobal.GAME.units[param1.objectID].health <= 0)
               {
                  SafeGlobal.GAME.projectiles[SafeGlobal.GAME.projectiles.length - 1].init(SafeGlobal.GAME.units[param1.objectID].costume.spriteSheets[SafeGlobal.ANIM_UNIT_FLYINGDEAD]);
                  _loc6_;
                  _loc6_;
                  SafeGlobal.GAME.projectiles[SafeGlobal.GAME.projectiles.length - 1].orientToPath = false;
                  SafeGlobal.GAME.projectiles[SafeGlobal.GAME.projectiles.length - 1].spin = 4;
                  _loc6_;
                  SafeGlobal.GAME.projectiles[SafeGlobal.GAME.projectiles.length - 1].animStep = -1;
               }
               else
               {
                  SafeGlobal.GAME.projectiles[SafeGlobal.GAME.projectiles.length - 1].init(SafeGlobal.GAME.units[param1.objectID].costume.spriteSheets[SafeGlobal.ANIM_UNIT_FLYING]);
               }
            }
         }
         else
         {
            _loc6_;
            _loc6_;
            _loc5_;
            if(param1.objectType == SafeGlobal.OBJECTTYPE_BARREL)
            {
               _loc5_;
               _loc5_;
               this.§_-p-§.x = iX;
               this.§_-p-§.y = iY;
               dead = true;
               _loc6_;
               _loc6_;
               this.§_-23§ = SafeGlobal.DEADREASON_HITBARREL;
               this.§_-2i§ = param1.objectID;
               _loc5_;
               this.§_-Du§ = SafeGlobal.GAME.barrels[param1.objectID].locationPlanet;
            }
            else if(param1.objectType == SafeGlobal.OBJECTTYPE_POWERUP)
            {
               _loc5_;
               if(!(this.unit && this.unit.rocketGloves))
               {
                  _loc6_;
                  _loc6_;
                  this.§_-p-§.x = iX;
                  this.§_-p-§.y = iY;
                  dead = true;
                  _loc5_;
                  _loc5_;
                  this.§_-23§ = SafeGlobal.DEADREASON_HITPOWERUP;
                  this.§_-2i§ = param1.objectID;
                  this.§_-Du§ = SafeGlobal.GAME.powerUps[param1.objectID].locationPlanet;
               }
            }
            
         }
      }
      
      public function §_-9N§(param1:§_-i2§) : *
      {
         var _loc28_:* = true;
         var _loc29_:* = false;
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
         _loc28_;
         _loc28_;
         _loc29_;
         if(!_loc3_[param1.planetID].sun && !_loc3_[param1.planetID].blackHole)
         {
            _loc29_;
            if(this.§_-ny§ > 0)
            {
               _loc28_;
               _loc28_;
               _loc28_;
               _loc28_;
               _loc28_;
               this.§_-ny§--;
               _loc4_ = _loc3_[param1.planetID].shapes[param1.shapeID];
               _loc28_;
               _loc28_;
               _loc28_;
               _loc5_ = param1.pos.x - _loc4_.curves[param1.curveID].x;
               _loc28_;
               _loc29_;
               _loc6_ = param1.pos.y - _loc4_.curves[param1.curveID].y;
               _loc7_ = Math.atan2(_loc6_,_loc5_);
               _loc29_;
               if(_loc4_.curves[param1.curveID].origCurve)
               {
                  _loc7_ = §_-yl§(_loc7_ + PI / 2);
                  _loc29_;
                  _loc29_;
               }
               else
               {
                  _loc7_ = §_-yl§(_loc7_ - PI / 2);
               }
               SafeGlobal.GAME.reflectProjectile(this,param1.pos,_loc7_,1,false);
               _loc28_;
               if(this.skillShot)
               {
                  _loc28_;
                  _loc28_;
                  this.§_-my§(param1.pos.x,param1.pos.y);
                  _loc28_;
                  this.§_-Cp§ = [];
                  _loc29_;
                  _loc29_;
                  this.§_-zD§ = [];
               }
            }
            else
            {
               _loc28_;
               if(this.test)
               {
               }
               _loc29_;
               if(!this.insidePlanet)
               {
                  _loc29_;
                  _loc29_;
                  _loc28_;
                  _loc28_;
                  if(this.test)
                  {
                     this.§_-p-§.x = param1.pos.x;
                     this.§_-p-§.y = param1.pos.y;
                     dead = true;
                  }
                  else
                  {
                     _loc29_;
                     _loc29_;
                     _loc5_ = iX - this.§_-JB§;
                     _loc29_;
                     _loc29_;
                     _loc6_ = iY - this.§_-Uv§;
                     _loc10_ = Math.atan2(_loc6_,_loc5_);
                     iX = §_-yl§(param1.pos.x + 0.1 * Math.cos(_loc10_));
                     iY = §_-yl§(param1.pos.y + 0.1 * Math.sin(_loc10_));
                     _loc28_;
                     _loc28_;
                     if(SafeGlobal.GAME.planets[param1.planetID].shapes[param1.shapeID].pointInside(new Point(iX,iY)))
                     {
                        _loc28_;
                        _loc28_;
                        _loc29_;
                        _loc29_;
                        this.§_-9r§--;
                        _loc29_;
                        _loc28_;
                        _loc28_;
                        this.insidePlanet = !this.insidePlanet;
                        _loc29_;
                        _loc29_;
                        _loc29_;
                        if(this.insidePlanet)
                        {
                           _loc28_;
                           visible = false;
                           _loc29_;
                           _loc29_;
                           _loc28_;
                           if(this.§_-9r§ >= 0)
                           {
                              _loc29_;
                              _loc29_;
                              _loc28_;
                              this.sound_uid = SoundManager.§_-Ex§(SafeGlobal.FX_DRILL,10000,true,(SafeGlobal.GAME.simOnly) || (SafeGlobal.GAME.costumeCacheOnly));
                           }
                        }
                        else
                        {
                           visible = true;
                           _loc28_;
                           SoundManager.§_-xT§(SafeGlobal.FX_DRILL,this.sound_uid);
                           this.§_-Te§ = true;
                           _loc28_;
                           _loc28_;
                           this.§_-E5§ = -1;
                           _loc28_;
                           this.§_-wo§ = -1;
                           _loc28_;
                        }
                     }
                  }
               }
               else if(this.test)
               {
                  this.§_-p-§.x = param1.pos.x;
                  this.§_-p-§.y = param1.pos.y;
                  _loc28_;
                  dead = true;
                  _loc29_;
               }
               else
               {
                  _loc29_;
                  _loc29_;
                  _loc5_ = iX - this.§_-JB§;
                  _loc28_;
                  _loc28_;
                  _loc6_ = iY - this.§_-Uv§;
                  _loc10_ = Math.atan2(_loc6_,_loc5_);
                  iX = §_-yl§(param1.pos.x + 0.1 * Math.cos(_loc10_));
                  iY = §_-yl§(param1.pos.y + 0.1 * Math.sin(_loc10_));
                  _loc29_;
                  _loc29_;
                  if(!SafeGlobal.GAME.planets[param1.planetID].shapes[param1.shapeID].pointInside(new Point(iX,iY)))
                  {
                     _loc29_;
                     _loc29_;
                     _loc28_;
                     _loc28_;
                     _loc29_;
                     _loc29_;
                     this.§_-9r§--;
                     _loc28_;
                     _loc28_;
                     _loc28_;
                     this.insidePlanet = !this.insidePlanet;
                     _loc28_;
                     _loc28_;
                     if(this.insidePlanet)
                     {
                        _loc28_;
                        _loc28_;
                        visible = false;
                        _loc29_;
                        _loc29_;
                        _loc29_;
                        _loc29_;
                        if(this.§_-9r§ >= 0)
                        {
                           _loc29_;
                           _loc28_;
                           _loc28_;
                           this.sound_uid = SoundManager.§_-Ex§(SafeGlobal.FX_DRILL,10000,true,(SafeGlobal.GAME.simOnly) || (SafeGlobal.GAME.costumeCacheOnly));
                           _loc29_;
                           _loc29_;
                        }
                     }
                     else
                     {
                        visible = true;
                        SoundManager.§_-xT§(SafeGlobal.FX_DRILL,this.sound_uid);
                        this.§_-Te§ = true;
                        this.§_-E5§ = -1;
                        _loc29_;
                        this.§_-wo§ = -1;
                        _loc28_;
                     }
                  }
               }
               
               _loc28_;
               _loc28_;
               if(this.§_-9r§ >= 0)
               {
                  this.§_-JB§ = x = iX;
                  this.§_-Uv§ = y = iY;
                  if(this.skillShot)
                  {
                     this.§_-dF§(param1.pos.x,param1.pos.y);
                     _loc28_;
                     _loc28_;
                  }
               }
               else
               {
                  if((this.unit) || (this.mine))
                  {
                     _loc28_;
                     _loc11_ = iX - this.§_-JB§;
                     _loc28_;
                     _loc28_;
                     _loc12_ = iY - this.§_-Uv§;
                     _loc13_ = Math.sqrt(_loc11_ * _loc11_ + _loc12_ * _loc12_);
                     _loc29_;
                     _loc14_ = Math.atan2(_loc12_,_loc11_);
                     _loc29_;
                     _loc28_;
                     _loc28_;
                     _loc15_ = param1.shapeID;
                     _loc16_ = param1.curveID;
                     _loc17_ = param1.pos;
                     _loc4_ = _loc3_[param1.planetID].shapes[_loc15_];
                     _loc29_;
                     _loc29_;
                     _loc29_;
                     _loc5_ = param1.pos.x - _loc4_.curves[param1.curveID].x;
                     _loc29_;
                     _loc29_;
                     _loc28_;
                     _loc28_;
                     _loc6_ = param1.pos.y - _loc4_.curves[param1.curveID].y;
                     _loc7_ = Math.atan2(_loc6_,_loc5_);
                     _loc28_;
                     if(_loc4_.curves[param1.curveID].origCurve)
                     {
                        _loc7_ = §_-yl§(_loc7_ + PI / 2);
                     }
                     else
                     {
                        _loc7_ = §_-yl§(_loc7_ - PI / 2);
                     }
                     _loc29_;
                     _loc29_;
                     _loc18_ = _loc14_ - _loc7_;
                     _loc29_;
                     _loc29_;
                     _loc29_;
                     _loc29_;
                     _loc29_;
                     _loc29_;
                     _loc29_;
                     _loc19_ = _loc14_ - (_loc7_ + SafeGlobal.PI);
                     _loc29_;
                     _loc29_;
                     _loc28_;
                     _loc28_;
                     _loc29_;
                     _loc29_;
                     if((this.mine) && _loc13_ > 5)
                     {
                        SafeGlobal.GAME.reflectProjectile(this,_loc17_,_loc7_,0.8,false);
                        _loc28_;
                        _loc2_ = true;
                        this.insidePlanet = false;
                        _loc28_;
                     }
                     else if(this.mine)
                     {
                     }
                     
                  }
                  if(!_loc2_)
                  {
                     _loc28_;
                     _loc4_ = _loc3_[param1.planetID].shapes[param1.shapeID];
                     dead = true;
                     _loc29_;
                     this.§_-23§ = SafeGlobal.DEADREASON_HITPLANET;
                     this.§_-2i§ = param1.planetID;
                     _loc28_;
                     this.§_-p-§ = new Point(param1.pos.x,param1.pos.y);
                     this.§_-Du§ = param1.planetID;
                     this.§_-jW§ = param1.shapeID;
                     _loc28_;
                     _loc28_;
                     this.§_-0-S§ = param1.curveID;
                     _loc29_;
                     _loc29_;
                     _loc5_ = §_-yl§(param1.pos.x - _loc4_.curves[param1.curveID].x);
                     _loc6_ = §_-yl§(param1.pos.y - _loc4_.curves[param1.curveID].y);
                     this.§_-UA§ = §_-yl§(§_-2T§(Math.atan2(_loc6_,_loc5_)));
                  }
               }
            }
         }
         else if(!this.test)
         {
            _loc20_ = _loc3_[param1.planetID].x - param1.pos.x;
            _loc29_;
            _loc29_;
            _loc21_ = _loc3_[param1.planetID].y - param1.pos.y;
            _loc28_;
            _loc22_ = Math.atan2(_loc21_,_loc20_);
            _loc29_;
            if(_loc3_[param1.planetID].sun)
            {
               SafeGlobal.GAME.addEffect(SafeGlobal.EFFECTS_SUNBLAST,param1.pos.x,param1.pos.y,_loc22_ * 180 / Math.PI - 90);
            }
            SafeGlobal.GAME.simManager.removeObject(this);
            _loc28_;
            if(_loc3_[param1.planetID].blackHole)
            {
               _loc29_;
               _loc29_;
               _loc29_;
               _loc28_;
               _loc28_;
               _loc23_ = _loc3_[param1.planetID].x - param1.pos.x;
               _loc29_;
               _loc28_;
               _loc28_;
               _loc24_ = _loc3_[param1.planetID].y - param1.pos.y;
               _loc28_;
               _loc28_;
               _loc28_;
               _loc25_ = Math.atan2(_loc24_,_loc23_) * 180 / PI;
               SafeGlobal.GAME.addEffect(SafeGlobal.§_-jS§,_loc3_[param1.planetID].x,_loc3_[param1.planetID].y,_loc25_);
               _loc28_;
               _loc28_;
               _loc28_;
               if(!SafeGlobal.GAME.simOnly && !SafeGlobal.GAME.costumeCacheOnly)
               {
                  SafeGlobal.GAME.effects[SafeGlobal.GAME.effects.length - 1].scaleX = SafeGlobal.GAME.effects[SafeGlobal.GAME.effects.length - 1].scaleY = _loc3_[param1.planetID].radius / 50;
                  _loc28_;
               }
            }
            _loc29_;
            _loc29_;
            if(this.unit)
            {
               _loc28_;
               _loc28_;
               if(!this.unit.fallDamage || (this.unit.rocketGloves))
               {
                  _loc28_;
                  _loc28_;
                  SoundManager.§_-xT§(SafeGlobal.FX_JETPACK,this.sound_uid);
                  _loc28_;
               }
               this.unit.health = 0;
               _loc29_;
               _loc29_;
               SafeGlobal.GAME.removeUnit(this.unit);
               _loc29_;
               _loc29_;
               SafeGlobal.GAME.updateTeamHealths();
               _loc28_;
               _loc28_;
            }
            if(this.mine)
            {
               SafeGlobal.GAME.removeMine(this.mine);
               _loc29_;
               _loc29_;
               SafeGlobal.GAME.simManager.removeObject(this.mine);
            }
            SafeGlobal.GAME.removeProjectile(this);
            _loc29_;
            _loc28_;
            SoundManager.§_-wF§(SafeGlobal.FX_BURN,(SafeGlobal.GAME.simOnly) || (SafeGlobal.GAME.costumeCacheOnly));
         }
         else
         {
            this.§_-p-§.x = param1.pos.x;
            this.§_-p-§.y = param1.pos.y;
            _loc29_;
            _loc29_;
            dead = true;
         }
         
      }
      
      public function §_-80§(param1:§_-i2§) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Projectile = SafeGlobal.GAME.projectiles[param1.projectileID];
         _loc3_;
         _loc2_.dead = true;
         _loc3_;
         _loc3_;
         _loc2_.§_-23§ = SafeGlobal.§_-rX§;
         _loc4_;
         _loc2_.§_-2i§ = param1.projectileID;
         _loc3_;
         _loc3_;
         _loc2_.§_-p-§ = new Point(param1.pos.x,param1.pos.y);
      }
      
      public function §_-j1§(param1:§_-i2§) : *
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
         if(this.§_-ny§ > 0)
         {
            _loc17_;
            _loc17_;
            _loc18_;
            _loc18_;
            this.§_-ny§--;
            _loc4_ = param1.pos.x - _loc3_[param1.skyMineID].x;
            _loc18_;
            _loc17_;
            _loc5_ = param1.pos.y - _loc3_[param1.skyMineID].y;
            _loc17_;
            _loc17_;
            _loc17_;
            _loc6_ = Math.atan2(_loc5_,_loc4_);
            _loc17_;
            _loc17_;
            _loc17_;
            _loc17_;
            _loc17_;
            _loc6_ = §_-yl§(_loc6_ + PI / 2);
            _loc17_;
            _loc17_;
            SafeGlobal.GAME.reflectProjectile(this,param1.pos,_loc6_,1,false);
            _loc17_;
            _loc17_;
            if(this.skillShot)
            {
               this.§_-my§(param1.pos.x,param1.pos.y);
               this.§_-Cp§ = [];
               _loc17_;
               this.§_-zD§ = [];
            }
         }
         else
         {
            _loc17_;
            _loc17_;
            if(this.test)
            {
               this.§_-p-§.x = param1.pos.x;
               this.§_-p-§.y = param1.pos.y;
               dead = true;
            }
            else
            {
               _loc17_;
               _loc17_;
               _loc18_;
               _loc4_ = iX - this.§_-JB§;
               _loc18_;
               _loc5_ = iY - this.§_-Uv§;
               _loc17_;
               _loc9_ = Math.atan2(_loc5_,_loc4_);
               iX = §_-yl§(param1.pos.x + 0.1 * Math.cos(_loc9_));
               _loc18_;
               iY = §_-yl§(param1.pos.y + 0.1 * Math.sin(_loc9_));
               _loc17_;
               _loc17_;
            }
            _loc17_;
            _loc17_;
            if((this.unit) || (this.mine))
            {
               _loc18_;
               _loc17_;
               _loc17_;
               _loc10_ = iX - this.§_-JB§;
               _loc17_;
               _loc18_;
               _loc11_ = iY - this.§_-Uv§;
               _loc17_;
               _loc17_;
               _loc12_ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
               _loc18_;
               _loc13_ = Math.atan2(_loc11_,_loc10_);
               _loc18_;
               _loc18_;
               _loc14_ = param1.pos;
               _loc17_;
               _loc18_;
               _loc4_ = param1.pos.x - _loc3_[param1.skyMineID].x;
               _loc18_;
               _loc18_;
               _loc18_;
               _loc18_;
               _loc5_ = param1.pos.y - _loc3_[param1.skyMineID].y;
               _loc18_;
               _loc18_;
               _loc18_;
               _loc6_ = Math.atan2(_loc5_,_loc4_);
               _loc18_;
               _loc17_;
               _loc17_;
               _loc6_ = §_-yl§(_loc6_ + PI / 2);
               if(this.mine)
               {
                  _loc18_;
                  _loc18_;
                  SafeGlobal.GAME.reflectProjectile(this,_loc14_,_loc6_,0.8,false);
                  _loc2_ = true;
               }
            }
            if(!_loc2_)
            {
               _loc17_;
               _loc17_;
               dead = true;
               _loc17_;
               _loc17_;
               this.§_-23§ = SafeGlobal.§_-3F§;
               this.§_-2i§ = param1.skyMineID;
               this.§_-Ul§ = param1.skyMineID;
               _loc17_;
               _loc17_;
               this.§_-p-§ = new Point(param1.pos.x,param1.pos.y);
               _loc4_ = §_-yl§(param1.pos.x - _loc3_[param1.skyMineID].x);
               _loc18_;
               _loc18_;
               _loc5_ = §_-yl§(param1.pos.y - _loc3_[param1.skyMineID].y);
               _loc17_;
               _loc17_;
               this.§_-UA§ = §_-yl§(§_-2T§(Math.atan2(_loc5_,_loc4_)));
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
         _loc3_;
         this.§_-Vn§ = this.unit.§_-Vn§;
      }
      
      public function showFire() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!contains(this.§_-0t§))
         {
            _loc2_;
            _loc2_;
            addChild(this.§_-0t§);
            setChildIndex(this.§_-0t§,0);
         }
         scaleX = 1;
         _loc2_;
         _loc2_;
         this.§_-0t§.scaleX = this.§_-0t§.scaleY = 0;
         this.§_-sK§ = 0;
         _loc2_;
         _loc2_;
         this.§_-gX§ = new Tween(this.§_-0t§,"scaleX",null,0,1,10,false);
         _loc2_;
         _loc2_;
         this.§_-1Y§ = new Tween(this.§_-0t§,"scaleY",null,0,1,10,false);
      }
      
      public function §_-p2§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         scaleX = 1;
         _loc3_;
         this.§_-0t§.scaleX = this.§_-0t§.scaleY = 1;
         _loc3_;
         this.§_-gX§ = new Tween(this.§_-0t§,"scaleX",null,1,0,10,false);
         _loc2_;
         this.§_-1Y§ = new Tween(this.§_-0t§,"scaleY",null,1,0,10,false);
      }
      
      public function §_-eb§(param1:int) : *
      {
         var _loc23_:* = true;
         var _loc24_:* = false;
         var _loc2_:Array = null;
         var _loc3_:§_-i2§ = null;
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
         var _loc17_:§_-i2§ = null;
         var _loc18_:Array = null;
         var _loc19_:* = NaN;
         var _loc20_:* = NaN;
         var _loc21_:* = 0;
         var _loc22_:* = 0;
         _loc24_;
         if(this.initialPlanetCheck)
         {
            _loc2_ = SafeGlobal.GAME.collisionProjectilePlanet(this,this.initialPoint,new Point(iX,iY));
            _loc23_;
            _loc23_;
            _loc23_;
            _loc23_;
            if((_loc2_) && _loc2_.length > 1)
            {
               _loc24_;
               _loc23_;
               _loc8_ = 9.999999999E9;
               _loc23_;
               _loc23_;
               _loc9_ = 0;
               while(_loc9_ < _loc2_.length)
               {
                  _loc24_;
                  _loc24_;
                  _loc4_ = _loc2_[_loc9_].pos.x - this.initialPoint.x;
                  _loc5_ = _loc2_[_loc9_].pos.y - this.initialPoint.y;
                  _loc24_;
                  _loc24_;
                  _loc23_;
                  _loc23_;
                  _loc6_ = Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_);
                  if((Math.sqrt(_loc4_ * _loc4_ + _loc5_ * _loc5_)) < _loc8_)
                  {
                     _loc23_;
                     _loc8_ = _loc6_;
                     _loc24_;
                     _loc24_;
                     _loc23_;
                     _loc23_;
                     _loc7_ = _loc9_;
                     _loc24_;
                     _loc24_;
                  }
                  _loc9_++;
               }
               _loc23_;
               _loc23_;
               _loc3_ = _loc2_[_loc7_];
               _loc23_;
            }
            else
            {
               _loc23_;
               _loc23_;
               if((_loc2_) && _loc2_.length == 1)
               {
                  _loc3_ = _loc2_[0];
               }
               else if(!_loc2_)
               {
                  _loc23_;
                  this.initialPlanetCheck = false;
               }
               
            }
            if(this.initialPlanetCheck)
            {
               _loc24_;
               this.initialPlanetCheck = false;
               _loc23_;
               _loc23_;
               this.§_-9N§(_loc3_);
            }
         }
         if(!this.initialPlanetCheck)
         {
            _loc23_;
            _loc23_;
            _loc23_;
            _loc23_;
            if(!visible && !this.insidePlanet)
            {
               _loc23_;
               _loc23_;
               visible = true;
               _loc24_;
               _loc24_;
            }
            this.§_-JB§ = iX;
            _loc24_;
            this.§_-Uv§ = iY;
            _loc23_;
            _loc23_;
            _loc24_;
            if((this.insidePlanet) && !this.test)
            {
               iX = SafeGlobal.§_-yl§(iX + this.momX / 3000 * param1);
               iY = SafeGlobal.§_-yl§(iY + this.momY / 3000 * param1);
               _loc23_;
               _loc23_;
               if(!dead)
               {
                  _loc24_;
                  _loc24_;
                  SafeGlobal.GAME.doPlanetBumps(this);
                  _loc24_;
               }
            }
            else
            {
               iX = SafeGlobal.§_-yl§(iX + this.momX / 1000 * param1);
               _loc23_;
               _loc23_;
               iY = SafeGlobal.§_-yl§(iY + this.momY / 1000 * param1);
               _loc23_;
               _loc23_;
            }
            _loc23_;
            _loc10_ = this.§_-JB§ - iX;
            _loc24_;
            _loc23_;
            _loc11_ = this.§_-Uv§ - iY;
            if(this.orientToPath)
            {
               _loc23_;
               _loc23_;
               rotation = Math.atan2(_loc11_,_loc10_) * 180 / SafeGlobal.PI - 90;
               _loc23_;
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
            if((this.unit) && (this.unit.fire))
            {
               _loc23_;
               _loc23_;
               _loc23_;
               _loc23_;
               _loc23_;
               _loc23_;
               this.§_-0t§.rotation = Math.atan2(_loc11_,_loc10_) * 180 / SafeGlobal.PI - 90 - rotation;
            }
            x = iX;
            y = iY;
            _loc24_;
            _loc24_;
            lastSimTime = lastSimTime + param1;
            _loc23_;
            _loc23_;
            if((this.unit) && !this.unit.fire)
            {
               SafeGlobal.GAME.checkSpecialPlanetProximity(this);
            }
            _loc8_ = 9999999;
            this.§_-wJ§.splice(0);
            _loc14_ = SafeGlobal.GAME.collisionProjectileGate(this);
            if(_loc14_)
            {
               _loc24_;
               _loc24_;
               this.§_-JN§(this.§_-wJ§,_loc14_);
               _loc23_;
               _loc14_.splice(0);
            }
            _loc14_ = SafeGlobal.GAME.collisionProjectilePlanetGate(this);
            if(_loc14_)
            {
               _loc23_;
               _loc23_;
               this.§_-JN§(this.§_-wJ§,_loc14_);
               _loc14_.splice(0);
            }
            _loc23_;
            _loc24_;
            _loc24_;
            _loc24_;
            if((!this.unit || this.unit && this.unit.rocketGloves) && (!this.mine) && !((this.test) && (this.§_-8z§)))
            {
               _loc14_ = SafeGlobal.GAME.collisionProjectileObjects(this);
               if(_loc14_)
               {
                  _loc24_;
                  _loc24_;
                  this.§_-JN§(this.§_-wJ§,_loc14_);
                  _loc23_;
                  _loc14_.splice(0);
               }
            }
            _loc14_ = SafeGlobal.GAME.collisionProjectileProjectile(this);
            if(_loc14_)
            {
               _loc23_;
               this.§_-JN§(this.§_-wJ§,_loc14_);
               _loc24_;
               _loc14_.splice(0);
            }
            _loc14_ = SafeGlobal.GAME.collisionProjectileSkyMine(this);
            if(_loc14_)
            {
               _loc24_;
               _loc24_;
               this.§_-JN§(this.§_-wJ§,_loc14_);
               _loc23_;
               _loc23_;
               _loc14_.splice(0);
            }
            _loc14_ = SafeGlobal.GAME.collisionProjectilePlanet(this);
            if(_loc14_)
            {
               this.§_-JN§(this.§_-wJ§,_loc14_);
               _loc14_.splice(0);
            }
            _loc23_;
            _loc23_;
            if(this.§_-wJ§.length > 0)
            {
               _loc23_;
               _loc23_;
               _loc23_;
               _loc9_ = 0;
               while(_loc9_ < this.§_-wJ§.length)
               {
                  _loc24_;
                  _loc24_;
                  _loc24_;
                  _loc24_;
                  _loc24_;
                  _loc24_;
                  _loc10_ = this.§_-wJ§[_loc9_].pos.x - this.§_-JB§;
                  _loc23_;
                  _loc24_;
                  _loc24_;
                  _loc23_;
                  _loc11_ = this.§_-wJ§[_loc9_].pos.y - this.§_-Uv§;
                  _loc23_;
                  _loc23_;
                  _loc24_;
                  _loc24_;
                  _loc24_;
                  _loc24_;
                  _loc24_;
                  _loc24_;
                  _loc24_;
                  _loc24_;
                  _loc24_;
                  _loc12_ = _loc10_ * _loc10_ + _loc11_ * _loc11_;
                  _loc24_;
                  if((_loc10_ * _loc10_ + _loc11_ * _loc11_) <= _loc8_)
                  {
                     _loc23_;
                     _loc23_;
                     _loc8_ = _loc12_;
                     _loc24_;
                     _loc24_;
                     _loc23_;
                     _loc23_;
                     _loc13_ = _loc9_;
                     _loc23_;
                  }
                  _loc9_++;
                  _loc24_;
               }
               _loc23_;
               _loc24_;
               _loc17_ = this.§_-wJ§[_loc13_];
               _loc23_;
               _loc23_;
               _loc23_;
               if(_loc17_.type == SafeGlobal.COLLTYPE_GATE)
               {
                  _loc23_;
                  _loc23_;
                  this.§_-Sx§(_loc17_);
                  _loc23_;
                  _loc23_;
               }
               else
               {
                  _loc24_;
                  _loc24_;
                  _loc24_;
                  if(_loc17_.type == SafeGlobal.COLLTYPE_PLANETGATE)
                  {
                     this.§_-70§(_loc17_);
                  }
                  else
                  {
                     _loc24_;
                     _loc23_;
                     if(_loc17_.type == SafeGlobal.COLLTYPE_OBJECT)
                     {
                        this.§_-ac§(_loc17_);
                     }
                     else
                     {
                        _loc23_;
                        _loc23_;
                        _loc23_;
                        if(_loc17_.type == SafeGlobal.COLLTYPE_PLANET)
                        {
                           _loc24_;
                           _loc24_;
                           this.§_-9N§(_loc17_);
                           _loc23_;
                        }
                        else
                        {
                           _loc23_;
                           _loc23_;
                           _loc23_;
                           if(_loc17_.type == SafeGlobal.§_-Ib§)
                           {
                              this.§_-j1§(_loc17_);
                           }
                           else if(_loc17_.type == SafeGlobal.§_-Hl§)
                           {
                              this.§_-80§(_loc17_);
                           }
                           
                        }
                     }
                  }
               }
            }
            this.§_-wJ§.splice(0);
            _loc24_;
            SafeGlobal.GAME.checkBounds(this);
            _loc23_;
            _loc23_;
            _loc23_;
            if(lastSimTime - startSimTime > §_-qb§ && !this.test)
            {
               _loc24_;
               _loc24_;
               _loc24_;
               if(this.unit)
               {
                  _loc23_;
                  SafeGlobal.GAME.addExplosion(this.unit.iX,this.unit.iY,this.unit.explosionRadius,this.unit.outerRadius,this.unit.damage,25,lastSimTime);
                  _loc24_;
                  _loc24_;
                  SafeGlobal.GAME.dissolveProjectile(this);
               }
               else
               {
                  this.§_-0V§();
                  _loc24_;
                  _loc24_;
               }
            }
            _loc24_;
            if(!this.test)
            {
               if(this.unit)
               {
               }
            }
            if(this.skillShot)
            {
               _loc23_;
               _loc23_;
               _loc10_ = this.§_-JB§ - iX;
               _loc24_;
               _loc24_;
               _loc11_ = this.§_-Uv§ - iY;
               _loc23_;
               _loc12_ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
               _loc24_;
               this.§_-wu§ = SafeGlobal.§_-yl§(this.§_-wu§ + _loc12_);
               this.§_-TG§ = this.§_-i3§;
               _loc23_;
               _loc23_;
               _loc24_;
               _loc23_;
               _loc23_;
               _loc23_;
               if(this.§_-wu§ >= this.§_-Ql§[3])
               {
                  this.§_-i3§ = 4;
               }
               else
               {
                  _loc23_;
                  _loc23_;
                  _loc23_;
                  if(this.§_-wu§ >= this.§_-Ql§[2])
                  {
                     this.§_-i3§ = 3;
                     _loc24_;
                  }
                  else
                  {
                     _loc24_;
                     _loc24_;
                     _loc23_;
                     _loc23_;
                     if(this.§_-wu§ >= this.§_-Ql§[1])
                     {
                        _loc24_;
                        this.§_-i3§ = 2;
                        _loc24_;
                     }
                     else if(this.§_-wu§ >= this.§_-Ql§[0])
                     {
                        this.§_-i3§ = 1;
                     }
                     
                  }
               }
               _loc23_;
               _loc23_;
               _loc23_;
               _loc23_;
               if(this.§_-i3§ > this.§_-TG§)
               {
                  _loc23_;
                  if(this.§_-i3§ == 1)
                  {
                     SafeGlobal.GAME.showSkillShot(SafeGlobal.SKILLMARKER_LONGSHOT,iX,iY);
                  }
                  else
                  {
                     _loc24_;
                     _loc24_;
                     _loc24_;
                     if(this.§_-i3§ == 2)
                     {
                        SafeGlobal.GAME.showSkillShot(SafeGlobal.SKILLMARKER_SUPERLONGSHOT,iX,iY);
                     }
                     else
                     {
                        _loc24_;
                        _loc24_;
                        if(this.§_-i3§ == 3)
                        {
                           SafeGlobal.GAME.showSkillShot(SafeGlobal.SKILLMARKER_ULTRALONGSHOT,iX,iY);
                        }
                        else if(this.§_-i3§ == 4)
                        {
                           _loc23_;
                           _loc23_;
                           SafeGlobal.GAME.showSkillShot(SafeGlobal.SKILLMARKER_MEGALONGSHOT,iX,iY);
                        }
                        
                     }
                  }
               }
               _loc18_ = SafeGlobal.GAME.planets;
               if(this.§_-Cp§.length == 0)
               {
                  _loc24_;
                  _loc24_;
                  _loc21_ = 0;
                  while(true)
                  {
                     _loc23_;
                     _loc23_;
                     if(_loc21_ >= _loc18_.length)
                     {
                        break;
                     }
                     this.§_-Cp§.push(new Point(-999,-999));
                     _loc23_;
                     _loc23_;
                     _loc21_++;
                  }
               }
               _loc24_;
               _loc21_ = 0;
               _loc23_;
               _loc23_;
               while(_loc21_ < _loc18_.length)
               {
                  _loc24_;
                  _loc24_;
                  _loc24_;
                  _loc24_;
                  if(_loc18_[_loc21_].mass > 0 && !this.insidePlanet)
                  {
                     _loc23_;
                     _loc23_;
                     _loc24_;
                     _loc10_ = _loc18_[_loc21_].x - iX;
                     _loc24_;
                     _loc24_;
                     _loc24_;
                     _loc11_ = _loc18_[_loc21_].y - iY;
                     _loc24_;
                     _loc23_;
                     _loc12_ = Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_);
                     _loc24_;
                     _loc24_;
                     if((Math.sqrt(_loc10_ * _loc10_ + _loc11_ * _loc11_)) <= _loc18_[_loc21_].radius + 100 && _loc12_ >= _loc18_[_loc21_].radius - 20)
                     {
                        _loc23_;
                        _loc23_;
                        _loc19_ = SafeGlobal.§_-yl§(Math.atan2(_loc11_,_loc10_));
                        _loc24_;
                        _loc24_;
                        _loc24_;
                        _loc24_;
                        _loc23_;
                        _loc23_;
                        if(this.§_-Cp§[_loc21_].x == -999 && this.§_-Cp§[_loc21_].y == -999)
                        {
                           _loc23_;
                           _loc23_;
                           this.§_-Cp§[_loc21_] = new Point(_loc19_,_loc19_);
                           _loc23_;
                           _loc23_;
                        }
                        else
                        {
                           _loc24_;
                           _loc24_;
                           if(_loc19_ < this.§_-Cp§[_loc21_].x)
                           {
                              _loc23_;
                              _loc23_;
                              _loc23_;
                              _loc23_;
                              _loc24_;
                              _loc24_;
                              _loc23_;
                              if(this.§_-Cp§[_loc21_].x - _loc19_ > SafeGlobal.PI * 0.65)
                              {
                                 _loc24_;
                                 _loc24_;
                                 _loc19_ = SafeGlobal.§_-yl§(_loc19_ + SafeGlobal.PI * 2);
                                 _loc23_;
                                 this.§_-Cp§[_loc21_].y = _loc19_;
                                 _loc24_;
                              }
                              else
                              {
                                 this.§_-Cp§[_loc21_].x = _loc19_;
                              }
                           }
                           else
                           {
                              _loc24_;
                              _loc24_;
                              _loc24_;
                              if(_loc19_ > this.§_-Cp§[_loc21_].y)
                              {
                                 _loc24_;
                                 _loc24_;
                                 _loc24_;
                                 _loc23_;
                                 _loc23_;
                                 if(_loc19_ - this.§_-Cp§[_loc21_].y > SafeGlobal.PI * 0.65)
                                 {
                                    _loc23_;
                                    _loc24_;
                                    _loc24_;
                                    _loc23_;
                                    _loc19_ = SafeGlobal.§_-yl§(_loc19_ - SafeGlobal.PI * 2);
                                    _loc24_;
                                    _loc24_;
                                    _loc24_;
                                    _loc24_;
                                    this.§_-Cp§[_loc21_].x = _loc19_;
                                 }
                                 else
                                 {
                                    _loc23_;
                                    _loc23_;
                                    _loc23_;
                                    _loc23_;
                                    this.§_-Cp§[_loc21_].y = _loc19_;
                                 }
                              }
                           }
                           _loc23_;
                           _loc20_ = SafeGlobal.§_-yl§(this.§_-Cp§[_loc21_].y - this.§_-Cp§[_loc21_].x);
                           if((SafeGlobal.§_-yl§(this.§_-Cp§[_loc21_].y - this.§_-Cp§[_loc21_].x)) >= SafeGlobal.PI)
                           {
                              _loc24_;
                              _loc24_;
                              if(this.§_-zD§.length == 0 || this.§_-zD§[this.§_-zD§.length - 1] == _loc21_)
                              {
                                 _loc24_;
                                 _loc24_;
                                 this.§_-Cu§(iX,iY);
                                 _loc23_;
                                 _loc23_;
                              }
                              else
                              {
                                 this.§_-ip§(iX,iY);
                              }
                              _loc24_;
                              this.§_-zD§.push(_loc21_);
                              _loc24_;
                              _loc24_;
                              _loc24_;
                              this.§_-Cp§[_loc21_].x = -999;
                              _loc23_;
                              _loc23_;
                              _loc24_;
                              _loc24_;
                              _loc24_;
                              _loc24_;
                              this.§_-Cp§[_loc21_].y = -999;
                              _loc23_;
                              _loc23_;
                           }
                        }
                     }
                     else
                     {
                        _loc23_;
                        this.§_-Cp§[_loc21_].x = -999;
                        this.§_-Cp§[_loc21_].y = -999;
                     }
                  }
                  else if(this.insidePlanet)
                  {
                     _loc24_;
                     this.§_-Cp§[_loc21_].x = -999;
                     _loc23_;
                     _loc23_;
                     this.§_-Cp§[_loc21_].y = -999;
                  }
                  
                  _loc21_++;
               }
            }
            _loc15_ = SafeGlobal.GAME.debugLayer;
            _loc16_ = SafeGlobal.GAME.planets;
            _loc23_;
            _loc23_;
            _loc21_ = 0;
            _loc24_;
            _loc24_;
            while(true)
            {
               _loc23_;
               _loc24_;
               if(_loc21_ >= this.§_-Cp§.length)
               {
                  break;
               }
               _loc23_;
               _loc23_;
               _loc23_;
               _loc24_;
               _loc24_;
               _loc23_;
               _loc23_;
               _loc24_;
               _loc24_;
               if(!(this.§_-Cp§[_loc21_].x == -999) && !(this.§_-Cp§[_loc21_].y == -999))
               {
               }
               _loc21_++;
            }
            this.§_-u7§();
            _loc23_;
            _loc23_;
            if(this.unit)
            {
               _loc23_;
               _loc23_;
               this.unit.iX = iX;
               this.unit.iY = iY;
               _loc23_;
               _loc23_;
               SafeGlobal.GAME.checkMineProximity(this.unit,lastSimTime);
               SafeGlobal.GAME.checkPowerUpProximity(this.unit,this.unit.lastSimTime);
            }
            _loc24_;
            if(this.mine)
            {
               _loc23_;
               _loc23_;
               _loc24_;
               _loc24_;
               this.mine.iX = iX;
               _loc24_;
               _loc24_;
               this.mine.iY = iY;
               _loc24_;
               _loc24_;
               _loc24_;
               _loc24_;
               if(this.mine.triggerTime == 0)
               {
                  _loc23_;
                  _loc23_;
                  SafeGlobal.GAME.checkUnitProximity(this.mine,lastSimTime);
               }
            }
            _loc24_;
            _loc24_;
            if(!this.test && !SafeGlobal.GAME.simOnly)
            {
               _loc23_;
               _loc23_;
               _loc22_ = 0;
               _loc23_;
               while(_loc22_ < this.§_-W5§.length)
               {
                  this.§_-W5§[_loc22_].nextPos(iX,iY,rotation,scaleX);
                  _loc22_++;
               }
               SafeGlobal.GAME.doEmitters(this);
            }
         }
      }
      
      public function §_-HI§() : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc4_;
         _loc4_;
         if(this.§_-sK§ < 12)
         {
            _loc4_;
            _loc3_;
            _loc4_;
            _loc4_;
            this.§_-sK§++;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-0t§.scaleY = 1 / 10 * this.§_-sK§;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-0t§.scaleX = _loc1_;
         }
         else if(this.§_-sK§ <= 15)
         {
            _loc4_;
            _loc3_;
            _loc4_;
            _loc4_;
            this.§_-sK§++;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            this.§_-0t§.scaleX = this.§_-0t§.scaleY = 1 + (15 - this.§_-sK§) / 10;
         }
         
      }
      
      public function §_-0V§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         dead = true;
         _loc1_;
         _loc1_;
         this.§_-23§ = SafeGlobal.DEADREASON_TIMEOUT;
         _loc2_;
         this.§_-2i§ = 0;
         _loc1_;
         this.§_-p-§.x = iX;
         _loc2_;
         this.§_-p-§.y = iY;
      }
      
      public function §_-u7§() : *
      {
      }
      
      public function §_-oz§(param1:*) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         return SafeGlobal.§_-yl§(1.3 * SafeGlobal.PI * param1 * param1 * param1);
      }
      
      public function §_-my§(param1:Number, param2:Number) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc6_;
         _loc5_;
         _loc5_;
         if(this.§_-Gc§ < 4)
         {
            _loc6_;
            _loc6_;
            _loc5_;
            this.§_-Gc§++;
            _loc5_;
            _loc5_;
            _loc6_;
            if(this.§_-Gc§ == 1)
            {
               _loc6_;
               SafeGlobal.GAME.showSkillShot(SafeGlobal.SKILLMARKER_BOUNCE,param1,param2);
               _loc5_;
            }
            else
            {
               _loc6_;
               _loc6_;
               _loc5_;
               _loc5_;
               if(this.§_-Gc§ == 2)
               {
                  _loc5_;
                  _loc5_;
                  SafeGlobal.GAME.showSkillShot(SafeGlobal.SKILLMARKER_SUPERBOUNCE,param1,param2);
               }
               else
               {
                  _loc6_;
                  _loc5_;
                  if(this.§_-Gc§ == 3)
                  {
                     SafeGlobal.GAME.showSkillShot(SafeGlobal.SKILLMARKER_ULTRABOUNCE,param1,param2);
                  }
                  else if(this.§_-Gc§ == 4)
                  {
                     SafeGlobal.GAME.showSkillShot(SafeGlobal.SKILLMARKER_MEGABOUNCE,param1,param2);
                  }
                  
               }
            }
         }
      }
      
      public function §_-dF§(param1:Number, param2:Number) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc6_;
         if(this.§do § < 4)
         {
            _loc5_;
            _loc6_;
            _loc6_;
            this.§do §++;
            _loc5_;
            _loc5_;
            SafeGlobal.GAME.showSkillShot(SafeGlobal.SKILLMARKER_DIG,param1,param2);
         }
      }
      
      public function §_-Cu§(param1:Number, param2:Number) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc6_;
         _loc6_;
         if(this.§_-c7§ < 4)
         {
            _loc6_;
            _loc5_;
            _loc6_;
            _loc6_;
            this.§_-c7§++;
            _loc6_;
            SafeGlobal.GAME.showSkillShot(SafeGlobal.SKILLMARKER_HALFORBIT,param1,param2);
         }
      }
      
      public function §_-ip§(param1:Number, param2:Number) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc5_;
         if(this.§_-c7§ < 4)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            this.§_-c7§++;
            _loc5_;
            SafeGlobal.GAME.showSkillShot(SafeGlobal.SKILLMARKER_FULLORBIT,param1,param2);
         }
      }
      
      public function §_-If§(param1:Number, param2:Number) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc6_;
         _loc6_;
         if(this.§_-5s§ < 4)
         {
            _loc5_;
            _loc6_;
            _loc5_;
            _loc5_;
            this.§_-5s§++;
            _loc5_;
            _loc5_;
            SafeGlobal.GAME.showSkillShot(SafeGlobal.SKILLMARKER_WORMHOLE,param1,param2);
         }
      }
      
      public function setMine(param1:Mine) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.mine = param1;
         _loc3_;
         this.orientToPath = false;
      }
      
      public function §_-AO§() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-s-§ = false;
      }
      
      public function useProjString(param1:String, param2:Boolean) : *
      {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc7_:Array = null;
         var _loc9_:* = 0;
         var _loc10_:* = 0;
         _loc11_;
         this.§_-AO§();
         _loc11_;
         _loc11_;
         this.custom = param2;
         _loc12_;
         _loc12_;
         this.§_-ny§ = 0;
         var _loc3_:Array = param1.split("/");
         var _loc4_:String = _loc3_[0];
         var _loc5_:* = "";
         _loc11_;
         if(_loc3_.length > 1)
         {
            _loc11_;
            _loc9_ = 1;
            while(_loc9_ < _loc3_.length)
            {
               _loc12_;
               _loc12_;
               if(_loc9_ > 1)
               {
                  _loc11_;
                  _loc12_;
                  _loc12_;
                  _loc5_ = _loc5_ + "/";
                  _loc11_;
                  _loc11_;
               }
               _loc11_;
               _loc11_;
               _loc11_;
               _loc5_ = _loc5_ + _loc3_[_loc9_];
               _loc11_;
               _loc9_++;
               _loc11_;
            }
            _loc11_;
         }
         this.§_-l2§ = _loc5_;
         var _loc6_:Array = _loc4_.split(";");
         var _loc8_:* = 0;
         _loc11_;
         _loc11_;
         while(_loc8_ < _loc6_.length)
         {
            _loc7_ = _loc6_[_loc8_].split(",");
            if(_loc7_[0] == "g")
            {
               if(!param2)
               {
                  init(SafeGlobal.GAME.projGFX[int(_loc7_[1])]);
               }
               else
               {
                  init(SafeGlobal.GAME.customProjectileGFX[int(_loc7_[2])]);
                  _loc11_;
                  _loc11_;
               }
            }
            else if(_loc7_[0] == "e")
            {
               if(int(_loc7_[1]) == SafeGlobal.TRAILTYPE_NONE)
               {
                  this.setupEmittors(SafeGlobal.TRAILTYPE_NONE,[]);
               }
               else if(int(_loc7_[1]) == SafeGlobal.TRAILTYPE_THINSMOKE)
               {
                  this.setupEmittors(SafeGlobal.TRAILTYPE_THINSMOKE,[uint(_loc7_[2])]);
               }
               else if(int(_loc7_[1]) == SafeGlobal.TRAILTYPE_THICKSMOKE)
               {
                  this.setupEmittors(SafeGlobal.TRAILTYPE_THICKSMOKE,[uint(_loc7_[2])]);
                  _loc11_;
                  _loc11_;
               }
               else if(int(_loc7_[1]) == SafeGlobal.TRAILTYPE_BULLET)
               {
                  _loc12_;
                  this.setupEmittors(SafeGlobal.TRAILTYPE_BULLET,[]);
               }
               else if(int(_loc7_[1]) == SafeGlobal.§_-MC§)
               {
                  _loc12_;
                  this.setupEmittors(SafeGlobal.§_-MC§,[uint(_loc7_[2])]);
                  _loc12_;
               }
               else if(int(_loc7_[1]) == SafeGlobal.TRAILTYPE_METEORSMALL)
               {
                  this.setupEmittors(SafeGlobal.TRAILTYPE_METEORSMALL,[uint(_loc7_[2])]);
                  _loc11_;
                  _loc11_;
               }
               else if(int(_loc7_[1]) == SafeGlobal.TRAILTYPE_METEORMEDIUM)
               {
                  this.setupEmittors(SafeGlobal.TRAILTYPE_METEORMEDIUM,[uint(_loc7_[2])]);
                  _loc12_;
               }
               else if(int(_loc7_[1]) == SafeGlobal.TRAILTYPE_METEORLARGE)
               {
                  _loc12_;
                  this.setupEmittors(SafeGlobal.TRAILTYPE_METEORLARGE,[uint(_loc7_[2])]);
                  _loc11_;
                  _loc11_;
               }
               else if(int(_loc7_[1]) == SafeGlobal.TRAILTYPE_JETPACK)
               {
                  this.setupEmittors(SafeGlobal.TRAILTYPE_JETPACK,[uint(_loc7_[2])]);
                  _loc11_;
               }
               else if(int(_loc7_[1]) == SafeGlobal.§_-RJ§)
               {
                  this.setupEmittors(SafeGlobal.§_-RJ§,[uint(_loc7_[2])]);
               }
               else if(int(_loc7_[1]) == SafeGlobal.§_-0D§)
               {
                  this.setupEmittors(SafeGlobal.§_-0D§,[uint(_loc7_[2])]);
                  _loc12_;
                  _loc12_;
               }
               
               
               
               
               
               
               
               
               
               
            }
            else if(_loc7_[0] == "x")
            {
               this.§_-s-§ = true;
               _loc11_;
               _loc11_;
            }
            else if(_loc7_[0] == "d")
            {
               this.damage = int(_loc7_[2]) * 10;
               this.push = this.damage + 20;
               this.explosionRadius = (int(_loc7_[1]) + 3) * 5;
               this.outerRadius = this.explosionRadius + 20;
            }
            else if(_loc7_[0] == "p")
            {
               _loc10_ = (int(_loc7_[2]) + 1) * 5;
               this.push = _loc10_ + 20;
               _loc12_;
               this.explosionRadius = (int(_loc7_[1]) + 3) * 5;
               this.outerRadius = this.explosionRadius + 20;
            }
            else if(_loc7_[0] == "h")
            {
               this.§_-b4§ = int(_loc7_[2]) * 10;
               _loc12_;
               this.§_-T0§ = (int(_loc7_[1]) + 3) * 5;
            }
            else if(_loc7_[0] == "m")
            {
               this.emp = true;
               this.§_-Qc§ = int(_loc7_[2]);
               this.empRadius = (int(_loc7_[1]) + 3) * 5;
            }
            else if(_loc7_[0] == "f")
            {
               this.fire = true;
               this.§_-O-§ = (int(_loc7_[1]) + 3) * 5;
            }
            else if(_loc7_[0] == "r")
            {
               this.radioactive = int(_loc7_[1]) * 5;
               _loc11_;
            }
            else if(_loc7_[0] == "a")
            {
               _loc12_;
               this.§_-2W§ = true;
            }
            else if(_loc7_[0] == "b")
            {
               _loc12_;
               _loc12_;
               this.§_-ny§ = int(_loc7_[1]);
            }
            else if(_loc7_[0] == "i")
            {
               _loc11_;
               _loc11_;
               this.§_-9r§ = int(_loc7_[1]);
               _loc12_;
            }
            else if(_loc7_[0] == "o")
            {
               _loc11_;
               _loc11_;
               this.§_-Ve§ = (int(_loc7_[1]) + 3) * 5;
               this.poison = int(_loc7_[2]) * 5;
               _loc11_;
            }
            else if(_loc7_[0] == "y")
            {
               this.payloadCount = int(_loc7_[1]);
            }
            else if(_loc7_[0] == "u")
            {
               this.§_-tV§ = (int(_loc7_[1]) + 3) * 5;
               this.§_-xS§ = int(_loc7_[2]) * 10;
            }
            
            
            
            
            
            
            
            
            
            
            
            
            
            
            _loc8_++;
         }
      }
      
      public function setIgnoreUnit(param1:int) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.ignoreUnit = param1;
         _loc3_;
         _loc3_;
         this.§_-EZ§ = startSimTime + 1000;
      }
      
      public function §_-vx§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.ignoreUnit = -1;
         _loc2_;
         this.§_-EZ§ = -1;
      }
      
      public function §_-Xx§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         while(_loc1_ < this.§_-W5§.length)
         {
            this.§_-W5§[_loc1_].skipNext = true;
            _loc3_;
            _loc3_;
            _loc1_++;
            _loc2_;
            _loc2_;
         }
      }
      
      public function setupEmittors(param1:int, param2:Array) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         if(param1 == SafeGlobal.TRAILTYPE_NONE)
         {
            _loc3_;
            _loc3_;
            this.§_-W5§ = [];
         }
         else
         {
            _loc3_;
            _loc3_;
            if(param1 == SafeGlobal.TRAILTYPE_THINSMOKE)
            {
               _loc3_;
               this.§_-W5§ = [new StandardEmitter(param2[0],this.custom,12)];
            }
            else
            {
               _loc3_;
               _loc3_;
               _loc3_;
               if(param1 == SafeGlobal.TRAILTYPE_THICKSMOKE)
               {
                  _loc4_;
                  this.§_-W5§ = [new StandardEmitter(param2[0],this.custom,12)];
               }
               else
               {
                  _loc4_;
                  _loc4_;
                  if(param1 == SafeGlobal.TRAILTYPE_BULLET)
                  {
                     _loc3_;
                     _loc3_;
                     this.§_-W5§ = [new StraightEmitter(0,this.custom,4)];
                     _loc3_;
                  }
                  else
                  {
                     _loc4_;
                     _loc4_;
                     if(param1 == SafeGlobal.§_-MC§)
                     {
                        this.§_-W5§ = [new StandardEmitter(param2[0],this.custom,12)];
                     }
                     else
                     {
                        _loc4_;
                        _loc4_;
                        if(param1 == SafeGlobal.TRAILTYPE_METEORSMALL)
                        {
                           _loc3_;
                           this.§_-W5§ = [new WideEmitter(param2[0],this.custom,0)];
                        }
                        else
                        {
                           _loc4_;
                           _loc3_;
                           _loc3_;
                           if(param1 == SafeGlobal.TRAILTYPE_METEORMEDIUM)
                           {
                              _loc3_;
                              this.§_-W5§ = [new WideEmitter(param2[0],this.custom,0)];
                              _loc4_;
                           }
                           else
                           {
                              _loc3_;
                              _loc3_;
                              _loc3_;
                              _loc3_;
                              if(param1 == SafeGlobal.TRAILTYPE_METEORLARGE)
                              {
                                 _loc4_;
                                 this.§_-W5§ = [new WideEmitter(param2[0],this.custom,0)];
                              }
                              else
                              {
                                 _loc3_;
                                 if(param1 == SafeGlobal.TRAILTYPE_JETPACK)
                                 {
                                    this.§_-W5§ = [new JetpackEmitter(param2[0],this.custom,12)];
                                    _loc4_;
                                    _loc4_;
                                 }
                                 else
                                 {
                                    _loc3_;
                                    _loc3_;
                                    _loc3_;
                                    if(param1 == SafeGlobal.TRAILTYPE_METEORSMALL)
                                    {
                                       this.§_-W5§ = [new JetpackEmitter(param2[0],this.custom,12)];
                                       _loc3_;
                                       _loc3_;
                                    }
                                    else
                                    {
                                       _loc3_;
                                       if(param1 == SafeGlobal.TRAILTYPE_METEORMEDIUM)
                                       {
                                          this.§_-W5§ = [new JetpackEmitter(param2[0],this.custom,12)];
                                       }
                                       else
                                       {
                                          _loc3_;
                                          _loc4_;
                                          if(param1 == SafeGlobal.TRAILTYPE_METEORLARGE)
                                          {
                                             _loc4_;
                                             _loc4_;
                                             this.§_-W5§ = [new JetpackEmitter(param2[0],this.custom,12)];
                                          }
                                          else
                                          {
                                             _loc4_;
                                             _loc3_;
                                             if(param1 == SafeGlobal.§_-RJ§)
                                             {
                                                this.§_-W5§ = [new §_-YP§(param2[0],this.custom,12)];
                                             }
                                             else if(param1 == SafeGlobal.§_-0D§)
                                             {
                                                this.§_-W5§ = [new §_-oQ§(param2[0],this.custom,12)];
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
            }
         }
      }
      
      override public function animProgress(param1:int = 0) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         if(this.mine)
         {
            _loc4_;
            if(this.mine.triggerTime > 0)
            {
               _loc4_;
               _loc4_;
               animStep++;
               if(animStep >= spriteSheet.frames)
               {
                  animStep = animStep - spriteSheet.frames;
                  _loc4_;
                  _loc4_;
               }
            }
            else
            {
               animStep = 0;
            }
         }
         else
         {
            _loc4_;
            animStep++;
            _loc5_;
            if(animStep >= spriteSheet.frames)
            {
               _loc5_;
               _loc5_;
               animStep = animStep - spriteSheet.frames;
               _loc5_;
            }
            _loc5_;
            _loc4_;
            _loc4_;
            this.§_-Vn§--;
         }
      }
      
      override public function updateImage() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:BitmapData = null;
         tempRect = spriteSheet.getChunk(animStep);
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         if(!(tempBD.width == tempRect.width && tempBD.height == tempRect.height))
         {
            tempBD.dispose();
            tempBD = new BitmapData(tempRect.width,tempRect.height,true,0);
            _loc3_;
            _loc3_;
         }
         tempBD.copyPixels(spriteSheet.sheetBD,tempRect,§_-Fa§,null,null,false);
         if(this.§_-Vn§ > 0)
         {
            _loc2_;
            _loc2_;
            _loc1_ = new BitmapData(tempBD.width,tempBD.height,true,4.294967295E9);
            _loc2_;
            _loc2_;
            _loc1_.copyChannel(tempBD,tempBD.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
            _loc2_;
            tempBD.fillRect(tempBD.rect,4.294967295E9);
            _loc3_;
            _loc3_;
            tempBD.copyChannel(_loc1_,_loc1_.rect,new Point(0,0),BitmapDataChannel.ALPHA,BitmapDataChannel.ALPHA);
         }
         §_-EH§(tempBD);
      }
      
      public function destroyMe() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         §_-Mn§();
      }
   }
}
