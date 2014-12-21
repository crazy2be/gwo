package com.funkypear.ui.customweapon
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.display.MovieClip;
   
   public class CustomWeaponEditor extends Sprite
   {
      
      public function CustomWeaponEditor(param1:Number, param2:Number)
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         super();
         Global.custom_weapon_editor = this;
         x = param1;
         y = param2;
         _loc5_;
         this.§_-cx§ = new WeaponEditPanel(0,0);
         _loc5_;
         _loc5_;
         addChild(this.§_-cx§);
         _loc5_;
         _loc5_;
         this.projectiles = new Array();
         var _loc3_:ProjectileEditPanel = new ProjectileEditPanel(0,this.§_-Nm§);
         _loc4_;
         _loc4_;
         addChild(_loc3_);
         _loc5_;
         this.projectiles.push(_loc3_);
         _loc5_;
         _loc5_;
         _loc3_.§_-Ri§(this.projectiles.length - 1);
         _loc5_;
         _loc5_;
         Global.custom_weapon_panel.updatePoints();
      }
      
      public var payload_text_4:TextField;
      
      public var bg3:MovieClip;
      
      public var bg4:MovieClip;
      
      public var payload_text_3:TextField;
      
      private var §_-cx§:WeaponEditPanel;
      
      private var projectiles:Array;
      
      private var §_-Nm§:Number = 110;
      
      private var §_-8y§:Number = 110;
      
      public function §_-kk§(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         this.projectiles[param1].updateTitleText(param2);
      }
      
      public function §_-La§(param1:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         _loc5_;
         _loc5_;
         this.§_-cx§.setDefault(param1);
         _loc5_;
         _loc4_;
         if(this.projectiles.length > 1)
         {
            _loc4_;
            _loc4_;
            this.removeProjectile(0);
            _loc4_;
            _loc4_;
         }
         _loc5_;
         _loc5_;
         (this.projectiles[0] as ProjectileEditPanel).setDefault();
         _loc4_;
         _loc4_;
         _loc5_;
         if(SafeGlobal.custom_weapon_string[param1] != "")
         {
            _loc2_ = SafeGlobal.custom_weapon_string[param1].split("/");
            _loc5_;
            _loc5_;
            this.§_-cx§.§_-La§(_loc2_[0]);
            _loc5_;
            _loc2_.shift();
            _loc5_;
            _loc5_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               _loc5_;
               _loc5_;
               if(_loc3_ == 0)
               {
                  _loc5_;
                  _loc5_;
                  (this.projectiles[0] as ProjectileEditPanel).§_-La§(_loc2_[_loc3_]);
                  _loc4_;
               }
               else
               {
                  (this.projectiles[this.projectiles.length - 1] as ProjectileEditPanel).§_-La§(_loc2_[_loc3_]);
                  _loc5_;
                  _loc5_;
               }
               _loc3_++;
               _loc5_;
               _loc5_;
            }
            _loc4_;
            Global.custom_weapon_panel.updatePoints();
         }
      }
      
      public function §_-DS§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Array = null;
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         this.§_-cx§.setDefault(0);
         _loc4_;
         _loc3_;
         if(this.projectiles.length > 1)
         {
            _loc4_;
            this.removeProjectile(0);
            _loc4_;
         }
         (this.projectiles[0] as ProjectileEditPanel).setDefault();
         _loc3_;
         _loc4_;
         _loc3_;
         _loc3_;
         if(Global.test_custom_weapon != "")
         {
            _loc1_ = Global.test_custom_weapon.split("/");
            _loc4_;
            this.§_-cx§.§_-La§(_loc1_[0]);
            _loc4_;
            _loc1_.shift();
            _loc3_;
            _loc3_;
            _loc2_ = 0;
            while(_loc2_ < _loc1_.length)
            {
               _loc3_;
               _loc3_;
               if(_loc2_ == 0)
               {
                  _loc4_;
                  _loc3_;
                  (this.projectiles[0] as ProjectileEditPanel).§_-La§(_loc1_[_loc2_]);
                  _loc3_;
                  _loc3_;
               }
               else
               {
                  (this.projectiles[this.projectiles.length - 1] as ProjectileEditPanel).§_-La§(_loc1_[_loc2_]);
                  _loc4_;
                  _loc4_;
               }
               _loc2_++;
               _loc4_;
               _loc4_;
            }
            _loc4_;
            Global.custom_weapon_panel.updatePoints();
         }
      }
      
      public function §_-2V§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-Nm§ = this.§_-Nm§ + this.§_-8y§;
         var _loc1_:ProjectileEditPanel = new ProjectileEditPanel(0,this.§_-Nm§);
         addChild(_loc1_);
         this.projectiles.push(_loc1_);
         _loc2_;
         _loc1_.§_-Ri§(this.projectiles.length - 1);
         _loc1_.setDefault();
         _loc3_;
         _loc3_;
         Global.custom_weapon_panel.updatePoints();
         this.§_-B8§();
      }
      
      public function removeProjectile(param1:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this.projectiles.length - 1;
         while(_loc2_ > param1)
         {
            removeChild(this.projectiles[_loc2_]);
            _loc4_;
            this.projectiles.splice(_loc2_,1);
            _loc3_;
            _loc3_;
            this.§_-Nm§ = this.§_-Nm§ - this.§_-8y§;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            _loc2_--;
         }
         Global.custom_weapon_panel.updatePoints();
         this.§_-B8§();
      }
      
      private function §_-B8§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(this.projectiles.length == 1)
         {
            this.bg3.visible = true;
            this.payload_text_3.visible = true;
            this.bg4.visible = true;
            this.payload_text_4.visible = true;
         }
         else
         {
            _loc2_;
            _loc2_;
            if(this.projectiles.length == 2)
            {
               _loc1_;
               _loc1_;
               this.bg3.visible = false;
               this.payload_text_3.visible = false;
               _loc1_;
               _loc1_;
               this.bg4.visible = true;
               this.payload_text_4.visible = true;
               _loc1_;
               _loc1_;
            }
            else if(this.projectiles.length == 3)
            {
               _loc2_;
               _loc2_;
               this.bg3.visible = false;
               _loc2_;
               this.payload_text_3.visible = false;
               _loc2_;
               _loc2_;
               this.bg4.visible = false;
               _loc1_;
               _loc1_;
               this.payload_text_4.visible = false;
            }
            
         }
      }
      
      public function §_-t-§() : String
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = "";
         _loc3_;
         _loc3_;
         _loc3_;
         _loc1_ = _loc1_ + this.§_-cx§.getDataString();
         _loc4_;
         _loc4_;
         _loc1_ = _loc1_ + "/";
         var _loc2_:* = 0;
         while(_loc2_ < this.projectiles.length)
         {
            _loc3_;
            _loc3_;
            _loc2_;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            _loc1_ = _loc1_ + (this.projectiles[_loc2_] as ProjectileEditPanel).getDataString();
            _loc3_;
            _loc3_;
            _loc2_++;
            _loc3_;
         }
         return _loc1_;
      }
      
      public function getPointsUsed() : int
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = 0;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc1_ = this.§_-cx§.getPointsUsed();
         var _loc2_:* = 0;
         while(true)
         {
            _loc4_;
            _loc4_;
            if(_loc2_ >= this.projectiles.length)
            {
               break;
            }
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc1_ = _loc1_ + (this.projectiles[_loc2_] as ProjectileEditPanel).getPointsUsed();
            _loc4_;
            _loc2_++;
            _loc3_;
            _loc3_;
         }
         return _loc1_;
      }
      
      public function hideAllMenus() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-cx§.hideAllMenus();
         var _loc1_:* = 0;
         while(_loc1_ < this.projectiles.length)
         {
            (this.projectiles[_loc1_] as ProjectileEditPanel).hideAllMenus();
            _loc2_;
            _loc1_++;
            _loc2_;
         }
      }
   }
}
