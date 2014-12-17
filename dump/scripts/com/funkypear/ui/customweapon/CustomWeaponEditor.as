package com.funkypear.ui.customweapon
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.display.MovieClip;
   
   public class CustomWeaponEditor extends Sprite
   {
      
      public function CustomWeaponEditor(param1:Number, param2:Number)
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         super();
         Global.custom_weapon_editor = this;
         _loc5_;
         x = param1;
         y = param2;
         this.§_-vo§ = new WeaponEditPanel(0,0);
         _loc5_;
         _loc5_;
         addChild(this.§_-vo§);
         this.projectiles = new Array();
         var _loc3_:ProjectileEditPanel = new ProjectileEditPanel(0,this.§_-UN§);
         _loc5_;
         addChild(_loc3_);
         _loc5_;
         this.projectiles.push(_loc3_);
         _loc5_;
         _loc5_;
         _loc3_.§_-Ss§(this.projectiles.length - 1);
         _loc4_;
         _loc4_;
         Global.custom_weapon_panel.updatePoints();
      }
      
      public var payload_text_4:TextField;
      
      public var bg3:MovieClip;
      
      public var bg4:MovieClip;
      
      public var payload_text_3:TextField;
      
      private var §_-vo§:WeaponEditPanel;
      
      private var projectiles:Array;
      
      private var §_-UN§:Number = 110;
      
      private var §for§:Number = 110;
      
      public function §_-eG§(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         this.projectiles[param1].updateTitleText(param2);
      }
      
      public function §_-Yy§(param1:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         _loc5_;
         _loc5_;
         this.§_-vo§.setDefault(param1);
         _loc4_;
         _loc4_;
         _loc5_;
         if(this.projectiles.length > 1)
         {
            _loc4_;
            this.removeProjectile(0);
            _loc5_;
            _loc5_;
         }
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         (this.projectiles[0] as ProjectileEditPanel).setDefault();
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         if(SafeGlobal.custom_weapon_string[param1] != "")
         {
            _loc2_ = SafeGlobal.custom_weapon_string[param1].split("/");
            _loc4_;
            this.§_-vo§.§_-Yy§(_loc2_[0]);
            _loc4_;
            _loc4_;
            _loc2_.shift();
            _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               _loc5_;
               _loc5_;
               if(_loc3_ == 0)
               {
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  (this.projectiles[0] as ProjectileEditPanel).§_-Yy§(_loc2_[_loc3_]);
                  _loc5_;
               }
               else
               {
                  (this.projectiles[this.projectiles.length - 1] as ProjectileEditPanel).§_-Yy§(_loc2_[_loc3_]);
                  _loc5_;
                  _loc5_;
               }
               _loc3_++;
               _loc4_;
               _loc4_;
            }
            _loc4_;
            _loc4_;
            Global.custom_weapon_panel.updatePoints();
         }
      }
      
      public function §_-mi§() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Array = null;
         var _loc2_:* = 0;
         _loc3_;
         _loc3_;
         this.§_-vo§.setDefault(0);
         _loc4_;
         _loc4_;
         _loc3_;
         if(this.projectiles.length > 1)
         {
            _loc3_;
            _loc3_;
            this.removeProjectile(0);
            _loc3_;
            _loc3_;
         }
         (this.projectiles[0] as ProjectileEditPanel).setDefault();
         _loc3_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         if(Global.test_custom_weapon != "")
         {
            _loc1_ = Global.test_custom_weapon.split("/");
            _loc4_;
            this.§_-vo§.§_-Yy§(_loc1_[0]);
            _loc3_;
            _loc1_.shift();
            _loc4_;
            _loc4_;
            _loc2_ = 0;
            while(_loc2_ < _loc1_.length)
            {
               _loc3_;
               _loc3_;
               if(_loc2_ == 0)
               {
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  (this.projectiles[0] as ProjectileEditPanel).§_-Yy§(_loc1_[_loc2_]);
                  _loc3_;
                  _loc3_;
               }
               else
               {
                  (this.projectiles[this.projectiles.length - 1] as ProjectileEditPanel).§_-Yy§(_loc1_[_loc2_]);
                  _loc3_;
               }
               _loc2_++;
               _loc3_;
            }
            _loc3_;
            _loc3_;
            Global.custom_weapon_panel.updatePoints();
         }
      }
      
      public function §_-n8§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-UN§ = this.§_-UN§ + this.§for§;
         var _loc1_:ProjectileEditPanel = new ProjectileEditPanel(0,this.§_-UN§);
         _loc3_;
         addChild(_loc1_);
         this.projectiles.push(_loc1_);
         _loc3_;
         _loc3_;
         _loc1_.§_-Ss§(this.projectiles.length - 1);
         _loc1_.setDefault();
         Global.custom_weapon_panel.updatePoints();
         _loc2_;
         _loc2_;
         this.§_-H0§();
      }
      
      public function removeProjectile(param1:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this.projectiles.length - 1;
         while(_loc2_ > param1)
         {
            removeChild(this.projectiles[_loc2_]);
            _loc3_;
            _loc3_;
            this.projectiles.splice(_loc2_,1);
            _loc3_;
            this.§_-UN§ = this.§_-UN§ - this.§for§;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc2_--;
            _loc3_;
            _loc3_;
         }
         Global.custom_weapon_panel.updatePoints();
         this.§_-H0§();
      }
      
      private function §_-H0§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc1_;
         _loc1_;
         if(this.projectiles.length == 1)
         {
            _loc1_;
            this.bg3.visible = true;
            this.payload_text_3.visible = true;
            _loc2_;
            _loc2_;
            this.bg4.visible = true;
            this.payload_text_4.visible = true;
         }
         else
         {
            _loc1_;
            _loc1_;
            if(this.projectiles.length == 2)
            {
               this.bg3.visible = false;
               _loc2_;
               this.payload_text_3.visible = false;
               this.bg4.visible = true;
               this.payload_text_4.visible = true;
            }
            else if(this.projectiles.length == 3)
            {
               this.bg3.visible = false;
               this.payload_text_3.visible = false;
               this.bg4.visible = false;
               this.payload_text_4.visible = false;
            }
            
         }
      }
      
      public function §_-wb§() : String
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = "";
         _loc3_;
         _loc3_;
         _loc3_;
         _loc1_ = _loc1_ + this.§_-vo§.getDataString();
         _loc4_;
         _loc1_ = _loc1_ + "/";
         var _loc2_:* = 0;
         while(_loc2_ < this.projectiles.length)
         {
            _loc3_;
            _loc3_;
            _loc2_;
            _loc3_;
            _loc4_;
            _loc1_ = _loc1_ + (this.projectiles[_loc2_] as ProjectileEditPanel).getDataString();
            _loc3_;
            _loc3_;
            _loc2_++;
            _loc4_;
            _loc4_;
         }
         return _loc1_;
      }
      
      public function getPointsUsed() : int
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = 0;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc1_ = this.§_-vo§.getPointsUsed();
         var _loc2_:* = 0;
         while(true)
         {
            _loc3_;
            if(_loc2_ >= this.projectiles.length)
            {
               break;
            }
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc1_ = _loc1_ + (this.projectiles[_loc2_] as ProjectileEditPanel).getPointsUsed();
            _loc3_;
            _loc3_;
            _loc2_++;
            _loc3_;
            _loc3_;
         }
         return _loc1_;
      }
      
      public function hideAllMenus() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-vo§.hideAllMenus();
         var _loc1_:* = 0;
         while(_loc1_ < this.projectiles.length)
         {
            (this.projectiles[_loc1_] as ProjectileEditPanel).hideAllMenus();
            _loc3_;
            _loc1_++;
            _loc2_;
            _loc2_;
         }
      }
   }
}
