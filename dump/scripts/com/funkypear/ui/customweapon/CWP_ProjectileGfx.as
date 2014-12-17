package com.funkypear.ui.customweapon
{
   import §_-ZN§.CWMB_ProjectileGfx;
   import §_-ZN§.CWMB_Colour;
   
   public class CWP_ProjectileGfx extends CustomWeaponPanel
   {
      
      public function CWP_ProjectileGfx(param1:Number, param2:Number)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         super(param1,param2);
         _loc3_;
         panel_value = 0;
         _loc4_;
         _loc4_;
         panel_width = 97;
         _loc4_;
         _loc4_;
         this.selectMenuItem(this.item_id);
         _loc4_;
         this.selectColour(this.§_-Th§());
      }
      
      public var §_-lM§:CWMB_ProjectileGfx;
      
      public var §_-VW§:CWMB_Colour;
      
      private var §_-uF§:Boolean = false;
      
      private var §_-yw§:CustomWeaponProjGfxMenu;
      
      private var item_id:int = 0;
      
      private var §_-P7§:Boolean = false;
      
      private var §_-iP§:CustomWeaponColourMenu;
      
      private var colour_id:int = 0;
      
      private var §_-et§:Number;
      
      private var §_-VI§:Number;
      
      private function §_-Th§() : int
      {
         var _loc1_:int = Math.random() * (SafeGlobal.cw_colours.length - 1);
         return _loc1_;
      }
      
      override public function setDefault() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.selectMenuItem(0);
         _loc2_;
         this.selectColour(this.§_-Th§());
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
         _loc2_;
         this.selectMenuItem(param1);
      }
      
      public function §_-Bz§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.selectColour(param1);
      }
      
      public function §_-Rf§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Array = null;
         var _loc2_:* = 0;
         _loc3_;
         _loc3_;
         if(!this.§_-uF§)
         {
            _loc3_;
            _loc3_;
            Global.custom_weapon_editor.hideAllMenus();
            _loc3_;
            this.§_-yw§ = new CustomWeaponProjGfxMenu(parent.x + x + this.§_-lM§.x,parent.y + y + this.§_-lM§.y,this);
            _loc1_ = new Array();
            _loc4_;
            _loc2_ = 0;
            while(_loc2_ < SafeGlobal.projGfxUnlocked.length)
            {
               if(SafeGlobal.projGfxUnlocked[_loc2_] == true)
               {
                  _loc3_;
                  _loc1_.push(_loc2_);
                  _loc4_;
               }
               _loc2_++;
            }
            this.§_-yw§.init(_loc1_);
            _loc3_;
            _loc3_;
            parent.parent.addChild(this.§_-yw§);
            _loc4_;
            _loc4_;
            this.§_-uF§ = true;
         }
         else
         {
            if(this.§_-yw§ != null)
            {
               _loc4_;
               _loc4_;
               parent.parent.removeChild(this.§_-yw§);
               _loc4_;
               this.§_-yw§ = null;
               _loc4_;
               _loc4_;
            }
            this.§_-uF§ = false;
         }
      }
      
      private function §_-IS§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         if(this.§_-yw§ != null)
         {
            _loc2_;
            _loc2_;
            parent.parent.removeChild(this.§_-yw§);
            _loc2_;
            _loc2_;
            this.§_-yw§ = null;
            _loc2_;
         }
         this.§_-uF§ = false;
      }
      
      override public function toggleColourMenu(param1:int = -1) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!this.§_-P7§)
         {
            Global.custom_weapon_editor.hideAllMenus();
            _loc2_;
            _loc2_;
            this.§_-et§ = x + this.§_-VW§.x;
            this.§_-VI§ = parent.y + y + this.§_-VW§.y;
            this.§_-iP§ = new CustomWeaponColourMenu(this.§_-et§,this.§_-VI§,this);
            _loc2_;
            _loc2_;
            this.§_-iP§.init(SafeGlobal.cw_colours);
            parent.parent.addChild(this.§_-iP§);
            _loc2_;
            _loc2_;
            this.§_-P7§ = true;
         }
         else
         {
            if(this.§_-iP§ != null)
            {
               parent.parent.removeChild(this.§_-iP§);
               this.§_-iP§ = null;
            }
            this.§_-P7§ = false;
         }
      }
      
      private function §_-XU§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         if(this.§_-iP§ != null)
         {
            _loc1_;
            _loc1_;
            parent.parent.removeChild(this.§_-iP§);
            _loc2_;
            this.§_-iP§ = null;
            _loc1_;
            _loc1_;
         }
         this.§_-P7§ = false;
      }
      
      override public function hideAllMenus() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-IS§();
         _loc2_;
         _loc2_;
         this.§_-XU§();
      }
      
      public function selectColour(param1:int, param2:int = 0) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         this.colour_id = param1;
         _loc3_;
         this.§_-VW§.updateContent(param1);
         _loc3_;
         _loc3_;
         this.§_-lM§.§_-ma§(param1);
         _loc3_;
         this.§_-XU§();
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
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.item_id = param1;
         _loc2_;
         this.§_-lM§.updateContent(param1);
         _loc3_;
         _loc3_;
         this.§_-IS§();
      }
      
      override public function getDataString() : String
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = "g,";
         _loc3_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc1_ = _loc1_ + String(this.item_id);
         _loc3_;
         _loc2_;
         _loc2_;
         _loc1_ = _loc1_ + ",";
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_ = _loc1_ + String(this.colour_id);
         return _loc1_;
      }
   }
}
