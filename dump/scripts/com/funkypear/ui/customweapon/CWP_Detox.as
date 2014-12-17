package com.funkypear.ui.customweapon
{
   import §_-ZN§.§_-lz§;
   
   public class CWP_Detox extends CustomWeaponPanel
   {
      
      public function CWP_Detox(param1:Number, param2:Number)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         super(param1,param2);
         _loc3_;
         panel_value = Global.§_-G8§;
         _loc3_;
         _loc3_;
         panel_id = 6;
         _loc3_;
         _loc3_;
         panel_width = 77;
      }
      
      public var §_-pl§:§_-lz§;
      
      private var §_-I1§:Boolean = false;
      
      private var §_-YX§:§_-ir§;
      
      override public function toggleItemMenu() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = null;
         if(!this.§_-I1§)
         {
            Global.custom_weapon_editor.hideAllMenus();
            _loc2_;
            _loc3_;
            if(this.§_-YX§ == null)
            {
               this.§_-YX§ = new §_-ir§(parent.x + x + this.§_-pl§.x,parent.y + y + this.§_-pl§.y,this);
               _loc2_;
               _loc1_ = {"title_str":"REMOVE RADIOACIVITY"};
               _loc2_;
               _loc2_;
               this.§_-YX§.init(_loc1_);
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
               parent.parent.removeChild(this.§_-YX§);
               this.§_-YX§ = null;
               _loc3_;
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
            _loc2_;
            this.§_-YX§ = null;
            _loc1_;
            _loc1_;
         }
         this.§_-I1§ = false;
      }
      
      override public function getPointsUsed() : int
      {
         var _loc1_:int = panel_value;
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
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.hideItemMenu();
      }
      
      override public function getDataString() : String
      {
         var _loc1_:* = "a";
         return _loc1_;
      }
   }
}
