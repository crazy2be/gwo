package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.display.MovieClip;
   import §_-bY§.ButtonStockDown;
   import §_-bY§.ButtonStockUp;
   import §_-bk§.§_-aq§;
   import fl.transitions.Tween;
   import flash.events.MouseEvent;
   import fl.transitions.easing.Strong;
   import §_-Ff§.ItemsData;
   import flash.text.TextFormat;
   import §_-bY§.§_-Bu§;
   
   public class WeaponBox extends Sprite
   {
      
      public function WeaponBox(param1:int)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:§_-Bu§ = null;
         _loc3_;
         this.stock = new §_-aq§(0);
         _loc4_;
         _loc4_;
         super();
         this.§_-hE§ = new Sprite();
         _loc4_;
         _loc4_;
         this.§_-hE§.x = 28;
         _loc4_;
         this.§_-hE§.y = 40;
         addChild(this.§_-hE§);
         _loc3_;
         this.§_-9k§(param1);
         _loc3_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(param1 == SafeGlobal.WEAPONINFO_CUSTOM[0] || param1 == SafeGlobal.WEAPONINFO_CUSTOM2[0] || param1 == SafeGlobal.WEAPONINFO_CUSTOM3[0])
         {
            _loc2_ = new §_-Bu§();
            _loc2_.x = 42;
            _loc2_.y = 3;
            _loc3_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc3_;
            if(param1 == SafeGlobal.WEAPONINFO_CUSTOM[0])
            {
               _loc2_.init(0);
            }
            else
            {
               _loc4_;
               _loc3_;
               _loc3_;
               if(param1 == SafeGlobal.WEAPONINFO_CUSTOM2[0])
               {
                  _loc2_.init(1);
                  _loc3_;
                  _loc3_;
               }
               else if(param1 == SafeGlobal.WEAPONINFO_CUSTOM3[0])
               {
                  _loc3_;
                  _loc3_;
                  _loc2_.init(2);
                  _loc4_;
                  _loc4_;
               }
               
            }
            addChild(_loc2_);
         }
         mouseEnabled = true;
         mouseChildren = true;
         buttonMode = true;
         _loc3_;
         _loc3_;
         addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         _loc3_;
         _loc3_;
         addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         this.wepname_16.mouseEnabled = false;
         _loc4_;
         this.wepname_14.mouseEnabled = false;
         this.§_-Mp§.mouseEnabled = false;
         this.§_-hE§.mouseEnabled = false;
         this.num.mouseEnabled = false;
         _loc3_;
         _loc3_;
         this.bg.gotoAndStop("up");
      }
      
      public var wepname_16:TextField;
      
      public var wepname_14:TextField;
      
      public var click_area:MovieClip;
      
      public var §_-Mp§:TextField;
      
      public var §_-V6§:ButtonStockDown;
      
      public var bg:MovieClip;
      
      public var num:TextField;
      
      public var §_-Dj§:MovieClip;
      
      public var §_-DI§:ButtonStockUp;
      
      public var id:int = -1;
      
      public var stock:§_-aq§;
      
      public var §_-4b§:int;
      
      public var IS_PROJECTILE:Boolean = false;
      
      public var IS_MELEE:Boolean = false;
      
      public var IS_CUSTOM:Boolean = false;
      
      public var IS_INCOMING:Boolean = false;
      
      public var IS_UTIL:Boolean = false;
      
      public var IS_MINE:Boolean = false;
      
      private var §_-hE§:Sprite;
      
      private var §_-qP§:Tween;
      
      private var §_-GY§:Tween;
      
      private function doRollOver(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         var _loc2_:Number = 1.1;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc4_;
         if(!(this.§_-qP§ == null) && !(this.§_-GY§ == null))
         {
            _loc4_;
            _loc4_;
            _loc4_;
            if((this.§_-qP§.isPlaying) || (this.§_-GY§.isPlaying))
            {
               _loc4_;
               this.§_-qP§.stop();
               _loc4_;
               this.§_-GY§.stop();
               _loc4_;
               _loc4_;
            }
            this.§_-qP§ = null;
            _loc5_;
            _loc5_;
            this.§_-GY§ = null;
         }
         this.§_-qP§ = new Tween(this.§_-hE§,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         this.§_-GY§ = new Tween(this.§_-hE§,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         this.§_-qP§.start();
         this.§_-GY§.start();
         var _loc3_:LP_WeaponSetUp = LP_WeaponSetUp(parent.parent);
         _loc4_;
         _loc3_.§_-Oz§(this.id);
      }
      
      private function doRollOut(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Number = 1;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(!(this.§_-qP§ == null) && !(this.§_-GY§ == null))
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            if((this.§_-qP§.isPlaying) || (this.§_-GY§.isPlaying))
            {
               _loc5_;
               _loc5_;
               _loc5_;
               this.§_-qP§.stop();
               _loc5_;
               _loc5_;
               this.§_-GY§.stop();
               _loc5_;
               _loc5_;
            }
            this.§_-qP§ = null;
            this.§_-GY§ = null;
            _loc5_;
            _loc5_;
         }
         this.§_-qP§ = new Tween(this.§_-hE§,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         this.§_-GY§ = new Tween(this.§_-hE§,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         _loc4_;
         this.§_-qP§.start();
         this.§_-GY§.start();
         var _loc3_:LP_WeaponSetUp = LP_WeaponSetUp(parent.parent);
         _loc4_;
         _loc3_.§_-Oz§(-1);
      }
      
      public function §_-9k§(param1:*) : *
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:Sprite = null;
         _loc6_;
         this.id = param1;
         _loc5_;
         var _loc2_:String = ItemsData.§_-7L§("W",param1).toUpperCase();
         if(_loc2_ == "CUSTOM WEAPON")
         {
            _loc6_;
            _loc6_;
            if(param1 == 31)
            {
               _loc5_;
               _loc5_;
               _loc2_ = "CUSTOM 1";
               _loc6_;
            }
            else if(param1 == 39)
            {
               _loc6_;
               _loc2_ = "CUSTOM 2";
            }
            else if(param1 == 40)
            {
               _loc5_;
               _loc2_ = "CUSTOM 3";
            }
            
            
         }
         var _loc3_:TextFormat = new TextFormat();
         _loc5_;
         _loc5_;
         _loc3_.letterSpacing = -1;
         _loc5_;
         this.wepname_16.text = _loc2_;
         _loc5_;
         this.wepname_14.text = _loc2_;
         this.wepname_16.defaultTextFormat = _loc3_;
         this.wepname_14.defaultTextFormat = _loc3_;
         if(this.wepname_16.textWidth > 120)
         {
            _loc5_;
            this.wepname_16.visible = false;
            this.wepname_14.visible = true;
            _loc5_;
            _loc5_;
         }
         else
         {
            this.wepname_16.visible = true;
            this.wepname_14.visible = false;
            _loc5_;
         }
         this.§_-4b§ = Global.weaponCost[param1];
         _loc6_;
         if(param1 == 0)
         {
            _loc5_;
            _loc6_;
            this.§_-V6§.visible = false;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            this.§_-DI§.visible = false;
            this.num.visible = false;
            _loc5_;
            this.§_-Mp§.htmlText = "<font size=\'22\'>N/A</font>";
         }
         else
         {
            _loc5_;
            _loc5_;
            this.stock.setInt(SafeGlobal.weaponsStock[param1]);
            this.num.text = this.stock.getInt().toString();
            this.§_-Dj§.visible = false;
            _loc5_;
            _loc5_;
            this.§_-Mp§.htmlText = String("<font size=\'22\'>" + this.§_-4b§ + "</font><font size=\'16\'> POINTS</font>");
         }
         _loc6_;
         _loc5_;
         _loc5_;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         if(this.stock.getInt() == Global.weaponMaxStock[this.id])
         {
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            this.§_-DI§.setDisabled(true);
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            this.§_-V6§.setDisabled(false);
            _loc5_;
         }
         else
         {
            _loc6_;
            _loc6_;
            if(this.stock.getInt() == 0)
            {
               _loc5_;
               _loc6_;
               _loc6_;
               this.§_-V6§.setDisabled(true);
               _loc5_;
               _loc5_;
               _loc5_;
               this.§_-DI§.setDisabled(false);
            }
            else
            {
               this.§_-DI§.setDisabled(false);
               this.§_-V6§.setDisabled(false);
            }
         }
         _loc5_;
         _loc5_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         if(this.id == SafeGlobal.WEAPONINFO_CUSTOM[0] && !(SafeGlobal.custom_weapon_string[0] == ""))
         {
            _loc4_ = SafeGlobal.§_-Et§(SafeGlobal.custom_weapon_string[0]);
            _loc6_;
         }
         else
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            if(this.id == SafeGlobal.WEAPONINFO_CUSTOM2[0] && !(SafeGlobal.custom_weapon_string[1] == ""))
            {
               _loc4_ = SafeGlobal.§_-Et§(SafeGlobal.custom_weapon_string[1]);
            }
            else
            {
               _loc6_;
               _loc6_;
               if(this.id == SafeGlobal.WEAPONINFO_CUSTOM3[0] && !(SafeGlobal.custom_weapon_string[2] == ""))
               {
                  _loc4_ = SafeGlobal.§_-Et§(SafeGlobal.custom_weapon_string[2]);
               }
               else
               {
                  _loc4_ = SafeGlobal.§_-e§(this.id);
               }
            }
         }
         this.§_-hE§.addChild(_loc4_);
      }
      
      public function §_-Fb§() : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:LP_WeaponSetUp = LP_WeaponSetUp(parent.parent);
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(this.stock.getInt() < Global.weaponMaxStock[this.id])
         {
            _loc2_ = Global.weaponCost[this.id];
            _loc3_;
            if(_loc1_.§_-VP§.getInt() >= _loc2_)
            {
               _loc3_;
               _loc3_;
               this.stock.setInt(this.stock.getInt() + 1);
            }
         }
         this.num.text = this.stock.getInt().toString();
         _loc3_;
         _loc1_.§_-Ko§(false,this.id,this.stock.getInt());
         _loc4_;
         _loc1_.updatePoints();
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.stock.getInt() == Global.weaponMaxStock[this.id])
         {
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-DI§.setDisabled(true);
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-V6§.setDisabled(false);
            _loc4_;
         }
         else if(this.stock.getInt() == 0)
         {
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-V6§.setDisabled(true);
            _loc4_;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            this.§_-DI§.setDisabled(false);
            _loc4_;
            _loc4_;
         }
         else
         {
            this.§_-DI§.setDisabled(false);
            _loc3_;
            this.§_-V6§.setDisabled(false);
         }
         
      }
      
      public function removeStock() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:LP_WeaponSetUp = LP_WeaponSetUp(parent.parent);
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(this.stock.getInt() > 0)
         {
            _loc2_;
            _loc2_;
            this.stock.setInt(this.stock.getInt() - 1);
         }
         this.num.text = this.stock.getInt().toString();
         _loc1_.§_-Ko§(false,this.id,this.stock.getInt());
         _loc1_.updatePoints();
         _loc3_;
         _loc2_;
         _loc2_;
         if(this.stock.getInt() == Global.weaponMaxStock[this.id])
         {
            _loc3_;
            _loc3_;
            _loc3_;
            this.§_-DI§.setDisabled(true);
            _loc2_;
            _loc2_;
            _loc3_;
            _loc2_;
            this.§_-V6§.setDisabled(false);
         }
         else if(this.stock.getInt() == 0)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            this.§_-V6§.setDisabled(true);
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            this.§_-DI§.setDisabled(false);
         }
         else
         {
            this.§_-DI§.setDisabled(false);
            this.§_-V6§.setDisabled(false);
         }
         
      }
   }
}
