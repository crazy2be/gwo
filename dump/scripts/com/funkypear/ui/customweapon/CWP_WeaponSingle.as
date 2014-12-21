package com.funkypear.ui.customweapon
{
   import §_-bY§.§_-f5§;
   
   public class CWP_WeaponSingle extends CustomWeaponPanel
   {
      
      public function CWP_WeaponSingle(param1:Number, param2:Number)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         super(param1,param2);
         _loc3_;
         panel_value = 0;
      }
      
      public var §_-YI§:§_-f5§;
      
      private var §_-AA§:Boolean = false;
      
      private var §_-3X§:CustomWeaponShotMenu;
      
      override public function updateBars() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         (parent as WeaponEditPanel).§_-m4§(1);
      }
      
      override public function selectMenuItem(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.hideItemMenu();
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         if(param1 == 0)
         {
            (parent as WeaponEditPanel).§_-4K§();
         }
         else
         {
            _loc2_;
            _loc2_;
            _loc3_;
            if(param1 == 1)
            {
               _loc2_;
               _loc2_;
               (parent as WeaponEditPanel).§_-xw§();
            }
            else if(param1 == 2)
            {
               (parent as WeaponEditPanel).§_-aX§();
            }
            
         }
      }
      
      override public function toggleItemMenu() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(!this.§_-AA§)
         {
            _loc1_;
            Global.custom_weapon_editor.hideAllMenus();
            _loc2_;
            _loc1_;
            _loc1_;
            if(this.§_-3X§ == null)
            {
               this.§_-3X§ = new CustomWeaponShotMenu(parent.x + x + this.§_-YI§.x,parent.y + y + this.§_-YI§.y,this);
               _loc2_;
               this.§_-3X§.init();
               parent.parent.addChild(this.§_-3X§);
            }
            this.§_-AA§ = true;
         }
         else
         {
            if(this.§_-3X§ != null)
            {
               _loc2_;
               _loc2_;
               parent.parent.removeChild(this.§_-3X§);
               _loc1_;
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
            _loc2_;
            parent.parent.removeChild(this.§_-3X§);
            _loc2_;
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
         var _loc1_:* = "";
         return _loc1_;
      }
   }
}
