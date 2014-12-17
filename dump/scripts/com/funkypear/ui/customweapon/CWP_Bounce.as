package com.funkypear.ui.customweapon
{
   import §_-ZN§.§_-KW§;
   
   public class CWP_Bounce extends CustomWeaponPanel
   {
      
      public function CWP_Bounce(param1:Number, param2:Number)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         super(param1,param2);
         panel_id = 7;
         _loc3_;
         panel_value = Global.§_-LY§;
         _loc3_;
         panel_width = 77;
         value_1 = Global.§_-3h§;
         _loc3_;
         min_1 = Global.§_-3h§;
         _loc4_;
         _loc4_;
         max_1 = Global.§_-HA§;
         inc_1 = Global.§_-m0§;
         points_1 = Global.§_-yJ§;
         _loc4_;
         _loc4_;
         this.updateBars();
      }
      
      public var §_-pl§:§_-KW§;
      
      public var §_-Me§:§_-ad§;
      
      private var §_-I1§:Boolean = false;
      
      private var §_-YX§:CustomWeaponBounceMenu;
      
      override public function updateBars() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
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
            _loc2_;
            _loc2_;
            _loc3_;
            if(this.§_-YX§ == null)
            {
               this.§_-YX§ = new CustomWeaponBounceMenu(parent.x + x + this.§_-pl§.x,parent.y + y + this.§_-pl§.y,this);
               _loc2_;
               _loc1_ = {
                  "title_str":"BOUNCE COUNT",
                  "value_title_str":"BOUNCES",
                  "unit_str":"",
                  "item_value":value_1,
                  "min_value":min_1,
                  "max_value":max_1,
                  "value_inc":inc_1
               };
               _loc2_;
               this.§_-YX§.init(_loc1_);
               _loc3_;
               _loc3_;
               parent.parent.addChild(this.§_-YX§);
            }
            this.§_-I1§ = true;
            _loc3_;
            _loc3_;
         }
         else
         {
            if(this.§_-YX§ != null)
            {
               parent.parent.removeChild(this.§_-YX§);
               this.§_-YX§ = null;
               _loc2_;
            }
            this.§_-I1§ = false;
         }
      }
      
      override public function hideItemMenu() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         if(this.§_-YX§ != null)
         {
            _loc1_;
            _loc1_;
            parent.parent.removeChild(this.§_-YX§);
            _loc2_;
            _loc2_;
            this.§_-YX§ = null;
            _loc1_;
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
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
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
         _loc2_;
         _loc2_;
         (parent as ProjectileEditPanel).removePanel(this);
      }
      
      override public function hideAllMenus() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.hideItemMenu();
      }
      
      override public function getDataString() : String
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = "b,";
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc1_ = _loc1_ + String(value_1);
         return _loc1_;
      }
   }
}
