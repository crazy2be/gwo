package com.funkypear.ui.customweapon
{
   import §_-bY§.CWMB_ProjectileGfx;
   import §_-bY§.CWMB_Colour;
   
   public class CWP_ProjectileGfx extends CustomWeaponPanel
   {
      
      public function CWP_ProjectileGfx(param1:Number, param2:Number)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         super(param1,param2);
         _loc3_;
         panel_value = 0;
         _loc3_;
         panel_width = 97;
         _loc4_;
         this.selectMenuItem(this.item_id);
         _loc4_;
         this.selectColour(this.§_-U2§());
      }
      
      public var §_-cA§:CWMB_ProjectileGfx;
      
      public var §_-V2§:CWMB_Colour;
      
      private var §_-Hu§:Boolean = false;
      
      private var §_-RR§:CustomWeaponProjGfxMenu;
      
      private var item_id:int = 0;
      
      private var §_-5I§:Boolean = false;
      
      private var §_-Ux§:CustomWeaponColourMenu;
      
      private var colour_id:int = 0;
      
      private var §_-rK§:Number;
      
      private var §_-ed§:Number;
      
      private function §_-U2§() : int
      {
         var _loc1_:int = Math.random() * (SafeGlobal.cw_colours.length - 1);
         return _loc1_;
      }
      
      override public function setDefault() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.selectMenuItem(0);
         _loc2_;
         this.selectColour(this.§_-U2§());
      }
      
      override public function getPointsUsed() : int
      {
         var _loc1_:* = 0;
         return _loc1_;
      }
      
      override public function setInitialValue(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.selectMenuItem(param1);
      }
      
      public function §_-Lq§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.selectColour(param1);
      }
      
      public function §_-0A§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Array = null;
         var _loc2_:* = 0;
         _loc3_;
         _loc3_;
         if(!this.§_-Hu§)
         {
            _loc4_;
            _loc4_;
            Global.custom_weapon_editor.hideAllMenus();
            _loc4_;
            _loc4_;
            this.§_-RR§ = new CustomWeaponProjGfxMenu(parent.x + x + this.§_-cA§.x,parent.y + y + this.§_-cA§.y,this);
            _loc1_ = new Array();
            _loc3_;
            _loc2_ = 0;
            while(_loc2_ < SafeGlobal.projGfxUnlocked.length)
            {
               if(SafeGlobal.projGfxUnlocked[_loc2_] == true)
               {
                  _loc3_;
                  _loc3_;
                  _loc1_.push(_loc2_);
               }
               _loc2_++;
               _loc4_;
            }
            _loc3_;
            _loc3_;
            this.§_-RR§.init(_loc1_);
            parent.parent.addChild(this.§_-RR§);
            this.§_-Hu§ = true;
         }
         else
         {
            if(this.§_-RR§ != null)
            {
               _loc3_;
               parent.parent.removeChild(this.§_-RR§);
               _loc4_;
               this.§_-RR§ = null;
               _loc3_;
               _loc3_;
            }
            this.§_-Hu§ = false;
         }
      }
      
      private function §_-Kx§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(this.§_-RR§ != null)
         {
            _loc2_;
            _loc2_;
            parent.parent.removeChild(this.§_-RR§);
            _loc1_;
            this.§_-RR§ = null;
            _loc2_;
            _loc2_;
         }
         this.§_-Hu§ = false;
      }
      
      override public function toggleColourMenu(param1:int = -1) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!this.§_-5I§)
         {
            _loc2_;
            _loc2_;
            Global.custom_weapon_editor.hideAllMenus();
            this.§_-rK§ = x + this.§_-V2§.x;
            this.§_-ed§ = parent.y + y + this.§_-V2§.y;
            this.§_-Ux§ = new CustomWeaponColourMenu(this.§_-rK§,this.§_-ed§,this);
            _loc3_;
            _loc2_;
            this.§_-Ux§.init(SafeGlobal.cw_colours);
            parent.parent.addChild(this.§_-Ux§);
            this.§_-5I§ = true;
         }
         else
         {
            if(this.§_-Ux§ != null)
            {
               parent.parent.removeChild(this.§_-Ux§);
               this.§_-Ux§ = null;
            }
            this.§_-5I§ = false;
         }
      }
      
      private function §_-By§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(this.§_-Ux§ != null)
         {
            _loc2_;
            _loc2_;
            parent.parent.removeChild(this.§_-Ux§);
            _loc2_;
            this.§_-Ux§ = null;
            _loc2_;
         }
         this.§_-5I§ = false;
      }
      
      override public function hideAllMenus() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-Kx§();
         _loc2_;
         _loc2_;
         this.§_-By§();
      }
      
      public function selectColour(param1:int, param2:int = 0) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         this.colour_id = param1;
         _loc3_;
         _loc3_;
         this.§_-V2§.updateContent(param1);
         _loc3_;
         this.§_-cA§.§_-r7§(param1);
         _loc4_;
         _loc4_;
         this.§_-By§();
      }
      
      public function getColour(param1:int = 0) : int
      {
         return this.colour_id;
      }
      
      public function getWepGfx() : int
      {
         return this.item_id;
      }
      
      override public function selectMenuItem(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.item_id = param1;
         _loc3_;
         _loc3_;
         this.§_-cA§.updateContent(param1);
         _loc2_;
         this.§_-Kx§();
      }
      
      override public function getDataString() : String
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = "g,";
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc1_ = _loc1_ + String(this.item_id);
         _loc2_;
         _loc3_;
         _loc1_ = _loc1_ + ",";
         _loc3_;
         _loc3_;
         _loc3_;
         _loc1_ = _loc1_ + String(this.colour_id);
         return _loc1_;
      }
   }
}
