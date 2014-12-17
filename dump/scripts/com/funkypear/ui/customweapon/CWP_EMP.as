package com.funkypear.ui.customweapon
{
   import §_-ZN§.§_-az§;
   
   public class CWP_EMP extends CustomWeaponPanel
   {
      
      public function CWP_EMP(param1:Number, param2:Number)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         panel_id = 3;
         panel_value = Global.§_-U4§;
         panel_width = 77;
         _loc3_;
         _loc3_;
         value_1 = Global.§_-Ay§;
         _loc4_;
         _loc4_;
         min_1 = Global.§_-Ay§;
         max_1 = Global.§_-Ox§;
         inc_1 = Global.§_-kp§;
         _loc3_;
         _loc3_;
         points_1 = Global.§_-sg§;
         _loc4_;
         _loc4_;
         value_2 = Global.§_-2§;
         min_2 = Global.§_-2§;
         max_2 = Global.§_-1L§;
         inc_2 = Global.§_-qO§;
         points_2 = Global.§_-3q§;
         this.updateBars();
      }
      
      public var §_-pl§:§_-az§;
      
      public var §_-x1§:§_-re§;
      
      public var §_-Me§:§_-ad§;
      
      private var §_-I1§:Boolean = false;
      
      private var §_-YX§:CustomWeaponEMPMenu;
      
      override public function updateBars() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Me§.§_-ps§(value_1,max_1);
         _loc2_;
         this.§_-x1§.§_-ps§(value_2,max_2);
      }
      
      override public function toggleItemMenu() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         if(!this.§_-I1§)
         {
            Global.custom_weapon_editor.hideAllMenus();
            _loc3_;
            _loc4_;
            _loc4_;
            if(this.§_-YX§ == null)
            {
               this.§_-YX§ = new CustomWeaponEMPMenu(parent.x + x + this.§_-pl§.x,parent.y + y + this.§_-pl§.y,this);
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
               _loc3_;
               _loc3_;
               this.§_-YX§.init(_loc1_,_loc2_);
               _loc4_;
               _loc4_;
               parent.parent.addChild(this.§_-YX§);
            }
            this.§_-I1§ = true;
            _loc4_;
         }
         else
         {
            if(this.§_-YX§ != null)
            {
               parent.parent.removeChild(this.§_-YX§);
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
         _loc1_;
         if(this.§_-YX§ != null)
         {
            _loc2_;
            _loc2_;
            parent.parent.removeChild(this.§_-YX§);
            _loc2_;
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
         var _loc2_:* = 0;
         var _loc1_:int = panel_value;
         _loc3_;
         _loc3_;
         _loc2_ = min_1;
         while(true)
         {
            _loc4_;
            if(_loc2_ > value_1)
            {
               break;
            }
            _loc4_;
            _loc1_ = _loc1_ + points_1[_loc2_];
            _loc4_;
            _loc3_;
            _loc2_ = _loc2_ + inc_1;
            _loc4_;
         }
         _loc2_ = min_2;
         _loc4_;
         while(_loc2_ <= value_2)
         {
            _loc3_;
            _loc4_;
            _loc4_;
            _loc1_ = _loc1_ + points_2[_loc2_];
            _loc4_;
            _loc4_;
            _loc2_ = _loc2_ + inc_2;
            _loc4_;
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
         var _loc1_:* = "m,";
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc1_ = _loc1_ + String(value_2);
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_ = _loc1_ + ",";
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_ = _loc1_ + String(value_1);
         return _loc1_;
      }
   }
}
