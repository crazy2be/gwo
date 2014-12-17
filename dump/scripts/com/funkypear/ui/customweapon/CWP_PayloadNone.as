package com.funkypear.ui.customweapon
{
   import §_-ZN§.§_-Dn§;
   
   public class CWP_PayloadNone extends CustomWeaponPanel
   {
      
      public function CWP_PayloadNone(param1:Number, param2:Number)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         super(param1,param2);
         _loc3_;
         _loc3_;
         panel_id = 11;
         _loc4_;
         panel_value = 0;
      }
      
      public var §_-au§:§_-Dn§;
      
      private var §_-I1§:Boolean = false;
      
      private var §_-YX§:CustomWeaponPayloadSelectMenu;
      
      override public function updateBars() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         (parent as ProjectileEditPanel).§_-FV§(1);
      }
      
      override public function toggleItemMenu() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(!this.§_-I1§)
         {
            Global.custom_weapon_editor.hideAllMenus();
            _loc2_;
            _loc2_;
            if(this.§_-YX§ == null)
            {
               _loc2_;
               this.§_-YX§ = new CustomWeaponPayloadSelectMenu(parent.x + x + this.§_-au§.x,parent.y + y + this.§_-au§.y,this);
               _loc2_;
               this.§_-YX§.init();
               parent.parent.addChild(this.§_-YX§);
            }
            this.§_-I1§ = true;
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
            parent.parent.removeChild(this.§_-YX§);
            _loc1_;
            this.§_-YX§ = null;
            _loc2_;
         }
         this.§_-I1§ = false;
      }
      
      public function selectPayloadMenuItem(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         (parent as ProjectileEditPanel).selectPayloadMenuItem(param1);
      }
      
      override public function getPointsUsed() : int
      {
         return 0;
      }
      
      override public function hideAllMenus() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
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
