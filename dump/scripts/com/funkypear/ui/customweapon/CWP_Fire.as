package com.funkypear.ui.customweapon
{
   import §_-ZN§.§_-EP§;
   
   public class CWP_Fire extends CustomWeaponPanel
   {
      
      public function CWP_Fire(param1:Number, param2:Number)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         super(param1,param2);
         panel_id = 4;
         panel_value = Global.§_-ih§;
         panel_width = 77;
         _loc4_;
         _loc4_;
         value_1 = Global.§_-CE§;
         _loc3_;
         _loc3_;
         min_1 = Global.§_-CE§;
         max_1 = Global.§_-Cj§;
         _loc4_;
         _loc4_;
         inc_1 = Global.§_-om§;
         points_1 = Global.§_-JD§;
         _loc4_;
         this.updateBars();
      }
      
      public var §_-pl§:§_-EP§;
      
      public var §_-Me§:§_-ad§;
      
      private var §_-I1§:Boolean = false;
      
      private var §_-YX§:CustomWeaponFireMenu;
      
      override public function updateBars() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
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
            _loc3_;
            if(this.§_-YX§ == null)
            {
               this.§_-YX§ = new CustomWeaponFireMenu(parent.x + x + this.§_-pl§.x,parent.y + y + this.§_-pl§.y,this);
               _loc2_;
               _loc1_ = {
                  "title_str":"BLAST SIZE",
                  "value_title_str":"RADIUS",
                  "unit_str":"PX",
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
            _loc2_;
            _loc2_;
         }
         else
         {
            if(this.§_-YX§ != null)
            {
               _loc3_;
               _loc3_;
               parent.parent.removeChild(this.§_-YX§);
               this.§_-YX§ = null;
               _loc3_;
               _loc3_;
            }
            this.§_-I1§ = false;
         }
      }
      
      override public function hideItemMenu() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         if(this.§_-YX§ != null)
         {
            _loc1_;
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
            _loc4_;
            _loc4_;
            _loc1_ = _loc1_ + points_1[_loc2_];
            _loc3_;
            _loc4_;
            _loc4_;
            _loc4_;
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
         _loc2_;
         this.hideItemMenu();
         _loc2_;
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
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = "f,";
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc1_ = _loc1_ + String(value_1);
         return _loc1_;
      }
   }
}
