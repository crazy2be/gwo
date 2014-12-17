package com.funkypear.ui.customweapon
{
   import flash.text.TextField;
   import §_-ZN§.§_-AX§;
   import flash.text.TextFormat;
   
   public class CustomWeaponEffectMenu extends CustomWeaponMenu
   {
      
      public function CustomWeaponEffectMenu(param1:Number, param2:Number, param3:*)
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc5_;
         _loc5_;
         this.§_-Tt§ = ["","DAMAGE","HEALTH","EMP","FIRE","RADIO","DETOX","BOUNCE","DRILL","POISON"];
         _loc5_;
         this.§_-77§ = [0,Global.§_-hi§,Global.§_-M§,Global.§_-U4§,Global.§_-ih§,Global.§_-if§,Global.§_-G8§,Global.§_-LY§,Global.§_-mp§,Global.§_-j3§];
         _loc5_;
         super(param1,param2,param3);
         var _loc4_:TextFormat = new TextFormat();
         _loc4_.letterSpacing = -2;
         _loc6_;
         _loc6_;
         this.§_-Nf§.defaultTextFormat = _loc4_;
         _loc6_;
         _loc6_;
         this.§_-Mf§.defaultTextFormat = _loc4_;
         _loc6_;
         this.§_-MO§.defaultTextFormat = _loc4_;
      }
      
      public var §_-MO§:TextField;
      
      public var §_-Nf§:TextField;
      
      public var §_-Mf§:TextField;
      
      private var §_-Z3§:int = 10;
      
      private var buttons:Array;
      
      private var §_-lr§:Array;
      
      private var §_-Tt§:Array;
      
      private var §_-77§:Array;
      
      public function init(param1:Array = null) : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc6_:§_-AX§ = null;
         _loc8_;
         this.buttons = new Array();
         _loc7_;
         _loc7_;
         this.§_-lr§ = new Array();
         _loc7_;
         if(param1 != null)
         {
            _loc8_;
            _loc8_;
            this.§_-lr§ = param1;
         }
         var _loc2_:* = -1;
         var _loc3_:Number = -241;
         var _loc4_:Number = -120;
         var _loc5_:* = 1;
         while(_loc5_ < this.§_-Z3§)
         {
            _loc2_++;
            _loc7_;
            _loc7_;
            _loc6_ = new §_-AX§(_loc5_);
            _loc6_.setDisabled(this.§_-0-A§(_loc5_));
            _loc7_;
            _loc8_;
            _loc8_;
            this.buttons.push(_loc6_);
            _loc8_;
            addChild(this.buttons[this.buttons.length - 1]);
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc7_;
            _loc8_;
            _loc8_;
            this.buttons[this.buttons.length - 1].x = _loc3_ + _loc2_ % 5 * 60;
            _loc8_;
            this.buttons[this.buttons.length - 1].y = _loc4_ + Math.floor(_loc2_ / 5) * 60;
            _loc8_;
            _loc5_++;
         }
      }
      
      public function §_-0-0§(param1:String, param2:Array) : void
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc8_:§_-AX§ = null;
         _loc9_;
         _loc9_;
         this.buttons = new Array();
         _loc9_;
         _loc9_;
         this.§_-lr§ = new Array();
         var _loc3_:int = param2.length;
         var _loc4_:* = -1;
         var _loc5_:Number = -241;
         var _loc6_:Number = -120;
         var _loc7_:* = 1;
         while(_loc7_ < this.§_-Z3§)
         {
            if(param2[_loc7_] == true)
            {
               _loc9_;
               _loc4_++;
               _loc10_;
               _loc10_;
               _loc8_ = new §_-AX§(_loc7_);
               _loc8_.setDisabled(this.§_-0-A§(_loc7_));
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               this.buttons.push(_loc8_);
               _loc9_;
               addChild(this.buttons[this.buttons.length - 1]);
               _loc9_;
               _loc9_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               this.buttons[this.buttons.length - 1].x = _loc5_ + _loc4_ % 5 * 60;
               _loc10_;
               this.buttons[this.buttons.length - 1].y = _loc6_ + Math.floor(_loc4_ / 5) * 60;
            }
            _loc7_++;
            _loc9_;
            _loc9_;
         }
      }
      
      public function §_-0-A§(param1:int) : Boolean
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         _loc3_;
         if(this.§_-lr§.length == 0)
         {
            _loc3_;
            _loc3_;
            return false;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-lr§.length)
         {
            if(this.§_-lr§[_loc2_] == param1)
            {
               _loc3_;
               _loc3_;
               return true;
            }
            _loc2_++;
            _loc3_;
         }
         _loc3_;
         if(Global.custom_weapon_panel.§_-fk§ < this.§_-77§[param1])
         {
            _loc4_;
            _loc4_;
            _loc4_;
            return true;
         }
         return false;
      }
      
      public function §try §(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         parent_holder.selectMenuItem(param1);
      }
      
      public function §_-Fs§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         this.§_-Nf§.text = this.§_-Tt§[param1];
         _loc4_;
         _loc4_;
         this.§_-Mf§.text = String(this.§_-77§[param1]);
         this.§_-MO§.text = "PTS";
         _loc4_;
         if(param2)
         {
            _loc4_;
            this.§_-Nf§.alpha = 0.5;
            this.§_-Mf§.alpha = 0.5;
            this.§_-MO§.alpha = 0.5;
            _loc3_;
         }
         else
         {
            this.§_-Nf§.alpha = 1;
            this.§_-Mf§.alpha = 1;
            _loc4_;
            _loc4_;
            this.§_-MO§.alpha = 1;
         }
      }
      
      public function §_-tn§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-Nf§.text = "";
         _loc2_;
         _loc2_;
         this.§_-Mf§.text = "";
         _loc2_;
         this.§_-MO§.text = "";
      }
      
      override public function doClose() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         parent_holder.hideItemMenu();
      }
   }
}
