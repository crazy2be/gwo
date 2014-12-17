package com.funkypear.ui.customweapon
{
   import §_-ZN§.§_-oK§;
   
   public class CWP_WeaponSingle extends CustomWeaponPanel
   {
      
      public function CWP_WeaponSingle(param1:Number, param2:Number)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         super(param1,param2);
         _loc4_;
         _loc4_;
         panel_value = 0;
      }
      
      public var §_-au§:§_-oK§;
      
      private var §_-I1§:Boolean = false;
      
      private var §_-YX§:CustomWeaponShotMenu;
      
      override public function updateBars() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         (parent as WeaponEditPanel).§_-FV§(1);
      }
      
      override public function selectMenuItem(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.hideItemMenu();
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(param1 == 0)
         {
            (parent as WeaponEditPanel).§_-OX§();
         }
         else
         {
            _loc2_;
            _loc3_;
            if(param1 == 1)
            {
               _loc3_;
               _loc3_;
               (parent as WeaponEditPanel).§_-yW§();
               _loc2_;
               _loc2_;
            }
            else if(param1 == 2)
            {
               (parent as WeaponEditPanel).§_-Xc§();
            }
            
         }
      }
      
      override public function toggleItemMenu() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(!this.§_-I1§)
         {
            Global.custom_weapon_editor.hideAllMenus();
            _loc1_;
            _loc1_;
            _loc2_;
            if(this.§_-YX§ == null)
            {
               this.§_-YX§ = new CustomWeaponShotMenu(parent.x + x + this.§_-au§.x,parent.y + y + this.§_-au§.y,this);
               _loc2_;
               this.§_-YX§.init();
               _loc1_;
               parent.parent.addChild(this.§_-YX§);
            }
            this.§_-I1§ = true;
         }
         else
         {
            if(this.§_-YX§ != null)
            {
               parent.parent.removeChild(this.§_-YX§);
               _loc2_;
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
         if(this.§_-YX§ != null)
         {
            _loc1_;
            _loc1_;
            parent.parent.removeChild(this.§_-YX§);
            _loc2_;
            this.§_-YX§ = null;
            _loc2_;
         }
         this.§_-I1§ = false;
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
         _loc2_;
         _loc2_;
         this.hideItemMenu();
      }
      
      override public function getDataString() : String
      {
         var _loc1_:* = "";
         return _loc1_;
      }
   }
}
