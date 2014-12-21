package com.funkypear.ui
{
   import flash.text.TextField;
   import flash.display.MovieClip;
   import §_-bk§.§_-aq§;
   import flash.display.Sprite;
   import §_-Ff§.ItemsData;
   import flash.text.TextFormat;
   
   public class LP_WeaponSetUp extends §_-uw§
   {
      
      public function LP_WeaponSetUp(param1:Sprite)
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         this.§_-1i§ = new Array();
         _loc4_;
         this.level = new §_-aq§(-1);
         _loc5_;
         _loc5_;
         this.§_-VP§ = new §_-aq§(-1);
         _loc4_;
         super(param1);
         var _loc2_:TextFormat = new TextFormat();
         _loc4_;
         _loc4_;
         _loc2_.letterSpacing = -1;
         _loc5_;
         this.name_text.defaultTextFormat = _loc2_;
         _loc4_;
         _loc4_;
         this.desc_text.defaultTextFormat = _loc2_;
         _loc4_;
         this.§_-6q§.defaultTextFormat = _loc2_;
         var _loc3_:TextFormat = new TextFormat();
         _loc3_.letterSpacing = -2;
         _loc5_;
         _loc5_;
         this.§_-9B§.defaultTextFormat = _loc3_;
         this.§_-yR§ = new Sprite();
         this.§_-yR§.x = 50;
         this.§_-yR§.y = 450;
         addChild(this.§_-yR§);
         this.§_-TW§ = new Sprite();
         this.§_-TW§.x = 5;
         this.§_-TW§.y = 82;
         _loc5_;
         this.§_-7o§ = new Sprite();
         _loc5_;
         this.§_-7o§.x = 5;
         _loc5_;
         this.§_-7o§.y = 82;
         this.§_-7o§.graphics.beginFill(0,1);
         _loc5_;
         _loc5_;
         this.§_-7o§.graphics.drawRect(0,0,680,291);
         this.§_-7o§.graphics.endFill();
         this.§_-TW§.mask = this.§_-7o§;
         addChild(this.§_-TW§);
         _loc5_;
         _loc5_;
         addChild(this.§_-7o§);
         _loc5_;
         _loc5_;
         this.§try§ = new §_-Za§(this.§_-TW§,this.§_-7o§);
         _loc5_;
         _loc5_;
         _loc4_;
         this.§try§.x = 700;
         this.§try§.y = 82;
         addChild(this.§try§);
         this.filter_drop_down = new DropDownMenu();
         _loc5_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         this.filter_drop_down.init(["EVERYTHING","PROJECTILES","MELEE","CUSTOM","INCOMING","UTILITIES","MINES","MY LOADOUT"],this);
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         this.filter_drop_down.x = 70;
         _loc4_;
         _loc4_;
         _loc4_;
         this.filter_drop_down.y = 49;
         this.filter_drop_down.name = "filter_drop_down";
         _loc5_;
         addChild(this.filter_drop_down);
         this.sort_drop_down = new DropDownMenu();
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         this.sort_drop_down.init(["NAME","LOWEST PRICE","HIGHEST PRICE"],this);
         _loc4_;
         _loc5_;
         _loc5_;
         this.sort_drop_down.x = 306;
         _loc4_;
         this.sort_drop_down.y = 49;
         this.sort_drop_down.name = "sort_drop_down";
         addChild(this.sort_drop_down);
         this.§_-Oz§(-1);
      }
      
      public var §_-eQ§:TextField;
      
      public var §_-J-§:TextField;
      
      public var desc_text:TextField;
      
      public var points:TextField;
      
      public var §_-9B§:TextField;
      
      public var §_-A9§:MovieClip;
      
      public var name_text:TextField;
      
      public var §_-6q§:TextField;
      
      public var §_-1i§:Array;
      
      public var level:§_-aq§;
      
      public var §_-VP§:§_-aq§;
      
      private var §_-TW§:Sprite;
      
      private var §_-7o§:Sprite;
      
      private var §try§:§_-Za§;
      
      private var §_-jB§:int = 0;
      
      private var §_-L§:int = 1;
      
      private var §_-6T§:int = 2;
      
      private var §_-of§:int = 3;
      
      private var §_-ze§:int = 4;
      
      private var §_-bN§:int = 5;
      
      private var §_-xc§:int = 6;
      
      private var §_-Aj§:int = 7;
      
      public var §_-0-6§:int = 0;
      
      private var §_-Pr§:int = 0;
      
      private var §_-Ye§:int = 1;
      
      private var §_-s3§:int = 2;
      
      public var §_-ft§:int = 0;
      
      private var filter_drop_down:DropDownMenu;
      
      private var sort_drop_down:DropDownMenu;
      
      private var §_-yR§:Sprite;
      
      public function handleClickDropDown(param1:String, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(param1 == "filter_drop_down")
         {
            _loc4_;
            _loc4_;
            this.§_-BJ§(param2);
            _loc4_;
            _loc4_;
         }
         else if(param1 == "sort_drop_down")
         {
            _loc4_;
            this.§_-57§(param2);
         }
         
      }
      
      public function §_-Oz§(param1:int) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
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
            this.§_-9B§.text = "";
            this.§_-6q§.visible = false;
            this.§_-J-§.visible = false;
            _loc5_;
            _loc5_;
            this.§_-A9§.visible = false;
            _loc5_;
            this.§_-eQ§.visible = true;
            _loc5_;
            _loc5_;
            if(this.§_-yR§.numChildren > 0)
            {
               while(this.§_-yR§.numChildren > 0)
               {
                  this.§_-yR§.removeChildAt(0);
               }
               _loc6_;
               _loc6_;
            }
         }
         else
         {
            this.name_text.text = ItemsData.§_-7L§("W",param1).toUpperCase();
            this.desc_text.text = ItemsData.§_-0-F§("W",param1).toUpperCase();
            _loc2_ = SafeGlobal.§_-NQ§(param1);
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc3_ = SafeGlobal.§_-2G§(param1);
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            if(_loc3_ == SafeGlobal.WEAPONTYPE_INCOMING)
            {
               _loc6_;
               this.§_-9B§.text = String(_loc2_);
               this.§_-A9§.visible = true;
               _loc5_;
               this.§_-6q§.text = "TOTAL DAMAGE:";
               _loc6_;
               this.§_-6q§.visible = true;
               this.§_-J-§.visible = true;
               _loc5_;
               _loc5_;
            }
            else
            {
               _loc5_;
               _loc5_;
               if(_loc2_ > 0)
               {
                  this.§_-9B§.text = String(_loc2_);
                  this.§_-A9§.visible = true;
                  _loc6_;
                  this.§_-6q§.text = "BASE DAMAGE:";
                  this.§_-6q§.visible = true;
                  this.§_-J-§.visible = true;
               }
               else if(_loc2_ < 0)
               {
                  this.§_-9B§.text = String(0 - _loc2_);
                  _loc6_;
                  _loc6_;
                  this.§_-A9§.visible = true;
                  this.§_-6q§.text = "HEALTH BOOST:";
                  this.§_-6q§.visible = true;
                  _loc5_;
                  _loc5_;
                  this.§_-J-§.visible = true;
                  _loc5_;
                  _loc5_;
               }
               else
               {
                  this.§_-A9§.visible = false;
                  _loc6_;
                  this.§_-6q§.visible = false;
                  _loc5_;
                  this.§_-J-§.visible = false;
               }
               
            }
            this.§_-eQ§.visible = false;
            _loc6_;
            _loc6_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            if(param1 == SafeGlobal.WEAPONINFO_CUSTOM[0] && !(SafeGlobal.custom_weapon_string[0] == ""))
            {
               _loc4_ = SafeGlobal.§_-Et§(SafeGlobal.custom_weapon_string[0]);
               _loc6_;
            }
            else
            {
               _loc5_;
               _loc6_;
               _loc6_;
               _loc6_;
               if(param1 == SafeGlobal.WEAPONINFO_CUSTOM2[0] && !(SafeGlobal.custom_weapon_string[1] == ""))
               {
                  _loc4_ = SafeGlobal.§_-Et§(SafeGlobal.custom_weapon_string[1]);
               }
               else
               {
                  _loc5_;
                  _loc5_;
                  if(param1 == SafeGlobal.WEAPONINFO_CUSTOM3[0] && !(SafeGlobal.custom_weapon_string[2] == ""))
                  {
                     _loc4_ = SafeGlobal.§_-Et§(SafeGlobal.custom_weapon_string[2]);
                  }
                  else
                  {
                     _loc4_ = SafeGlobal.§_-e§(param1);
                  }
               }
            }
            _loc4_.scaleX = 1.5;
            _loc6_;
            _loc6_;
            _loc4_.scaleY = 1.5;
            _loc5_;
            this.§_-yR§.addChild(_loc4_);
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
         var _loc3_:int = this.§_-1i§.length - 1;
         while(true)
         {
            _loc19_;
            _loc19_;
            if(_loc3_ < 0)
            {
               break;
            }
            this.§_-TW§.removeChild(this.§_-1i§[_loc3_]);
            _loc19_;
            this.§_-1i§.splice(_loc3_,1);
            _loc18_;
            _loc19_;
            _loc19_;
            _loc18_;
            _loc18_;
            _loc3_--;
            _loc18_;
         }
         _loc18_;
         this.§_-1i§ = new Array();
         var _loc4_:* = -1;
         var _loc5_:Number = 0;
         var _loc6_:Array = new Array();
         _loc7_ = 0;
         _loc19_;
         _loc19_;
         while(true)
         {
            _loc19_;
            _loc19_;
            if(_loc7_ >= SafeGlobal.weaponsUnlocked.length)
            {
               break;
            }
            if(SafeGlobal.weaponsUnlocked[_loc7_])
            {
               _loc18_;
               _loc6_.push({
                  "wepid":_loc7_,
                  "wepname":SafeGlobal.weaponNames[_loc7_],
                  "wepammo":Global.weaponCost[_loc7_]
               });
            }
            _loc7_++;
         }
         _loc19_;
         _loc19_;
         _loc18_;
         if(param2 == this.§_-Pr§)
         {
            _loc6_.sortOn("wepname");
         }
         else
         {
            _loc19_;
            if(param2 == this.§_-Ye§)
            {
               _loc6_.sortOn("wepammo",Array.NUMERIC);
               _loc18_;
               _loc18_;
            }
            else
            {
               _loc18_;
               _loc18_;
               if(param2 == this.§_-s3§)
               {
                  _loc6_.sortOn("wepammo",Array.NUMERIC | Array.DESCENDING);
               }
            }
         }
         _loc7_ = 0;
         while(_loc7_ < _loc6_.length)
         {
            _loc8_ = _loc6_[_loc7_].wepid;
            _loc9_ = false;
            _loc18_;
            _loc10_ = false;
            _loc11_ = false;
            _loc18_;
            _loc18_;
            _loc19_;
            _loc19_;
            _loc12_ = false;
            _loc13_ = false;
            _loc14_ = false;
            _loc15_ = false;
            _loc16_ = SafeGlobal.§_-AT§(_loc8_);
            _loc17_ = _loc16_[1];
            _loc18_;
            if(_loc17_ == SafeGlobal.WEAPONTYPE_PROJECTILE)
            {
               _loc9_ = true;
               _loc19_;
               _loc19_;
               _loc19_;
               if(_loc8_ == SafeGlobal.WEAPONINFO_JETPACK[0])
               {
                  _loc19_;
                  _loc18_;
                  _loc9_ = false;
                  _loc19_;
                  _loc13_ = true;
               }
            }
            else
            {
               _loc19_;
               _loc19_;
               _loc19_;
               _loc19_;
               if(_loc17_ == SafeGlobal.WEAPONTYPE_MINE)
               {
                  _loc19_;
                  _loc10_ = true;
               }
               else
               {
                  _loc18_;
                  _loc18_;
                  if(_loc17_ == SafeGlobal.WEAPONTYPE_MELEE)
                  {
                     _loc11_ = true;
                     _loc19_;
                  }
                  else
                  {
                     _loc19_;
                     _loc19_;
                     _loc19_;
                     if(_loc17_ == SafeGlobal.WEAPONTYPE_INCOMING)
                     {
                        _loc18_;
                        _loc19_;
                        _loc19_;
                        _loc12_ = true;
                     }
                     else
                     {
                        _loc18_;
                        _loc13_ = true;
                        _loc18_;
                        _loc18_;
                     }
                  }
               }
            }
            _loc19_;
            _loc19_;
            _loc18_;
            _loc18_;
            _loc19_;
            _loc19_;
            _loc19_;
            if(_loc8_ == SafeGlobal.WEAPONINFO_CUSTOM[0] || _loc8_ == SafeGlobal.WEAPONINFO_CUSTOM2[0] || _loc8_ == SafeGlobal.WEAPONINFO_CUSTOM3[0])
            {
               _loc19_;
               _loc19_;
               _loc18_;
               _loc14_ = true;
               _loc19_;
               _loc19_;
            }
            _loc18_;
            _loc19_;
            _loc19_;
            _loc19_;
            if(SafeGlobal.weaponsStock[_loc8_] > 0 || _loc8_ == 0)
            {
               _loc18_;
               _loc15_ = true;
               _loc18_;
            }
            _loc19_;
            _loc19_;
            _loc18_;
            _loc18_;
            _loc18_;
            _loc19_;
            _loc19_;
            if(param1 == this.§_-jB§ || (_loc9_) && param1 == this.§_-L§ || (_loc11_) && param1 == this.§_-6T§ || (_loc10_) && param1 == this.§_-xc§ || (_loc12_) && param1 == this.§_-ze§ || (_loc13_) && param1 == this.§_-bN§ || (_loc14_) && param1 == this.§_-of§ || (_loc15_) && param1 == this.§_-Aj§)
            {
               _loc19_;
               _loc19_;
               _loc4_++;
               _loc18_;
               _loc18_;
               _loc19_;
               this.§_-1i§.push(new WeaponBox(_loc8_));
               this.§_-TW§.addChild(this.§_-1i§[this.§_-1i§.length - 1]);
               _loc18_;
               _loc18_;
               _loc18_;
               _loc18_;
               _loc19_;
               _loc18_;
               this.§_-1i§[this.§_-1i§.length - 1].x = _loc4_ % 3 * 228;
               this.§_-1i§[this.§_-1i§.length - 1].y = Math.floor(_loc4_ / 3) * 74;
               _loc19_;
               _loc19_;
               _loc18_;
               _loc5_ = Math.floor(_loc4_ / 3) * 74 + 69;
               _loc18_;
            }
            _loc7_++;
         }
         _loc18_;
         this.updatePoints();
         _loc19_;
         _loc19_;
         this.§try§.§_-oc§(_loc5_);
      }
      
      public function updatePoints() : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc4_;
         this.level.setInt(Global.getLevel(Global.teamXP.getInt()));
         _loc4_;
         this.§_-VP§.setInt(this.level.getInt() * 2);
         var _loc1_:* = 1;
         while(_loc1_ < SafeGlobal.weaponsUnlocked.length)
         {
            _loc4_;
            _loc2_ = SafeGlobal.weaponsStock[_loc1_] * Global.weaponCost[_loc1_];
            _loc4_;
            _loc4_;
            this.§_-VP§.setInt(this.§_-VP§.getInt() - _loc2_);
            _loc4_;
            _loc4_;
            _loc1_++;
            _loc3_;
            _loc3_;
         }
         _loc3_;
         this.points.text = this.§_-VP§.getInt().toString();
      }
      
      public function §_-gO§(param1:int) : void
      {
      }
      
      public function §_-w4§(param1:int) : void
      {
      }
      
      public function §_-Pq§() : void
      {
      }
      
      override public function doClose() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         tweenOut();
         _loc1_;
         _loc1_;
         Global.lobby_display.lobby_menu.§_-pk§();
         _loc1_;
         _loc1_;
         this.§_-uc§();
      }
      
      public function §_-uc§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-Ko§(true);
      }
      
      public function §_-DD§() : String
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:* = "";
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         while(_loc3_ < SafeGlobal.weaponsUnlocked.length)
         {
            _loc4_;
            _loc2_ = 0;
            _loc5_;
            _loc4_;
            _loc4_;
            _loc4_;
            if(SafeGlobal.weaponsUnlocked[_loc3_] == true)
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc2_ = SafeGlobal.weaponsStock[_loc3_];
               _loc5_;
               _loc5_;
            }
            _loc4_;
            _loc4_;
            _loc4_;
            _loc1_ = _loc1_ + _loc2_.toString();
            _loc4_;
            _loc4_;
            _loc3_++;
            _loc4_;
            _loc4_;
         }
         return _loc1_;
      }
      
      public function §_-Ko§(param1:Boolean = false, param2:int = -1, param3:int = -1) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:String = null;
         _loc6_;
         _loc6_;
         if(param2 != -1)
         {
            _loc5_;
            _loc5_;
            SafeGlobal.weaponsStock[param2] = param3;
            _loc5_;
         }
         if(param1)
         {
            _loc5_;
            _loc5_;
            _loc4_ = this.§_-DD§();
            _loc5_;
            _loc5_;
            Global.lobby_client.commitWeaponChanges(_loc4_);
         }
      }
      
      private function §_-BJ§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-0-6§ = param1;
         _loc2_;
         this.update(param1,this.§_-ft§);
      }
      
      private function §_-57§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-ft§ = param1;
         _loc2_;
         _loc2_;
         this.update(this.§_-0-6§,param1);
      }
   }
}
