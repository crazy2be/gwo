package com.funkypear.ui.customweapon
{
   import flash.text.TextField;
   import §_-bY§.§_-KJ§;
   import flash.text.TextFormat;
   
   public class CustomWeaponEffectMenu extends CustomWeaponMenu
   {
      
      public function CustomWeaponEffectMenu(param1:Number, param2:Number, param3:*)
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc6_;
         _loc6_;
         this.§_-GI§ = ["","DAMAGE","HEALTH","EMP","FIRE","RADIO","DETOX","BOUNCE","DRILL","POISON"];
         _loc6_;
         _loc6_;
         this.§_-P4§ = [0,Global.§_-0-E§,Global.§_-nu§,Global.§_-IT§,Global.§_-rB§,Global.§_-EJ§,Global.§_-Z8§,Global.§_-2U§,Global.§_-8D§,Global.§_-a-§];
         _loc5_;
         super(param1,param2,param3);
         var _loc4_:TextFormat = new TextFormat();
         _loc4_.letterSpacing = -2;
         _loc5_;
         _loc5_;
         this.§_-RZ§.defaultTextFormat = _loc4_;
         _loc5_;
         _loc5_;
         this.§_-16§.defaultTextFormat = _loc4_;
         _loc6_;
         _loc6_;
         this.§_-Pe§.defaultTextFormat = _loc4_;
      }
      
      public var §_-Pe§:TextField;
      
      public var §_-RZ§:TextField;
      
      public var §_-16§:TextField;
      
      private var §_-9V§:int = 10;
      
      private var buttons:Array;
      
      private var §_-KC§:Array;
      
      private var §_-GI§:Array;
      
      private var §_-P4§:Array;
      
      public function init(param1:Array = null) : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc6_:§_-KJ§ = null;
         _loc7_;
         _loc7_;
         this.buttons = new Array();
         _loc7_;
         this.§_-KC§ = new Array();
         _loc7_;
         _loc7_;
         if(param1 != null)
         {
            _loc7_;
            _loc7_;
            this.§_-KC§ = param1;
         }
         var _loc2_:* = -1;
         var _loc3_:Number = -241;
         var _loc4_:Number = -120;
         var _loc5_:* = 1;
         while(_loc5_ < this.§_-9V§)
         {
            _loc2_++;
            _loc8_;
            _loc6_ = new §_-KJ§(_loc5_);
            _loc6_.setDisabled(this.§_-Wh§(_loc5_));
            _loc7_;
            _loc8_;
            _loc8_;
            this.buttons.push(_loc6_);
            _loc7_;
            _loc7_;
            addChild(this.buttons[this.buttons.length - 1]);
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc8_;
            this.buttons[this.buttons.length - 1].x = _loc3_ + _loc2_ % 5 * 60;
            _loc7_;
            _loc7_;
            this.buttons[this.buttons.length - 1].y = _loc4_ + Math.floor(_loc2_ / 5) * 60;
            _loc8_;
            _loc8_;
            _loc5_++;
         }
      }
      
      public function §_-B5§(param1:String, param2:Array) : void
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc8_:§_-KJ§ = null;
         _loc9_;
         this.buttons = new Array();
         _loc10_;
         this.§_-KC§ = new Array();
         var _loc3_:int = param2.length;
         var _loc4_:* = -1;
         var _loc5_:Number = -241;
         var _loc6_:Number = -120;
         var _loc7_:* = 1;
         while(_loc7_ < this.§_-9V§)
         {
            if(param2[_loc7_] == true)
            {
               _loc10_;
               _loc10_;
               _loc4_++;
               _loc9_;
               _loc8_ = new §_-KJ§(_loc7_);
               _loc8_.setDisabled(this.§_-Wh§(_loc7_));
               _loc9_;
               _loc9_;
               _loc10_;
               _loc10_;
               this.buttons.push(_loc8_);
               _loc9_;
               addChild(this.buttons[this.buttons.length - 1]);
               _loc10_;
               _loc9_;
               _loc9_;
               _loc9_;
               this.buttons[this.buttons.length - 1].x = _loc5_ + _loc4_ % 5 * 60;
               _loc9_;
               this.buttons[this.buttons.length - 1].y = _loc6_ + Math.floor(_loc4_ / 5) * 60;
            }
            _loc7_++;
            _loc10_;
         }
      }
      
      public function §_-Wh§(param1:int) : Boolean
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         if(this.§_-KC§.length == 0)
         {
            _loc3_;
            return false;
         }
         _loc2_ = 0;
         while(_loc2_ < this.§_-KC§.length)
         {
            if(this.§_-KC§[_loc2_] == param1)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               return true;
            }
            _loc2_++;
            _loc3_;
            _loc3_;
         }
         _loc4_;
         _loc4_;
         if(Global.custom_weapon_panel.§_-VP§ < this.§_-P4§[param1])
         {
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            return true;
         }
         return false;
      }
      
      public function §_-cD§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         parent_holder.selectMenuItem(param1);
      }
      
      public function §_-xX§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.§_-RZ§.text = this.§_-GI§[param1];
         _loc4_;
         _loc4_;
         this.§_-16§.text = String(this.§_-P4§[param1]);
         _loc4_;
         this.§_-Pe§.text = "PTS";
         if(param2)
         {
            this.§_-RZ§.alpha = 0.5;
            this.§_-16§.alpha = 0.5;
            this.§_-Pe§.alpha = 0.5;
         }
         else
         {
            this.§_-RZ§.alpha = 1;
            _loc4_;
            _loc4_;
            this.§_-16§.alpha = 1;
            _loc4_;
            this.§_-Pe§.alpha = 1;
         }
      }
      
      public function §_-QL§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-RZ§.text = "";
         _loc2_;
         _loc2_;
         this.§_-16§.text = "";
         _loc2_;
         this.§_-Pe§.text = "";
      }
      
      override public function doClose() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         parent_holder.hideItemMenu();
      }
   }
}
