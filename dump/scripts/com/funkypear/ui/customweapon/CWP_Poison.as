package com.funkypear.ui.customweapon
{
   import §_-ZN§.§_-Fm§;
   
   public class CWP_Poison extends CustomWeaponPanel
   {
      
      public function CWP_Poison(param1:Number, param2:Number)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         super(param1,param2);
         panel_id = 9;
         _loc3_;
         _loc3_;
         panel_value = Global.§_-j3§;
         panel_width = 77;
         value_1 = Global.§_-OR§;
         _loc3_;
         _loc3_;
         min_1 = Global.§_-OR§;
         _loc3_;
         _loc3_;
         max_1 = Global.§ case§;
         _loc3_;
         _loc3_;
         inc_1 = Global.§_-6W§;
         _loc4_;
         points_1 = Global.§_-Bs§;
         _loc3_;
         _loc3_;
         value_2 = Global.§_-B-§;
         _loc4_;
         _loc4_;
         min_2 = Global.§_-B-§;
         max_2 = Global.§_-nw§;
         _loc4_;
         _loc4_;
         inc_2 = Global.§_-xJ§;
         _loc4_;
         points_2 = Global.§_-NK§;
         _loc3_;
         this.updateBars();
      }
      
      public var §_-pl§:§_-Fm§;
      
      public var §_-x1§:§_-re§;
      
      public var §_-Me§:§_-ad§;
      
      private var §_-I1§:Boolean = false;
      
      private var §_-YX§:CustomWeaponPoisonMenu;
      
      override public function updateBars() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-Me§.§_-ps§(value_1,max_1);
         _loc1_;
         _loc1_;
         this.§_-x1§.§_-ps§(value_2,max_2);
      }
      
      override public function toggleItemMenu() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Object = null;
         var _loc2_:Object = null;
         if(!this.§_-I1§)
         {
            _loc4_;
            _loc4_;
            Global.custom_weapon_editor.hideAllMenus();
            _loc3_;
            _loc4_;
            _loc4_;
            _loc4_;
            if(this.§_-YX§ == null)
            {
               this.§_-YX§ = new CustomWeaponPoisonMenu(parent.x + x + this.§_-pl§.x,parent.y + y + this.§_-pl§.y,this);
               _loc3_;
               _loc3_;
               _loc1_ = {
                  "title_str":"POISON DAMAGE",
                  "value_title_str":"DAMAGE",
                  "unit_str":"HP",
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
               this.§_-YX§.init(_loc1_,_loc2_);
               _loc3_;
               parent.parent.addChild(this.§_-YX§);
            }
            this.§_-I1§ = true;
         }
         else
         {
            if(this.§_-YX§ != null)
            {
               parent.parent.removeChild(this.§_-YX§);
               _loc3_;
               _loc3_;
               this.§_-YX§ = null;
               _loc4_;
               _loc4_;
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
            _loc1_;
            _loc1_;
            this.§_-YX§ = null;
            _loc2_;
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
         _loc2_ = min_1;
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
            _loc4_;
            _loc4_;
            _loc2_ = _loc2_ + inc_1;
         }
         _loc2_ = min_2;
         _loc3_;
         _loc3_;
         while(_loc2_ <= value_2)
         {
            _loc4_;
            _loc1_ = _loc1_ + points_2[_loc2_];
            _loc3_;
            _loc3_;
            _loc2_ = _loc2_ + inc_2;
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
         var _loc1_:* = "o,";
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc1_ = _loc1_ + String(value_2);
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_ = _loc1_ + ",";
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc1_ = _loc1_ + String(value_1);
         return _loc1_;
      }
   }
}
