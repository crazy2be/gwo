package §_-zO§
{
   public class Team extends Object
   {
      
      public function Team(param1:int)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         super();
         _loc2_;
         this.teamID = param1;
      }
      
      public var teamName:String = "";
      
      public var colourID:int = 0;
      
      public var totalHealth:int = 0;
      
      public var teamID:int = -1;
      
      public var helmetID:int = 0;
      
      public var tauntID:int = -1;
      
      public var idle1ID:int = -1;
      
      public var idle2ID:int = -1;
      
      public var idle3ID:int = -1;
      
      public var idle4ID:int = -1;
      
      public var victoryID:int = -1;
      
      public var customWeaponStrings:Array;
      
      public var finalPos:int = -1;
      
      public var tempPos:int = -1;
      
      public var displayedKnockedOut:Boolean = false;
      
      public var droppedOutEarly:Boolean = false;
      
      public var droppedOut:Boolean = false;
      
      public var teamBattleID:int = -1;
      
      public function updateHealth() : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Array = SafeGlobal.GAME.units;
         _loc4_;
         this.totalHealth = 0;
         var _loc2_:* = 0;
         while(_loc2_ < _loc1_.length)
         {
            if(_loc1_[_loc2_].team == this.teamID)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               this.totalHealth = this.totalHealth + (_loc1_[_loc2_].health < 0?0:_loc1_[_loc2_].health);
               _loc3_;
            }
            _loc2_++;
            _loc3_;
            _loc3_;
         }
         _loc4_;
         _loc4_;
         SafeGlobal.GAME.statuses[this.teamID].setHealth(this.totalHealth);
      }
      
      public function setCustomWeaponStrings(param1:String, param2:Boolean = false) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.customWeaponStrings = param1.split("+");
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         if(this.customWeaponStrings[0] == "")
         {
            _loc4_;
            _loc3_;
            _loc3_;
            _loc3_;
            this.customWeaponStrings[0] = "g,0,0;p,1/g,0,0;e,0,0";
         }
         _loc3_;
         _loc4_;
         _loc4_;
         if(this.customWeaponStrings[1] == "")
         {
            _loc4_;
            _loc4_;
            _loc3_;
            _loc4_;
            this.customWeaponStrings[1] = "g,0,0;p,1/g,0,0;e,0,0";
            _loc4_;
            _loc4_;
         }
         _loc4_;
         _loc3_;
         _loc3_;
         if(this.customWeaponStrings[2] == "")
         {
            _loc3_;
            this.customWeaponStrings[2] = "g,0,0;p,1/g,0,0;e,0,0";
            _loc4_;
            _loc4_;
         }
         this.§_-rd§(param2);
      }
      
      public function §_-rd§(param1:Boolean) : *
      {
         var _loc17_:* = true;
         var _loc18_:* = false;
         var _loc3_:Array = null;
         var _loc4_:String = null;
         var _loc5_:Array = null;
         var _loc6_:* = 0;
         var _loc7_:String = null;
         var _loc8_:Array = null;
         var _loc9_:* = 0;
         var _loc10_:String = null;
         var _loc11_:Array = null;
         var _loc12_:String = null;
         var _loc13_:uint = 0;
         var _loc14_:* = 0;
         var _loc15_:* = 0;
         var _loc16_:* = 0;
         var _loc2_:* = 0;
         while(_loc2_ < this.customWeaponStrings.length)
         {
            _loc3_ = [];
            _loc18_;
            _loc4_ = this.customWeaponStrings[_loc2_];
            _loc5_ = _loc4_.split("/");
            _loc18_;
            _loc18_;
            _loc17_;
            _loc6_ = 0;
            _loc17_;
            _loc17_;
            while(_loc6_ < _loc5_.length)
            {
               _loc18_;
               _loc18_;
               _loc7_ = _loc5_[_loc6_];
               _loc8_ = _loc7_.split(";");
               _loc18_;
               _loc18_;
               _loc18_;
               _loc18_;
               _loc9_ = 0;
               _loc18_;
               _loc18_;
               while(_loc9_ < _loc8_.length)
               {
                  _loc17_;
                  _loc10_ = _loc8_[_loc9_];
                  _loc11_ = _loc10_.split(",");
                  _loc18_;
                  _loc18_;
                  _loc12_ = "";
                  _loc18_;
                  _loc18_;
                  if(_loc11_[0] == "g" && _loc6_ == 0)
                  {
                     _loc14_ = SafeGlobal.GAME.generateCustomWeapon(int(_loc11_[1]),int(_loc11_[2]));
                     _loc18_;
                     _loc18_;
                     _loc18_;
                     _loc18_;
                     _loc18_;
                     _loc17_;
                     _loc18_;
                     _loc17_;
                     _loc12_ = "g," + _loc11_[1] + "," + _loc14_;
                     _loc18_;
                     if("g," + _loc11_[1] + "," + _loc14_ != "")
                     {
                        _loc18_;
                        _loc8_[_loc9_] = _loc12_;
                     }
                  }
                  else
                  {
                     _loc18_;
                     _loc18_;
                     if(_loc11_[0] == "n" && _loc6_ == 0)
                     {
                        if(param1)
                        {
                           SafeGlobal.GAME.weaponPanel.customNames[_loc2_] = _loc11_[1].split("*").join(" ");
                           _loc18_;
                           _loc18_;
                        }
                     }
                     else
                     {
                        _loc18_;
                        if(_loc11_[0] == "g" && _loc6_ > 0)
                        {
                           _loc18_;
                           _loc18_;
                           _loc15_ = SafeGlobal.GAME.generateCustomProjectile(int(_loc11_[1]),int(_loc11_[2]));
                           _loc17_;
                           _loc17_;
                           _loc18_;
                           _loc18_;
                           _loc12_ = "g," + _loc11_[1] + "," + _loc15_;
                           _loc17_;
                           _loc17_;
                           if(_loc12_ != "")
                           {
                              _loc18_;
                              _loc8_[_loc9_] = _loc12_;
                           }
                        }
                        else if(_loc11_[0] == "e")
                        {
                           _loc18_;
                           _loc18_;
                           if(int(_loc11_[1]) == SafeGlobal.TRAILTYPE_THINSMOKE)
                           {
                              _loc17_;
                              _loc17_;
                              _loc17_;
                              _loc17_;
                              _loc13_ = uint(_loc11_[2]);
                              _loc18_;
                              _loc18_;
                              _loc16_ = SafeGlobal.GAME.generateCustomParticle(SafeGlobal.PARTICLETYPE_CIRCLE,0.18,0.05,SafeGlobal.cw_trail_colours[_loc13_],SafeGlobal.cw_trail_colours[_loc13_],0.8,0.1,0);
                              _loc18_;
                              _loc18_;
                              _loc17_;
                              _loc17_;
                              _loc17_;
                              _loc17_;
                              _loc17_;
                              _loc17_;
                              _loc17_;
                              _loc12_ = "e," + _loc11_[1] + "," + _loc16_;
                           }
                           else if(int(_loc11_[1]) == SafeGlobal.TRAILTYPE_THICKSMOKE)
                           {
                              _loc18_;
                              _loc18_;
                              _loc13_ = uint(_loc11_[2]);
                              _loc18_;
                              _loc18_;
                              _loc16_ = SafeGlobal.GAME.generateCustomParticle(SafeGlobal.PARTICLETYPE_CIRCLE,0.18,0.6,SafeGlobal.cw_trail_colours[_loc13_],SafeGlobal.cw_trail_colours[_loc13_],1,0,0);
                              _loc17_;
                              _loc18_;
                              _loc18_;
                              _loc17_;
                              _loc17_;
                              _loc18_;
                              _loc17_;
                              _loc12_ = "e," + _loc11_[1] + "," + _loc16_;
                              _loc18_;
                              _loc18_;
                           }
                           else if(int(_loc11_[1]) == SafeGlobal.TRAILTYPE_BULLET)
                           {
                              _loc16_ = SafeGlobal.GAME.generateCustomParticle(SafeGlobal.PARTICLETYPE_RING,1,0.5,16777215,16777215,0.5,0.2,0);
                              _loc18_;
                              _loc18_;
                              _loc17_;
                              _loc17_;
                              _loc17_;
                              _loc17_;
                              _loc18_;
                              _loc17_;
                              _loc17_;
                              _loc12_ = "e," + _loc11_[1] + "," + _loc16_;
                           }
                           else if(int(_loc11_[1]) == SafeGlobal.§_-MC§)
                           {
                              _loc17_;
                              _loc13_ = uint(_loc11_[2]);
                              _loc16_ = SafeGlobal.GAME.generateCustomParticle(SafeGlobal.§_-SS§,0.2,0.4,SafeGlobal.cw_trail_colours[_loc13_],SafeGlobal.cw_trail_colours[_loc13_],1,0.1,0);
                              _loc18_;
                              _loc18_;
                              _loc18_;
                              _loc18_;
                              _loc12_ = "e," + _loc11_[1] + "," + _loc16_;
                              _loc18_;
                           }
                           
                           
                           
                           if(_loc12_ != "")
                           {
                              _loc8_[_loc9_] = _loc12_;
                              _loc17_;
                              _loc17_;
                           }
                        }
                        
                     }
                  }
                  _loc9_++;
               }
               _loc18_;
               _loc18_;
               _loc3_.push(_loc8_.join(";"));
               _loc18_;
               _loc18_;
               _loc6_++;
            }
            _loc17_;
            this.customWeaponStrings[_loc2_] = _loc3_.join("/");
            _loc17_;
            _loc2_++;
         }
      }
      
      public function destroyMe() : *
      {
      }
   }
}
