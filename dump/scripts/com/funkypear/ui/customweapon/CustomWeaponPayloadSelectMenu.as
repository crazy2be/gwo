package com.funkypear.ui.customweapon
{
   import flash.text.TextField;
   import §_-ZN§.§_-AC§;
   import flash.text.TextFormat;
   
   public class CustomWeaponPayloadSelectMenu extends CustomWeaponMenu
   {
      
      public function CustomWeaponPayloadSelectMenu(param1:Number, param2:Number, param3:*)
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc6_;
         _loc6_;
         this.§_-J5§ = ["NONE","CLUSTER"];
         _loc5_;
         _loc5_;
         this.§_-yI§ = [0,20];
         _loc5_;
         super(param1,param2,param3);
         var _loc4_:TextFormat = new TextFormat();
         _loc4_.letterSpacing = -2;
         _loc5_;
         _loc5_;
         this.§_-Nf§.defaultTextFormat = _loc4_;
         _loc5_;
         this.§_-Mf§.defaultTextFormat = _loc4_;
         _loc5_;
         _loc5_;
         this.§_-MO§.defaultTextFormat = _loc4_;
      }
      
      public var §_-MO§:TextField;
      
      public var §_-Nf§:TextField;
      
      public var §_-Mf§:TextField;
      
      private var §_-8o§:int = 2;
      
      private var buttons:Array;
      
      private var §_-J5§:Array;
      
      private var §_-yI§:Array;
      
      public function init() : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc5_:§_-AC§ = null;
         _loc6_;
         _loc6_;
         this.buttons = new Array();
         var _loc1_:* = -1;
         var _loc2_:Number = -300;
         var _loc3_:Number = 68;
         var _loc4_:* = 0;
         while(_loc4_ < this.§_-8o§)
         {
            _loc1_++;
            _loc6_;
            _loc5_ = new §_-AC§(_loc4_);
            _loc5_.setDisabled(this.§_-0-A§(_loc4_));
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            this.buttons.push(_loc5_);
            _loc6_;
            addChild(this.buttons[this.buttons.length - 1]);
            _loc7_;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            this.buttons[this.buttons.length - 1].x = _loc2_ + _loc1_ % 5 * 60;
            _loc7_;
            _loc7_;
            this.buttons[this.buttons.length - 1].y = _loc3_;
            _loc6_;
            _loc4_++;
         }
      }
      
      public function §_-0-A§(param1:int) : Boolean
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         if(Global.custom_weapon_panel.§_-fk§.getInt() < this.§_-yI§[param1])
         {
            _loc3_;
            _loc2_;
            return true;
         }
         return false;
      }
      
      public function §try §(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         parent_holder.selectPayloadMenuItem(param1);
      }
      
      public function §_-Fs§(param1:int, param2:Boolean = false) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.§_-Nf§.text = this.§_-J5§[param1];
         this.§_-Mf§.text = String(this.§_-yI§[param1]);
         this.§_-MO§.text = "PTS";
         if(param2)
         {
            _loc4_;
            _loc4_;
            this.§_-Nf§.alpha = 0.5;
            _loc4_;
            this.§_-Mf§.alpha = 0.5;
            _loc4_;
            _loc4_;
            this.§_-MO§.alpha = 0.5;
         }
         else
         {
            this.§_-Nf§.alpha = 1;
            _loc3_;
            this.§_-Mf§.alpha = 1;
            _loc3_;
            this.§_-MO§.alpha = 1;
         }
      }
      
      public function §_-tn§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Nf§.text = "";
         _loc1_;
         _loc1_;
         this.§_-Mf§.text = "";
         _loc2_;
         this.§_-MO§.text = "";
      }
      
      override public function doClose() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         parent_holder.hideItemMenu();
      }
   }
}
