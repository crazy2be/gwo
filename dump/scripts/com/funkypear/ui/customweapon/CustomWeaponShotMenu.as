package com.funkypear.ui.customweapon
{
   import flash.text.TextField;
   import §_-bY§.§_-3Y§;
   import flash.text.TextFormat;
   
   public class CustomWeaponShotMenu extends CustomWeaponMenu
   {
      
      public function CustomWeaponShotMenu(param1:Number, param2:Number, param3:*)
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc6_;
         _loc6_;
         this.§_-zI§ = ["SINGLE SHOT","MULTI SHOT","REPEATER"];
         _loc5_;
         this.§_-Cx§ = [0,20,20];
         _loc5_;
         _loc5_;
         super(param1,param2,param3);
         var _loc4_:TextFormat = new TextFormat();
         _loc4_.letterSpacing = -2;
         _loc5_;
         this.§_-RZ§.defaultTextFormat = _loc4_;
         _loc5_;
         this.§_-16§.defaultTextFormat = _loc4_;
         _loc6_;
         _loc6_;
         this.§_-Pe§.defaultTextFormat = _loc4_;
      }
      
      public var §_-Pe§:TextField;
      
      public var §_-RZ§:TextField;
      
      public var §_-16§:TextField;
      
      private var §_-yc§:int = 3;
      
      private var buttons:Array;
      
      private var §_-zI§:Array;
      
      private var §_-Cx§:Array;
      
      public function init() : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:§_-3Y§ = null;
         _loc7_;
         _loc7_;
         this.buttons = new Array();
         var _loc1_:* = -1;
         var _loc2_:Number = -300;
         var _loc3_:Number = 68;
         var _loc4_:* = 0;
         while(_loc4_ < this.§_-yc§)
         {
            _loc1_++;
            _loc6_;
            _loc5_ = new §_-3Y§(_loc4_);
            _loc5_.setDisabled(this.§_-Wh§(_loc4_));
            _loc6_;
            _loc6_;
            _loc7_;
            this.buttons.push(_loc5_);
            _loc6_;
            addChild(this.buttons[this.buttons.length - 1]);
            _loc6_;
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            this.buttons[this.buttons.length - 1].x = _loc2_ + _loc1_ % 5 * 60;
            _loc7_;
            this.buttons[this.buttons.length - 1].y = _loc3_;
            _loc6_;
            _loc4_++;
         }
      }
      
      public function §_-Wh§(param1:int) : Boolean
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         if(Global.custom_weapon_panel.§_-VP§.getInt() < this.§_-Cx§[param1])
         {
            _loc2_;
            _loc3_;
            return true;
         }
         return false;
      }
      
      public function §_-cD§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         parent_holder.selectMenuItem(param1);
      }
      
      public function §_-xX§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         this.§_-RZ§.text = this.§_-zI§[param1];
         _loc4_;
         _loc4_;
         this.§_-16§.text = String(this.§_-Cx§[param1]);
         this.§_-Pe§.text = "PTS";
         if(param2)
         {
            _loc3_;
            this.§_-RZ§.alpha = 0.5;
            _loc3_;
            _loc3_;
            this.§_-16§.alpha = 0.5;
            _loc3_;
            _loc3_;
            this.§_-Pe§.alpha = 0.5;
         }
         else
         {
            this.§_-RZ§.alpha = 1;
            this.§_-16§.alpha = 1;
            _loc3_;
            this.§_-Pe§.alpha = 1;
         }
      }
      
      public function §_-QL§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-RZ§.text = "";
         _loc1_;
         _loc1_;
         this.§_-16§.text = "";
         _loc2_;
         this.§_-Pe§.text = "";
      }
      
      override public function doClose() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         parent_holder.hideItemMenu();
      }
   }
}
