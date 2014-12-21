package com.funkypear.ui.customweapon
{
   import §_-bY§.§_-EW§;
   
   public class CWP_Bounce extends CustomWeaponPanel
   {
      
      public function CWP_Bounce(param1:Number, param2:Number)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super(param1,param2);
         panel_id = 7;
         panel_value = Global.§_-2U§;
         panel_width = 77;
         value_1 = Global.§_-oi§;
         _loc4_;
         _loc4_;
         min_1 = Global.§_-oi§;
         _loc4_;
         _loc4_;
         max_1 = Global.§_-U8§;
         _loc3_;
         inc_1 = Global.§_-wz§;
         points_1 = Global.§_-0-B§;
         this.updateBars();
      }
      
      public var §_-SC§:§_-EW§;
      
      public var §_-4o§:§_-Xh§;
      
      private var §_-AA§:Boolean = false;
      
      private var §_-3X§:CustomWeaponBounceMenu;
      
      override public function updateBars() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-4o§.§_-oc§(value_1,max_1);
      }
      
      override public function toggleItemMenu() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Object = null;
         _loc2_;
         _loc2_;
         if(!this.§_-AA§)
         {
            _loc2_;
            Global.custom_weapon_editor.hideAllMenus();
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            if(this.§_-3X§ == null)
            {
               this.§_-3X§ = new CustomWeaponBounceMenu(parent.x + x + this.§_-SC§.x,parent.y + y + this.§_-SC§.y,this);
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
               _loc2_;
               this.§_-3X§.init(_loc1_);
               _loc3_;
               _loc3_;
               parent.parent.addChild(this.§_-3X§);
            }
            this.§_-AA§ = true;
            _loc3_;
            _loc3_;
         }
         else
         {
            if(this.§_-3X§ != null)
            {
               parent.parent.removeChild(this.§_-3X§);
               _loc2_;
               this.§_-3X§ = null;
               _loc2_;
            }
            this.§_-AA§ = false;
         }
      }
      
      override public function hideItemMenu() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         if(this.§_-3X§ != null)
         {
            _loc1_;
            parent.parent.removeChild(this.§_-3X§);
            _loc2_;
            this.§_-3X§ = null;
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
            _loc4_;
            if(_loc2_ > value_1)
            {
               break;
            }
            _loc3_;
            _loc3_;
            _loc4_;
            _loc1_ = _loc1_ + points_1[_loc2_];
            _loc3_;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            _loc2_ = _loc2_ + inc_1;
            _loc3_;
         }
         return _loc1_;
      }
      
      public function doRemoveItem() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.hideItemMenu();
         _loc1_;
         _loc1_;
         (parent as ProjectileEditPanel).removePanel(this);
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
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = "b,";
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc1_ = _loc1_ + String(value_1);
         return _loc1_;
      }
   }
}
