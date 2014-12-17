package com.funkypear.ui.customweapon
{
   import §_-ZN§.§_-Rk§;
   
   public class CWP_Drill extends CustomWeaponPanel
   {
      
      public function CWP_Drill(param1:Number, param2:Number)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         panel_id = 8;
         panel_value = Global.§_-mp§;
         _loc4_;
         _loc4_;
         panel_width = 77;
         _loc3_;
         _loc3_;
         value_1 = Global.§_-q2§;
         min_1 = Global.§_-q2§;
         max_1 = Global.§_-zT§;
         inc_1 = Global.§_-6z§;
         _loc4_;
         _loc4_;
         points_1 = Global.§_-HJ§;
         _loc4_;
         this.updateBars();
      }
      
      public var §_-pl§:§_-Rk§;
      
      public var §_-Me§:§_-ad§;
      
      private var §_-I1§:Boolean = false;
      
      private var §_-YX§:CustomWeaponDrillMenu;
      
      override public function updateBars() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-Me§.§_-ps§(value_1,max_1);
      }
      
      override public function toggleItemMenu() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = null;
         if(!this.§_-I1§)
         {
            Global.custom_weapon_editor.hideAllMenus();
            _loc3_;
            _loc2_;
            _loc2_;
            if(this.§_-YX§ == null)
            {
               this.§_-YX§ = new CustomWeaponDrillMenu(parent.x + x + this.§_-pl§.x,parent.y + y + this.§_-pl§.y,this);
               _loc3_;
               _loc3_;
               _loc1_ = {
                  "title_str":"SURFACE COUNT",
                  "value_title_str":"COUNT",
                  "unit_str":"",
                  "item_value":value_1,
                  "min_value":min_1,
                  "max_value":max_1,
                  "value_inc":inc_1
               };
               _loc3_;
               _loc3_;
               this.§_-YX§.init(_loc1_);
               _loc3_;
               parent.parent.addChild(this.§_-YX§);
            }
            this.§_-I1§ = true;
         }
         else
         {
            if(this.§_-YX§ != null)
            {
               _loc3_;
               parent.parent.removeChild(this.§_-YX§);
               _loc2_;
               _loc2_;
               this.§_-YX§ = null;
            }
            this.§_-I1§ = false;
         }
      }
      
      override public function hideItemMenu() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         if(this.§_-YX§ != null)
         {
            _loc1_;
            parent.parent.removeChild(this.§_-YX§);
            _loc2_;
            this.§_-YX§ = null;
            _loc1_;
            _loc1_;
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
            _loc3_;
            if(_loc2_ > value_1)
            {
               break;
            }
            _loc3_;
            _loc3_;
            _loc4_;
            _loc1_ = _loc1_ + points_1[_loc2_];
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc2_ = _loc2_ + inc_1;
            _loc4_;
         }
         return _loc1_;
      }
      
      public function doRemoveItem() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.hideItemMenu();
         _loc1_;
         (parent as ProjectileEditPanel).removePanel(this);
      }
      
      override public function hideAllMenus() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.hideItemMenu();
      }
      
      override public function getDataString() : String
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = "i,";
         _loc2_;
         _loc3_;
         _loc3_;
         _loc1_ = _loc1_ + String(value_1);
         return _loc1_;
      }
   }
}
