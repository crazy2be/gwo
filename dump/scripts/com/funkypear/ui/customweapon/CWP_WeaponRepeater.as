package com.funkypear.ui.customweapon
{
   import §_-bY§.§_-S1§;
   
   public class CWP_WeaponRepeater extends CustomWeaponPanel
   {
      
      public function CWP_WeaponRepeater(param1:Number, param2:Number)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         _loc3_;
         _loc3_;
         panel_id = 3;
         panel_value = 20;
         value_1 = 1;
         min_1 = 1;
         _loc4_;
         _loc4_;
         max_1 = 7;
         inc_1 = 1;
         _loc4_;
         points_1 = [0,0,20,20,20,20,20,20,20,20,20,0];
         value_2 = 1;
         min_2 = 1;
         max_2 = 5;
         _loc3_;
         inc_2 = 1;
      }
      
      public var §_-YI§:§_-S1§;
      
      private var §_-AA§:Boolean = false;
      
      private var §_-3X§:CustomWeaponRepeaterMenu;
      
      override public function getMaxValue2() : int
      {
         return max_2 - value_2;
      }
      
      override public function updateBars() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         (parent as WeaponEditPanel).§_-m4§(value_1 + 1);
      }
      
      override public function toggleItemMenu() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         _loc3_;
         if(!this.§_-AA§)
         {
            Global.custom_weapon_editor.hideAllMenus();
            _loc3_;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            if(this.§_-3X§ == null)
            {
               this.§_-3X§ = new CustomWeaponRepeaterMenu(parent.x + x + this.§_-YI§.x,parent.y + y + this.§_-YI§.y,this);
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
               _loc4_;
               _loc4_;
               this.§_-3X§.init(_loc1_,_loc2_);
               _loc4_;
               parent.parent.addChild(this.§_-3X§);
            }
            this.§_-AA§ = true;
            _loc4_;
         }
         else
         {
            if(this.§_-3X§ != null)
            {
               parent.parent.removeChild(this.§_-3X§);
               this.§_-3X§ = null;
            }
            this.§_-AA§ = false;
         }
      }
      
      override public function hideItemMenu() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(this.§_-3X§ != null)
         {
            _loc2_;
            parent.parent.removeChild(this.§_-3X§);
            _loc2_;
            _loc2_;
            this.§_-3X§ = null;
            _loc2_;
            _loc2_;
         }
         this.§_-AA§ = false;
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
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc1_ = _loc1_ + points_1[_loc2_];
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc2_ = _loc2_ + inc_1;
            _loc3_;
            _loc3_;
         }
         return _loc1_;
      }
      
      override public function setInitialValues(param1:int, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         value_1 = param1 - 1;
         _loc4_;
         _loc4_;
         value_2 = param2;
         _loc4_;
         Global.custom_weapon_panel.updatePoints();
         _loc3_;
         _loc3_;
         this.updateBars();
      }
      
      public function doRemoveItem() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.hideItemMenu();
         _loc2_;
         (parent as WeaponEditPanel).§_-m4§(1);
         _loc1_;
         _loc1_;
         (parent as WeaponEditPanel).§_-4K§();
      }
      
      override public function hideAllMenus() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.hideItemMenu();
      }
      
      override public function getDataString() : String
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = "r,";
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc1_ = _loc1_ + String(value_1 + 1);
         _loc2_;
         _loc3_;
         _loc1_ = _loc1_ + ",";
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc1_ = _loc1_ + String(value_2);
         return _loc1_;
      }
   }
}
