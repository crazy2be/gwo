package com.funkypear.ui.customweapon
{
   import §_-ZN§.§_-SE§;
   
   public class CWP_PayloadCluster extends CustomWeaponPanel
   {
      
      public function CWP_PayloadCluster(param1:Number, param2:Number)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         panel_id = 11;
         panel_value = 20;
         value_1 = 1;
         min_1 = 1;
         max_1 = 7;
         _loc4_;
         _loc4_;
         inc_1 = 1;
         _loc3_;
         _loc3_;
         points_1 = [0,0,20,20,20,20,20,20,20,20,20,0];
      }
      
      public var §_-au§:§_-SE§;
      
      private var §_-I1§:Boolean = false;
      
      private var §_-YX§:CustomWeaponPayloadMenu;
      
      override public function setInitialValue(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         value_1 = param1 - 1;
         _loc2_;
         _loc2_;
         Global.custom_weapon_panel.updatePoints();
         _loc2_;
         _loc2_;
         this.updateBars();
      }
      
      override public function updateBars() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         (parent as ProjectileEditPanel).§_-FV§(value_1 + 1);
      }
      
      override public function toggleItemMenu() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = null;
         _loc3_;
         _loc3_;
         if(!this.§_-I1§)
         {
            Global.custom_weapon_editor.hideAllMenus();
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            if(this.§_-YX§ == null)
            {
               this.§_-YX§ = new CustomWeaponPayloadMenu(parent.x + x + this.§_-au§.x,parent.y + y + this.§_-au§.y,this);
               _loc1_ = {
                  "title_str":"EDIT PAYLOAD",
                  "value_title_str":"COUNT",
                  "item_value":value_1,
                  "min_value":min_1,
                  "max_value":max_1,
                  "value_inc":inc_1
               };
               _loc3_;
               this.§_-YX§.init(_loc1_);
               _loc2_;
               _loc2_;
               parent.parent.addChild(this.§_-YX§);
            }
            this.§_-I1§ = true;
         }
         else
         {
            if(this.§_-YX§ != null)
            {
               _loc3_;
               _loc3_;
               parent.parent.removeChild(this.§_-YX§);
               this.§_-YX§ = null;
               _loc2_;
               _loc2_;
            }
            this.§_-I1§ = false;
         }
      }
      
      override public function hideItemMenu() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(this.§_-YX§ != null)
         {
            _loc2_;
            _loc2_;
            parent.parent.removeChild(this.§_-YX§);
            _loc2_;
            this.§_-YX§ = null;
            _loc1_;
         }
         this.§_-I1§ = false;
      }
      
      override public function getPointsUsed() : int
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:int = panel_value;
         var _loc2_:int = min_1;
         while(true)
         {
            _loc3_;
            _loc3_;
            if(_loc2_ > value_1)
            {
               break;
            }
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc1_ = _loc1_ + points_1[_loc2_];
            _loc3_;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc2_ = _loc2_ + inc_1;
            _loc3_;
            _loc3_;
         }
         return _loc1_;
      }
      
      public function doRemoveItem() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.hideItemMenu();
         _loc1_;
         _loc1_;
         (parent as ProjectileEditPanel).§_-A4§();
      }
      
      override public function hideAllMenus() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.hideItemMenu();
      }
      
      override public function getDataString() : String
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = "y,";
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc1_ = _loc1_ + String(value_1 + 1);
         return _loc1_;
      }
   }
}
