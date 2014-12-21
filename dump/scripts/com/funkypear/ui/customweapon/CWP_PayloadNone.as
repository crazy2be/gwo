package com.funkypear.ui.customweapon
{
   import §_-bY§.§_-vI§;
   
   public class CWP_PayloadNone extends CustomWeaponPanel
   {
      
      public function CWP_PayloadNone(param1:Number, param2:Number)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         super(param1,param2);
         _loc3_;
         _loc3_;
         panel_id = 11;
         _loc4_;
         _loc4_;
         panel_value = 0;
      }
      
      public var §_-YI§:§_-vI§;
      
      private var §_-AA§:Boolean = false;
      
      private var §_-3X§:CustomWeaponPayloadSelectMenu;
      
      override public function updateBars() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         (parent as ProjectileEditPanel).§_-m4§(1);
      }
      
      override public function toggleItemMenu() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(!this.§_-AA§)
         {
            _loc1_;
            Global.custom_weapon_editor.hideAllMenus();
            _loc2_;
            _loc1_;
            _loc1_;
            if(this.§_-3X§ == null)
            {
               this.§_-3X§ = new CustomWeaponPayloadSelectMenu(parent.x + x + this.§_-YI§.x,parent.y + y + this.§_-YI§.y,this);
               _loc1_;
               this.§_-3X§.init();
               _loc1_;
               parent.parent.addChild(this.§_-3X§);
            }
            this.§_-AA§ = true;
            _loc2_;
         }
         else
         {
            if(this.§_-3X§ != null)
            {
               parent.parent.removeChild(this.§_-3X§);
               _loc2_;
               _loc2_;
               this.§_-3X§ = null;
               _loc1_;
            }
            this.§_-AA§ = false;
         }
      }
      
      override public function hideItemMenu() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
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
      
      public function selectPayloadMenuItem(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         (parent as ProjectileEditPanel).selectPayloadMenuItem(param1);
      }
      
      override public function getPointsUsed() : int
      {
         return 0;
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
         var _loc1_:* = "";
         return _loc1_;
      }
   }
}
