package com.funkypear.ui.customweapon
{
   import §_-bY§.§_-7N§;
   
   public class CWP_EMP extends CustomWeaponPanel
   {
      
      public function CWP_EMP(param1:Number, param2:Number)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         panel_id = 3;
         panel_value = Global.§_-IT§;
         _loc4_;
         _loc4_;
         panel_width = 77;
         value_1 = Global.§_-h0§;
         min_1 = Global.§_-h0§;
         max_1 = Global.§_-0L§;
         _loc4_;
         inc_1 = Global.§_-0s§;
         _loc3_;
         _loc3_;
         points_1 = Global.§_-OQ§;
         value_2 = Global.§_-OC§;
         min_2 = Global.§_-OC§;
         max_2 = Global.§_-r2§;
         inc_2 = Global.§_-9b§;
         points_2 = Global.§_-L1§;
         _loc3_;
         this.updateBars();
      }
      
      public var §_-SC§:§_-7N§;
      
      public var §_-mK§:§_-Fn§;
      
      public var §_-4o§:§_-Xh§;
      
      private var §_-AA§:Boolean = false;
      
      private var §_-3X§:CustomWeaponEMPMenu;
      
      override public function updateBars() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-4o§.§_-oc§(value_1,max_1);
         _loc2_;
         this.§_-mK§.§_-oc§(value_2,max_2);
      }
      
      override public function toggleItemMenu() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         if(!this.§_-AA§)
         {
            Global.custom_weapon_editor.hideAllMenus();
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            _loc3_;
            if(this.§_-3X§ == null)
            {
               this.§_-3X§ = new CustomWeaponEMPMenu(parent.x + x + this.§_-SC§.x,parent.y + y + this.§_-SC§.y,this);
               _loc1_ = {
                  "title_str":"EMP OVERLOAD",
                  "value_title_str":"VALUE",
                  "unit_str":"",
                  "item_value":value_1,
                  "min_value":min_1,
                  "max_value":max_1,
                  "value_inc":inc_1
               };
               _loc2_ = {
                  "title_str":"BLAST SIZE",
                  "value_title_str":"RADIUS",
                  "unit_str":"PX",
                  "item_value":value_2,
                  "min_value":min_2,
                  "max_value":max_2,
                  "value_inc":inc_2
               };
               _loc4_;
               _loc4_;
               this.§_-3X§.init(_loc1_,_loc2_);
               _loc4_;
               _loc4_;
               parent.parent.addChild(this.§_-3X§);
            }
            this.§_-AA§ = true;
         }
         else
         {
            if(this.§_-3X§ != null)
            {
               _loc4_;
               parent.parent.removeChild(this.§_-3X§);
               _loc3_;
               this.§_-3X§ = null;
               _loc3_;
               _loc3_;
            }
            this.§_-AA§ = false;
         }
      }
      
      override public function hideItemMenu() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(this.§_-3X§ != null)
         {
            _loc1_;
            parent.parent.removeChild(this.§_-3X§);
            _loc1_;
            this.§_-3X§ = null;
            _loc2_;
            _loc2_;
         }
         this.§_-AA§ = false;
      }
      
      override public function getPointsUsed() : int
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         var _loc1_:int = panel_value;
         _loc4_;
         _loc4_;
         _loc2_ = min_1;
         while(true)
         {
            _loc4_;
            _loc4_;
            if(_loc2_ > value_1)
            {
               break;
            }
            _loc3_;
            _loc1_ = _loc1_ + points_1[_loc2_];
            _loc2_ = _loc2_ + inc_1;
            _loc4_;
         }
         _loc4_;
         _loc3_;
         _loc3_;
         _loc2_ = min_2;
         _loc3_;
         _loc3_;
         while(_loc2_ <= value_2)
         {
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc1_ = _loc1_ + points_2[_loc2_];
            _loc2_ = _loc2_ + inc_2;
            _loc3_;
            _loc3_;
         }
         return _loc1_;
      }
      
      public function doRemoveItem() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.hideItemMenu();
         _loc2_;
         _loc2_;
         (parent as ProjectileEditPanel).removePanel(this);
      }
      
      override public function hideAllMenus() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.hideItemMenu();
      }
      
      override public function getDataString() : String
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = "m,";
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc1_ = _loc1_ + String(value_2);
         _loc2_;
         _loc3_;
         _loc3_;
         _loc1_ = _loc1_ + ",";
         _loc2_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc1_ = _loc1_ + String(value_1);
         return _loc1_;
      }
   }
}
