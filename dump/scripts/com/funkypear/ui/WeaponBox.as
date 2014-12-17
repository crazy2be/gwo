package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.display.MovieClip;
   import §_-ZN§.ButtonStockDown;
   import §_-ZN§.ButtonStockUp;
   import §_-WX§.§_-A§;
   import fl.transitions.Tween;
   import flash.events.MouseEvent;
   import fl.transitions.easing.Strong;
   import §_-Cv§.ItemsData;
   import flash.text.TextFormat;
   import §_-ZN§.§_-tH§;
   
   public class WeaponBox extends Sprite
   {
      
      public function WeaponBox(param1:int)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:§_-tH§ = null;
         _loc4_;
         this.stock = new §_-A§(0);
         super();
         this.§_-Jm§ = new Sprite();
         this.§_-Jm§.x = 28;
         this.§_-Jm§.y = 40;
         _loc4_;
         addChild(this.§_-Jm§);
         this.§_-No§(param1);
         _loc3_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(param1 == SafeGlobal.WEAPONINFO_CUSTOM[0] || param1 == SafeGlobal.WEAPONINFO_CUSTOM2[0] || param1 == SafeGlobal.WEAPONINFO_CUSTOM3[0])
         {
            _loc2_ = new §_-tH§();
            _loc2_.x = 42;
            _loc3_;
            _loc3_;
            _loc2_.y = 3;
            _loc3_;
            _loc3_;
            _loc4_;
            if(param1 == SafeGlobal.WEAPONINFO_CUSTOM[0])
            {
               _loc4_;
               _loc2_.init(0);
            }
            else
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc3_;
               _loc3_;
               if(param1 == SafeGlobal.WEAPONINFO_CUSTOM2[0])
               {
                  _loc2_.init(1);
               }
               else if(param1 == SafeGlobal.WEAPONINFO_CUSTOM3[0])
               {
                  _loc2_.init(2);
               }
               
            }
            addChild(_loc2_);
         }
         mouseEnabled = true;
         mouseChildren = true;
         buttonMode = true;
         _loc3_;
         addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         this.wepname_16.mouseEnabled = false;
         _loc3_;
         _loc3_;
         this.wepname_14.mouseEnabled = false;
         _loc4_;
         this.§_-cR§.mouseEnabled = false;
         this.§_-Jm§.mouseEnabled = false;
         this.num.mouseEnabled = false;
         _loc3_;
         _loc3_;
         this.bg.gotoAndStop("up");
      }
      
      public var wepname_16:TextField;
      
      public var wepname_14:TextField;
      
      public var click_area:MovieClip;
      
      public var §_-cR§:TextField;
      
      public var §_-9t§:ButtonStockDown;
      
      public var bg:MovieClip;
      
      public var num:TextField;
      
      public var §_-ww§:MovieClip;
      
      public var §_-6R§:ButtonStockUp;
      
      public var id:int = -1;
      
      public var stock:§_-A§;
      
      public var §_-uE§:int;
      
      public var IS_PROJECTILE:Boolean = false;
      
      public var IS_MELEE:Boolean = false;
      
      public var IS_CUSTOM:Boolean = false;
      
      public var IS_INCOMING:Boolean = false;
      
      public var IS_UTIL:Boolean = false;
      
      public var IS_MINE:Boolean = false;
      
      private var §_-Jm§:Sprite;
      
      private var §_-nh§:Tween;
      
      private var §_-Vs§:Tween;
      
      private function doRollOver(param1:MouseEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         var _loc2_:Number = 1.1;
         _loc4_;
         _loc4_;
         if(!(this.§_-nh§ == null) && !(this.§_-Vs§ == null))
         {
            _loc5_;
            _loc5_;
            if((this.§_-nh§.isPlaying) || (this.§_-Vs§.isPlaying))
            {
               _loc5_;
               _loc5_;
               _loc5_;
               this.§_-nh§.stop();
               _loc5_;
               _loc5_;
               this.§_-Vs§.stop();
               _loc4_;
               _loc4_;
            }
            this.§_-nh§ = null;
            this.§_-Vs§ = null;
         }
         this.§_-nh§ = new Tween(this.§_-Jm§,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         _loc4_;
         this.§_-Vs§ = new Tween(this.§_-Jm§,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         _loc5_;
         _loc5_;
         this.§_-nh§.start();
         this.§_-Vs§.start();
         var _loc3_:LP_WeaponSetUp = LP_WeaponSetUp(parent.parent);
         _loc5_;
         _loc5_;
         _loc3_.§_-46§(this.id);
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
         if(!(this.§_-nh§ == null) && !(this.§_-Vs§ == null))
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            if((this.§_-nh§.isPlaying) || (this.§_-Vs§.isPlaying))
            {
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               this.§_-nh§.stop();
               _loc4_;
               _loc5_;
               this.§_-Vs§.stop();
            }
            this.§_-nh§ = null;
            this.§_-Vs§ = null;
            _loc4_;
            _loc4_;
         }
         this.§_-nh§ = new Tween(this.§_-Jm§,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         this.§_-Vs§ = new Tween(this.§_-Jm§,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         this.§_-nh§.start();
         this.§_-Vs§.start();
         var _loc3_:LP_WeaponSetUp = LP_WeaponSetUp(parent.parent);
         _loc5_;
         _loc5_;
         _loc3_.§_-46§(-1);
      }
      
      public function §_-No§(param1:*) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:Sprite = null;
         _loc5_;
         _loc5_;
         this.id = param1;
         _loc6_;
         _loc6_;
         var _loc2_:String = ItemsData.§_-u2§("W",param1).toUpperCase();
         if(_loc2_ == "CUSTOM WEAPON")
         {
            _loc6_;
            if(param1 == 31)
            {
               _loc6_;
               _loc6_;
               _loc6_;
               _loc2_ = "CUSTOM 1";
            }
            else if(param1 == 39)
            {
               _loc6_;
               _loc6_;
               _loc2_ = "CUSTOM 2";
            }
            else if(param1 == 40)
            {
               _loc2_ = "CUSTOM 3";
            }
            
            
         }
         var _loc3_:TextFormat = new TextFormat();
         _loc3_.letterSpacing = -1;
         this.wepname_16.text = _loc2_;
         this.wepname_14.text = _loc2_;
         this.wepname_16.defaultTextFormat = _loc3_;
         this.wepname_14.defaultTextFormat = _loc3_;
         if(this.wepname_16.textWidth > 120)
         {
            this.wepname_16.visible = false;
            this.wepname_14.visible = true;
         }
         else
         {
            this.wepname_16.visible = true;
            this.wepname_14.visible = false;
            _loc6_;
         }
         this.§_-uE§ = Global.weaponCost[param1];
         if(param1 == 0)
         {
            _loc6_;
            _loc5_;
            _loc5_;
            _loc6_;
            this.§_-9t§.visible = false;
            _loc6_;
            _loc5_;
            _loc6_;
            _loc6_;
            this.§_-6R§.visible = false;
            this.num.visible = false;
            this.§_-cR§.htmlText = "<font size=\'22\'>N/A</font>";
         }
         else
         {
            _loc6_;
            _loc6_;
            this.stock.setInt(SafeGlobal.weaponsStock[param1]);
            this.num.text = this.stock.getInt().toString();
            this.§_-ww§.visible = false;
            this.§_-cR§.htmlText = String("<font size=\'22\'>" + this.§_-uE§ + "</font><font size=\'16\'> POINTS</font>");
         }
         _loc6_;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(this.stock.getInt() == Global.weaponMaxStock[this.id])
         {
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            this.§_-6R§.setDisabled(true);
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            this.§_-9t§.setDisabled(false);
         }
         else
         {
            _loc5_;
            if(this.stock.getInt() == 0)
            {
               _loc6_;
               _loc6_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               this.§_-9t§.setDisabled(true);
               _loc5_;
               _loc6_;
               this.§_-6R§.setDisabled(false);
            }
            else
            {
               this.§_-6R§.setDisabled(false);
               _loc5_;
               this.§_-9t§.setDisabled(false);
               _loc6_;
            }
         }
         _loc6_;
         _loc5_;
         _loc5_;
         _loc6_;
         _loc6_;
         _loc5_;
         if(this.id == SafeGlobal.WEAPONINFO_CUSTOM[0] && !(SafeGlobal.custom_weapon_string[0] == ""))
         {
            _loc4_ = SafeGlobal.§_-TW§(SafeGlobal.custom_weapon_string[0]);
            _loc6_;
            _loc6_;
         }
         else
         {
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            if(this.id == SafeGlobal.WEAPONINFO_CUSTOM2[0] && !(SafeGlobal.custom_weapon_string[1] == ""))
            {
               _loc4_ = SafeGlobal.§_-TW§(SafeGlobal.custom_weapon_string[1]);
            }
            else if(this.id == SafeGlobal.WEAPONINFO_CUSTOM3[0] && !(SafeGlobal.custom_weapon_string[2] == ""))
            {
               _loc4_ = SafeGlobal.§_-TW§(SafeGlobal.custom_weapon_string[2]);
            }
            else
            {
               _loc4_ = SafeGlobal.§_-ct§(this.id);
            }
            
         }
         this.§_-Jm§.addChild(_loc4_);
      }
      
      public function §_-WL§() : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:LP_WeaponSetUp = LP_WeaponSetUp(parent.parent);
         var _loc2_:* = 0;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc3_;
         if(this.stock.getInt() < Global.weaponMaxStock[this.id])
         {
            _loc2_ = Global.weaponCost[this.id];
            _loc4_;
            _loc4_;
            if(_loc1_.§_-fk§.getInt() >= _loc2_)
            {
               _loc3_;
               _loc3_;
               this.stock.setInt(this.stock.getInt() + 1);
            }
         }
         this.num.text = this.stock.getInt().toString();
         _loc3_;
         _loc1_.§_-k7§(false,this.id,this.stock.getInt());
         _loc1_.updatePoints();
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.stock.getInt() == Global.weaponMaxStock[this.id])
         {
            _loc3_;
            _loc4_;
            _loc4_;
            this.§_-6R§.setDisabled(true);
            _loc4_;
            _loc3_;
            _loc3_;
            this.§_-9t§.setDisabled(false);
            _loc3_;
            _loc3_;
         }
         else if(this.stock.getInt() == 0)
         {
            _loc4_;
            _loc3_;
            _loc3_;
            _loc3_;
            this.§_-9t§.setDisabled(true);
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            this.§_-6R§.setDisabled(false);
            _loc4_;
         }
         else
         {
            this.§_-6R§.setDisabled(false);
            this.§_-9t§.setDisabled(false);
         }
         
      }
      
      public function removeStock() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:LP_WeaponSetUp = LP_WeaponSetUp(parent.parent);
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.stock.getInt() > 0)
         {
            _loc2_;
            this.stock.setInt(this.stock.getInt() - 1);
            _loc2_;
         }
         this.num.text = this.stock.getInt().toString();
         _loc1_.§_-k7§(false,this.id,this.stock.getInt());
         _loc1_.updatePoints();
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.stock.getInt() == Global.weaponMaxStock[this.id])
         {
            _loc2_;
            _loc3_;
            this.§_-6R§.setDisabled(true);
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            this.§_-9t§.setDisabled(false);
         }
         else if(this.stock.getInt() == 0)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc3_;
            this.§_-9t§.setDisabled(true);
            _loc3_;
            _loc3_;
            _loc2_;
            this.§_-6R§.setDisabled(false);
            _loc3_;
            _loc3_;
         }
         else
         {
            this.§_-6R§.setDisabled(false);
            _loc3_;
            this.§_-9t§.setDisabled(false);
         }
         
      }
   }
}
