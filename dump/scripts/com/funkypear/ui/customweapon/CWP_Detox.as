package com.funkypear.ui.customweapon
{
   import §_-bY§.§_-bq§;
   
   public class CWP_Detox extends CustomWeaponPanel
   {
      
      public function CWP_Detox(param1:Number, param2:Number)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         super(param1,param2);
         _loc3_;
         panel_value = Global.§_-Z8§;
         _loc3_;
         _loc3_;
         panel_id = 6;
         _loc3_;
         _loc3_;
         panel_width = 77;
      }
      
      public var §_-SC§:§_-bq§;
      
      private var §_-AA§:Boolean = false;
      
      private var §_-3X§:§_-LB§;
      
      override public function toggleItemMenu() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Object = null;
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
               this.§_-3X§ = new §_-LB§(parent.x + x + this.§_-SC§.x,parent.y + y + this.§_-SC§.y,this);
               _loc2_;
               _loc1_ = {"title_str":"REMOVE RADIOACIVITY"};
               _loc3_;
               this.§_-3X§.init(_loc1_);
               _loc3_;
               _loc3_;
               parent.parent.addChild(this.§_-3X§);
            }
            this.§_-AA§ = true;
         }
         else
         {
            if(this.§_-3X§ != null)
            {
               parent.parent.removeChild(this.§_-3X§);
               _loc2_;
               _loc2_;
               this.§_-3X§ = null;
               _loc3_;
               _loc3_;
            }
            this.§_-AA§ = false;
         }
      }
      
      override public function hideItemMenu() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         if(this.§_-3X§ != null)
         {
            _loc1_;
            parent.parent.removeChild(this.§_-3X§);
            _loc1_;
            this.§_-3X§ = null;
            _loc1_;
         }
         this.§_-AA§ = false;
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
         _loc1_;
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
         var _loc1_:* = "a";
         return _loc1_;
      }
   }
}
