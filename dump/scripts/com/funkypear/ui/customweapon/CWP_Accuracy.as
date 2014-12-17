package com.funkypear.ui.customweapon
{
   import §_-ZN§.§_-1r§;
   
   public class CWP_Accuracy extends CustomWeaponPanel
   {
      
      public function CWP_Accuracy(param1:Number, param2:Number)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         _loc3_;
         panel_id = 2;
         panel_value = 0;
         panel_width = 95;
         value_1 = 1;
         min_1 = 1;
         _loc3_;
         max_1 = 10;
         inc_1 = 1;
         points_1 = [0,0,5,5,5,5,5,5,5,5,5,0];
         this.updateBars();
      }
      
      public var §_-pl§:§_-1r§;
      
      public var §_-Me§:§_-ad§;
      
      private var §_-I1§:Boolean = false;
      
      private var §_-YX§:CustomWeaponAccuracyMenu;
      
      override public function updateBars() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Me§.§_-ps§(value_1,max_1);
      }
      
      override public function toggleItemMenu() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = null;
         if(!this.§_-I1§)
         {
            Global.custom_weapon_editor.hideAllMenus();
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            if(this.§_-YX§ == null)
            {
               this.§_-YX§ = new CustomWeaponAccuracyMenu(parent.x + x + this.§_-pl§.x,parent.y + y + this.§_-pl§.y,this);
               _loc1_ = {
                  "title_str":"PREVIEW LINE",
                  "value_title_str":"BOOST",
                  "item_value":value_1,
                  "min_value":min_1,
                  "max_value":max_1,
                  "value_inc":inc_1
               };
               _loc3_;
               this.§_-YX§.init(_loc1_);
               _loc3_;
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
               this.§_-YX§ = null;
               _loc3_;
            }
            this.§_-I1§ = false;
         }
      }
      
      override public function hideItemMenu() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         if(this.§_-YX§ != null)
         {
            _loc2_;
            _loc2_;
            parent.parent.removeChild(this.§_-YX§);
            _loc2_;
            this.§_-YX§ = null;
            _loc1_;
         }
         this.§_-I1§ = false;
      }
      
      override public function setDefault() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         setInitialValue(1);
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
            _loc3_;
            _loc1_ = _loc1_ + points_1[_loc2_];
            _loc4_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc2_ = _loc2_ + inc_1;
            _loc3_;
            _loc3_;
         }
         return _loc1_;
      }
      
      override public function hideAllMenus() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.hideItemMenu();
      }
      
      override public function getDataString() : String
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = "p,";
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc1_ = _loc1_ + String(value_1);
         return _loc1_;
      }
   }
}
