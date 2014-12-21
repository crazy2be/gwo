package com.funkypear.ui.customweapon
{
   import §_-bY§.§_-dH§;
   
   public class CWP_PayloadCluster extends CustomWeaponPanel
   {
      
      public function CWP_PayloadCluster(param1:Number, param2:Number)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         super(param1,param2);
         _loc4_;
         _loc4_;
         panel_id = 11;
         panel_value = 20;
         _loc3_;
         _loc3_;
         value_1 = 1;
         min_1 = 1;
         _loc3_;
         max_1 = 7;
         inc_1 = 1;
         points_1 = [0,0,20,20,20,20,20,20,20,20,20,0];
      }
      
      public var §_-YI§:§_-dH§;
      
      private var §_-AA§:Boolean = false;
      
      private var §_-3X§:CustomWeaponPayloadMenu;
      
      override public function setInitialValue(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         value_1 = param1 - 1;
         _loc3_;
         _loc3_;
         Global.custom_weapon_panel.updatePoints();
         _loc3_;
         _loc3_;
         this.updateBars();
      }
      
      override public function updateBars() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         (parent as ProjectileEditPanel).§_-m4§(value_1 + 1);
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
            Global.custom_weapon_editor.hideAllMenus();
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            if(this.§_-3X§ == null)
            {
               _loc3_;
               _loc3_;
               this.§_-3X§ = new CustomWeaponPayloadMenu(parent.x + x + this.§_-YI§.x,parent.y + y + this.§_-YI§.y,this);
               _loc1_ = {
                  "title_str":"EDIT PAYLOAD",
                  "value_title_str":"COUNT",
                  "item_value":value_1,
                  "min_value":min_1,
                  "max_value":max_1,
                  "value_inc":inc_1
               };
               _loc2_;
               this.§_-3X§.init(_loc1_);
               _loc2_;
               _loc2_;
               parent.parent.addChild(this.§_-3X§);
            }
            this.§_-AA§ = true;
         }
         else
         {
            if(this.§_-3X§ != null)
            {
               _loc3_;
               parent.parent.removeChild(this.§_-3X§);
               _loc3_;
               _loc3_;
               this.§_-3X§ = null;
            }
            this.§_-AA§ = false;
         }
      }
      
      override public function hideItemMenu() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(this.§_-3X§ != null)
         {
            _loc1_;
            parent.parent.removeChild(this.§_-3X§);
            _loc1_;
            _loc1_;
            this.§_-3X§ = null;
            _loc1_;
         }
         this.§_-AA§ = false;
      }
      
      override public function getPointsUsed() : int
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:int = panel_value;
         var _loc2_:int = min_1;
         while(true)
         {
            _loc4_;
            if(_loc2_ > value_1)
            {
               break;
            }
            _loc4_;
            _loc3_;
            _loc3_;
            _loc1_ = _loc1_ + points_1[_loc2_];
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc2_ = _loc2_ + inc_1;
            _loc4_;
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
         _loc1_;
         _loc1_;
         (parent as ProjectileEditPanel).§_-Gm§();
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
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = "y,";
         _loc2_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc1_ = _loc1_ + String(value_1 + 1);
         return _loc1_;
      }
   }
}
