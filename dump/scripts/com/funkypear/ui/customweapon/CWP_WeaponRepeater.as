package com.funkypear.ui.customweapon
{
   import §_-ZN§.§_-XN§;
   
   public class CWP_WeaponRepeater extends CustomWeaponPanel
   {
      
      public function CWP_WeaponRepeater(param1:Number, param2:Number)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         super(param1,param2);
         panel_id = 3;
         _loc4_;
         _loc4_;
         panel_value = 20;
         value_1 = 1;
         _loc3_;
         _loc3_;
         min_1 = 1;
         max_1 = 7;
         inc_1 = 1;
         _loc4_;
         _loc4_;
         points_1 = [0,0,20,20,20,20,20,20,20,20,20,0];
         value_2 = 1;
         min_2 = 1;
         max_2 = 5;
         inc_2 = 1;
      }
      
      public var §_-au§:§_-XN§;
      
      private var §_-I1§:Boolean = false;
      
      private var §_-YX§:CustomWeaponRepeaterMenu;
      
      override public function getMaxValue2() : int
      {
         return max_2 - value_2;
      }
      
      override public function updateBars() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         (parent as WeaponEditPanel).§_-FV§(value_1 + 1);
      }
      
      override public function toggleItemMenu() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         if(!this.§_-I1§)
         {
            Global.custom_weapon_editor.hideAllMenus();
            _loc3_;
            _loc4_;
            if(this.§_-YX§ == null)
            {
               this.§_-YX§ = new CustomWeaponRepeaterMenu(parent.x + x + this.§_-au§.x,parent.y + y + this.§_-au§.y,this);
               _loc4_;
               _loc4_;
               _loc1_ = {
                  "title_str":"NUMBER OF SHOTS",
                  "value_title_str":"SHOTS",
                  "unit_str":"",
                  "item_value":value_1,
                  "min_value":min_1,
                  "max_value":max_1,
                  "value_inc":inc_1
               };
               _loc2_ = {
                  "title_str":"SHOT TIME DELAY",
                  "value_title_str":"DELAY",
                  "unit_str":"MS",
                  "item_value":value_2,
                  "min_value":min_2,
                  "max_value":max_2,
                  "value_inc":inc_2
               };
               _loc3_;
               this.§_-YX§.init(_loc1_,_loc2_);
               _loc4_;
               parent.parent.addChild(this.§_-YX§);
            }
            this.§_-I1§ = true;
            _loc4_;
            _loc4_;
         }
         else
         {
            if(this.§_-YX§ != null)
            {
               parent.parent.removeChild(this.§_-YX§);
               this.§_-YX§ = null;
               _loc4_;
            }
            this.§_-I1§ = false;
         }
      }
      
      override public function hideItemMenu() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(this.§_-YX§ != null)
         {
            _loc2_;
            _loc2_;
            parent.parent.removeChild(this.§_-YX§);
            _loc2_;
            _loc2_;
            this.§_-YX§ = null;
            _loc2_;
            _loc2_;
         }
         this.§_-I1§ = false;
      }
      
      override public function getPointsUsed() : int
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:int = panel_value;
         var _loc2_:int = min_1;
         while(true)
         {
            _loc3_;
            if(_loc2_ > value_1)
            {
               break;
            }
            _loc4_;
            _loc4_;
            _loc1_ = _loc1_ + points_1[_loc2_];
            _loc4_;
            _loc4_;
            _loc3_;
            _loc2_ = _loc2_ + inc_1;
            _loc4_;
            _loc4_;
         }
         return _loc1_;
      }
      
      override public function setInitialValues(param1:int, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         value_1 = param1 - 1;
         _loc3_;
         _loc3_;
         value_2 = param2;
         _loc3_;
         Global.custom_weapon_panel.updatePoints();
         _loc3_;
         this.updateBars();
      }
      
      public function doRemoveItem() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.hideItemMenu();
         _loc2_;
         (parent as WeaponEditPanel).§_-FV§(1);
         _loc2_;
         _loc2_;
         (parent as WeaponEditPanel).§_-OX§();
      }
      
      override public function hideAllMenus() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.hideItemMenu();
      }
      
      override public function getDataString() : String
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = "r,";
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_ = _loc1_ + String(value_1 + 1);
         _loc3_;
         _loc3_;
         _loc3_;
         _loc1_ = _loc1_ + ",";
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_ = _loc1_ + String(value_2);
         return _loc1_;
      }
   }
}
