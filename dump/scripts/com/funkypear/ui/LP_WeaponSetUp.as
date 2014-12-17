package com.funkypear.ui
{
   import flash.text.TextField;
   import flash.display.MovieClip;
   import §_-WX§.§_-A§;
   import flash.display.Sprite;
   import §_-Cv§.ItemsData;
   import flash.text.TextFormat;
   
   public class LP_WeaponSetUp extends §_-A3§
   {
      
      public function LP_WeaponSetUp(param1:Sprite)
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         this.§_-u1§ = new Array();
         _loc4_;
         _loc4_;
         this.level = new §_-A§(-1);
         _loc4_;
         _loc4_;
         this.§_-fk§ = new §_-A§(-1);
         _loc4_;
         super(param1);
         var _loc2_:TextFormat = new TextFormat();
         _loc4_;
         _loc2_.letterSpacing = -1;
         _loc5_;
         _loc5_;
         this.name_text.defaultTextFormat = _loc2_;
         _loc4_;
         _loc4_;
         this.desc_text.defaultTextFormat = _loc2_;
         _loc4_;
         this.§_-fo§.defaultTextFormat = _loc2_;
         var _loc3_:TextFormat = new TextFormat();
         _loc3_.letterSpacing = -2;
         _loc5_;
         _loc5_;
         this.§_-aa§.defaultTextFormat = _loc3_;
         _loc5_;
         _loc5_;
         this.§_-IB§ = new Sprite();
         this.§_-IB§.x = 50;
         _loc5_;
         _loc5_;
         this.§_-IB§.y = 450;
         addChild(this.§_-IB§);
         this.§_-FZ§ = new Sprite();
         this.§_-FZ§.x = 5;
         this.§_-FZ§.y = 82;
         _loc4_;
         this.§_-Eb§ = new Sprite();
         this.§_-Eb§.x = 5;
         this.§_-Eb§.y = 82;
         this.§_-Eb§.graphics.beginFill(0,1);
         this.§_-Eb§.graphics.drawRect(0,0,680,291);
         this.§_-Eb§.graphics.endFill();
         this.§_-FZ§.mask = this.§_-Eb§;
         _loc4_;
         addChild(this.§_-FZ§);
         addChild(this.§_-Eb§);
         this.§_-4C§ = new §_-vr§(this.§_-FZ§,this.§_-Eb§);
         _loc4_;
         _loc5_;
         _loc5_;
         this.§_-4C§.x = 700;
         _loc4_;
         _loc4_;
         this.§_-4C§.y = 82;
         addChild(this.§_-4C§);
         this.filter_drop_down = new DropDownMenu();
         _loc4_;
         _loc4_;
         _loc5_;
         this.filter_drop_down.init(["EVERYTHING","PROJECTILES","MELEE","CUSTOM","INCOMING","UTILITIES","MINES","MY LOADOUT"],this);
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         this.filter_drop_down.x = 70;
         _loc5_;
         this.filter_drop_down.y = 49;
         this.filter_drop_down.name = "filter_drop_down";
         _loc5_;
         addChild(this.filter_drop_down);
         _loc5_;
         this.sort_drop_down = new DropDownMenu();
         _loc5_;
         _loc4_;
         _loc4_;
         this.sort_drop_down.init(["NAME","LOWEST PRICE","HIGHEST PRICE"],this);
         _loc4_;
         _loc5_;
         _loc4_;
         this.sort_drop_down.x = 306;
         _loc5_;
         _loc4_;
         this.sort_drop_down.y = 49;
         this.sort_drop_down.name = "sort_drop_down";
         _loc4_;
         _loc4_;
         addChild(this.sort_drop_down);
         _loc4_;
         _loc4_;
         this.§_-46§(-1);
      }
      
      public var §_-rC§:TextField;
      
      public var §_-np§:TextField;
      
      public var desc_text:TextField;
      
      public var points:TextField;
      
      public var §_-aa§:TextField;
      
      public var §_-Cf§:MovieClip;
      
      public var name_text:TextField;
      
      public var §_-fo§:TextField;
      
      public var §_-u1§:Array;
      
      public var level:§_-A§;
      
      public var §_-fk§:§_-A§;
      
      private var §_-FZ§:Sprite;
      
      private var §_-Eb§:Sprite;
      
      private var §_-4C§:§_-vr§;
      
      private var §_-SY§:int = 0;
      
      private var § for§:int = 1;
      
      private var §_-T6§:int = 2;
      
      private var §_-Vl§:int = 3;
      
      private var §_-gb§:int = 4;
      
      private var §_-ut§:int = 5;
      
      private var §_-aH§:int = 6;
      
      private var §_-Kv§:int = 7;
      
      public var §_-pR§:int = 0;
      
      private var §_-oJ§:int = 0;
      
      private var §_-CW§:int = 1;
      
      private var §_-M2§:int = 2;
      
      public var §_-vh§:int = 0;
      
      private var filter_drop_down:DropDownMenu;
      
      private var sort_drop_down:DropDownMenu;
      
      private var §_-IB§:Sprite;
      
      public function handleClickDropDown(param1:String, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(param1 == "filter_drop_down")
         {
            _loc4_;
            _loc4_;
            this.§_-g4§(param2);
            _loc4_;
         }
         else if(param1 == "sort_drop_down")
         {
            _loc4_;
            _loc4_;
            this.§_-gd§(param2);
         }
         
      }
      
      public function §_-46§(param1:int) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         var _loc4_:Sprite = null;
         _loc6_;
         _loc6_;
         if(param1 == -1)
         {
            _loc6_;
            this.name_text.text = "";
            this.desc_text.text = "";
            this.§_-aa§.text = "";
            this.§_-fo§.visible = false;
            this.§_-np§.visible = false;
            _loc5_;
            this.§_-Cf§.visible = false;
            this.§_-rC§.visible = true;
            _loc6_;
            _loc6_;
            if(this.§_-IB§.numChildren > 0)
            {
               while(this.§_-IB§.numChildren > 0)
               {
                  this.§_-IB§.removeChildAt(0);
               }
            }
         }
         else
         {
            this.name_text.text = ItemsData.§_-u2§("W",param1).toUpperCase();
            this.desc_text.text = ItemsData.§_-2s§("W",param1).toUpperCase();
            _loc5_;
            _loc5_;
            _loc2_ = SafeGlobal.§_-iL§(param1);
            _loc6_;
            _loc6_;
            _loc6_;
            _loc3_ = SafeGlobal.§_-fl§(param1);
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            if(_loc3_ == SafeGlobal.WEAPONTYPE_INCOMING)
            {
               this.§_-aa§.text = String(_loc2_);
               _loc6_;
               this.§_-Cf§.visible = true;
               _loc6_;
               _loc6_;
               this.§_-fo§.text = "TOTAL DAMAGE:";
               this.§_-fo§.visible = true;
               this.§_-np§.visible = true;
               _loc5_;
               _loc5_;
            }
            else
            {
               _loc6_;
               _loc6_;
               _loc6_;
               if(_loc2_ > 0)
               {
                  _loc6_;
                  this.§_-aa§.text = String(_loc2_);
                  this.§_-Cf§.visible = true;
                  _loc5_;
                  this.§_-fo§.text = "BASE DAMAGE:";
                  _loc6_;
                  _loc6_;
                  this.§_-fo§.visible = true;
                  this.§_-np§.visible = true;
               }
               else
               {
                  _loc6_;
                  if(_loc2_ < 0)
                  {
                     this.§_-aa§.text = String(0 - _loc2_);
                     this.§_-Cf§.visible = true;
                     _loc6_;
                     this.§_-fo§.text = "HEALTH BOOST:";
                     _loc5_;
                     _loc5_;
                     this.§_-fo§.visible = true;
                     this.§_-np§.visible = true;
                  }
                  else
                  {
                     this.§_-Cf§.visible = false;
                     this.§_-fo§.visible = false;
                     _loc6_;
                     _loc6_;
                     this.§_-np§.visible = false;
                  }
               }
            }
            this.§_-rC§.visible = false;
            _loc5_;
            _loc6_;
            _loc5_;
            _loc6_;
            if(param1 == SafeGlobal.WEAPONINFO_CUSTOM[0] && !(SafeGlobal.custom_weapon_string[0] == ""))
            {
               _loc5_;
               _loc4_ = SafeGlobal.§_-TW§(SafeGlobal.custom_weapon_string[0]);
               _loc6_;
               _loc6_;
            }
            else
            {
               _loc5_;
               _loc6_;
               _loc6_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               if(param1 == SafeGlobal.WEAPONINFO_CUSTOM2[0] && !(SafeGlobal.custom_weapon_string[1] == ""))
               {
                  _loc5_;
                  _loc5_;
                  _loc4_ = SafeGlobal.§_-TW§(SafeGlobal.custom_weapon_string[1]);
               }
               else
               {
                  _loc5_;
                  if(param1 == SafeGlobal.WEAPONINFO_CUSTOM3[0] && !(SafeGlobal.custom_weapon_string[2] == ""))
                  {
                     _loc4_ = SafeGlobal.§_-TW§(SafeGlobal.custom_weapon_string[2]);
                  }
                  else
                  {
                     _loc4_ = SafeGlobal.§_-ct§(param1);
                  }
               }
            }
            _loc4_.scaleX = 1.5;
            _loc6_;
            _loc4_.scaleY = 1.5;
            _loc6_;
            _loc6_;
            this.§_-IB§.addChild(_loc4_);
         }
      }
      
      public function update(param1:int = 0, param2:int = 0) : *
      {
         var _loc18_:* = true;
         var _loc19_:* = false;
         var _loc7_:* = 0;
         var _loc8_:* = 0;
         var _loc9_:* = false;
         var _loc10_:* = false;
         var _loc11_:* = false;
         var _loc12_:* = false;
         var _loc13_:* = false;
         var _loc14_:* = false;
         var _loc15_:* = false;
         var _loc16_:Array = null;
         var _loc17_:* = 0;
         var _loc3_:int = this.§_-u1§.length - 1;
         while(true)
         {
            _loc18_;
            if(_loc3_ < 0)
            {
               break;
            }
            this.§_-FZ§.removeChild(this.§_-u1§[_loc3_]);
            _loc19_;
            this.§_-u1§.splice(_loc3_,1);
            _loc19_;
            _loc19_;
            _loc18_;
            _loc18_;
            _loc19_;
            _loc19_;
            _loc3_--;
            _loc19_;
         }
         _loc18_;
         this.§_-u1§ = new Array();
         var _loc4_:* = -1;
         var _loc5_:Number = 0;
         var _loc6_:Array = new Array();
         _loc18_;
         _loc18_;
         _loc19_;
         _loc19_;
         _loc7_ = 0;
         while(_loc7_ < SafeGlobal.weaponsUnlocked.length)
         {
            if(SafeGlobal.weaponsUnlocked[_loc7_])
            {
               _loc6_.push({
                  "wepid":_loc7_,
                  "wepname":SafeGlobal.weaponNames[_loc7_],
                  "wepammo":Global.weaponCost[_loc7_]
               });
            }
            _loc7_++;
            _loc18_;
         }
         _loc19_;
         _loc19_;
         _loc18_;
         if(param2 == this.§_-oJ§)
         {
            _loc18_;
            _loc18_;
            _loc6_.sortOn("wepname");
            _loc19_;
            _loc19_;
         }
         else
         {
            _loc18_;
            _loc18_;
            _loc18_;
            if(param2 == this.§_-CW§)
            {
               _loc18_;
               _loc18_;
               _loc6_.sortOn("wepammo",Array.NUMERIC);
            }
            else
            {
               _loc18_;
               if(param2 == this.§_-M2§)
               {
                  _loc6_.sortOn("wepammo",Array.NUMERIC | Array.DESCENDING);
               }
            }
         }
         _loc18_;
         _loc18_;
         _loc7_ = 0;
         while(_loc7_ < _loc6_.length)
         {
            _loc18_;
            _loc8_ = _loc6_[_loc7_].wepid;
            _loc9_ = false;
            _loc10_ = false;
            _loc11_ = false;
            _loc18_;
            _loc12_ = false;
            _loc13_ = false;
            _loc19_;
            _loc19_;
            _loc14_ = false;
            _loc15_ = false;
            _loc16_ = SafeGlobal.§_-r§(_loc8_);
            _loc17_ = _loc16_[1];
            _loc19_;
            _loc19_;
            _loc19_;
            if(_loc17_ == SafeGlobal.WEAPONTYPE_PROJECTILE)
            {
               _loc18_;
               _loc18_;
               _loc18_;
               _loc9_ = true;
               _loc18_;
               _loc18_;
               _loc19_;
               if(_loc8_ == SafeGlobal.WEAPONINFO_JETPACK[0])
               {
                  _loc9_ = false;
                  _loc19_;
                  _loc13_ = true;
               }
            }
            else
            {
               _loc18_;
               _loc18_;
               if(_loc17_ == SafeGlobal.WEAPONTYPE_MINE)
               {
                  _loc19_;
                  _loc19_;
                  _loc10_ = true;
               }
               else
               {
                  _loc19_;
                  _loc19_;
                  if(_loc17_ == SafeGlobal.WEAPONTYPE_MELEE)
                  {
                     _loc19_;
                     _loc11_ = true;
                  }
                  else
                  {
                     _loc18_;
                     if(_loc17_ == SafeGlobal.WEAPONTYPE_INCOMING)
                     {
                        _loc12_ = true;
                        _loc19_;
                     }
                     else
                     {
                        _loc13_ = true;
                        _loc18_;
                     }
                  }
               }
            }
            _loc18_;
            _loc19_;
            _loc19_;
            _loc18_;
            _loc18_;
            _loc18_;
            _loc18_;
            if(_loc8_ == SafeGlobal.WEAPONINFO_CUSTOM[0] || _loc8_ == SafeGlobal.WEAPONINFO_CUSTOM2[0] || _loc8_ == SafeGlobal.WEAPONINFO_CUSTOM3[0])
            {
               _loc14_ = true;
               _loc18_;
            }
            _loc18_;
            _loc18_;
            _loc18_;
            _loc18_;
            if(SafeGlobal.weaponsStock[_loc8_] > 0 || _loc8_ == 0)
            {
               _loc19_;
               _loc19_;
               _loc15_ = true;
            }
            _loc19_;
            _loc19_;
            _loc19_;
            if(param1 == this.§_-SY§ || (_loc9_) && param1 == this.§ for§ || (_loc11_) && param1 == this.§_-T6§ || (_loc10_) && param1 == this.§_-aH§ || (_loc12_) && param1 == this.§_-gb§ || (_loc13_) && param1 == this.§_-ut§ || (_loc14_) && param1 == this.§_-Vl§ || (_loc15_) && param1 == this.§_-Kv§)
            {
               _loc4_++;
               _loc19_;
               _loc19_;
               this.§_-u1§.push(new WeaponBox(_loc8_));
               this.§_-FZ§.addChild(this.§_-u1§[this.§_-u1§.length - 1]);
               _loc18_;
               _loc18_;
               _loc19_;
               _loc19_;
               _loc19_;
               this.§_-u1§[this.§_-u1§.length - 1].x = _loc4_ % 3 * 228;
               this.§_-u1§[this.§_-u1§.length - 1].y = Math.floor(_loc4_ / 3) * 74;
               _loc19_;
               _loc19_;
               _loc18_;
               _loc5_ = Math.floor(_loc4_ / 3) * 74 + 69;
            }
            _loc7_++;
         }
         _loc19_;
         this.updatePoints();
         _loc18_;
         this.§_-4C§.§_-ps§(_loc5_);
      }
      
      public function updatePoints() : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         this.level.setInt(Global.getLevel(Global.teamXP.getInt()));
         _loc3_;
         this.§_-fk§.setInt(this.level.getInt() * 2);
         var _loc1_:* = 1;
         while(_loc1_ < SafeGlobal.weaponsUnlocked.length)
         {
            _loc4_;
            _loc2_ = SafeGlobal.weaponsStock[_loc1_] * Global.weaponCost[_loc1_];
            _loc3_;
            _loc3_;
            this.§_-fk§.setInt(this.§_-fk§.getInt() - _loc2_);
            _loc4_;
            _loc4_;
            _loc1_++;
            _loc4_;
         }
         _loc3_;
         _loc3_;
         this.points.text = this.§_-fk§.getInt().toString();
      }
      
      public function §_-8F§(param1:int) : void
      {
      }
      
      public function §_-mv§(param1:int) : void
      {
      }
      
      public function §_-1v§() : void
      {
      }
      
      override public function doClose() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         tweenOut();
         _loc1_;
         _loc1_;
         Global.lobby_display.lobby_menu.§_-3-§();
         _loc1_;
         this.§_-E8§();
      }
      
      public function §_-E8§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-k7§(true);
      }
      
      public function §_-7T§() : String
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:* = "";
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         while(_loc3_ < SafeGlobal.weaponsUnlocked.length)
         {
            _loc5_;
            _loc5_;
            _loc2_ = 0;
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            if(SafeGlobal.weaponsUnlocked[_loc3_] == true)
            {
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               _loc2_ = SafeGlobal.weaponsStock[_loc3_];
               _loc5_;
            }
            _loc5_;
            _loc5_;
            _loc4_;
            _loc1_ = _loc1_ + _loc2_.toString();
            _loc4_;
            _loc3_++;
            _loc5_;
         }
         return _loc1_;
      }
      
      public function §_-k7§(param1:Boolean = false, param2:int = -1, param3:int = -1) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:String = null;
         _loc5_;
         _loc5_;
         if(param2 != -1)
         {
            _loc6_;
            _loc6_;
            SafeGlobal.weaponsStock[param2] = param3;
            _loc6_;
         }
         if(param1)
         {
            _loc6_;
            _loc5_;
            _loc5_;
            _loc4_ = this.§_-7T§();
            _loc5_;
            _loc5_;
            Global.lobby_client.commitWeaponChanges(_loc4_);
         }
      }
      
      private function §_-g4§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-pR§ = param1;
         _loc3_;
         _loc3_;
         this.update(param1,this.§_-vh§);
      }
      
      private function §_-gd§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-vh§ = param1;
         _loc3_;
         this.update(this.§_-pR§,param1);
      }
   }
}
