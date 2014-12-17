package com.funkypear.ui.customweapon
{
   import §_-ZN§.CWMB_WeaponGfx;
   import §_-ZN§.CWMB_Colour;
   
   public class CWP_WeaponGfx extends CustomWeaponPanel
   {
      
      public function CWP_WeaponGfx(param1:Number, param2:Number)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         super(param1,param2);
         _loc3_;
         _loc3_;
         panel_id = 1;
         _loc4_;
         panel_value = 0;
         panel_width = 94;
         this.§_-et§ = param1 + this.§_-VW§.x;
         _loc3_;
         _loc3_;
         this.§_-VI§ = param2 + this.§_-VW§.y;
         _loc4_;
         this.selectMenuItem(this.item_id);
         this.selectColour(this.§_-Th§());
      }
      
      public var §_-lM§:CWMB_WeaponGfx;
      
      public var §_-VW§:CWMB_Colour;
      
      private var §_-uF§:Boolean = false;
      
      private var §_-yw§:CustomWeaponWepGfxMenu;
      
      private var item_id:int = 0;
      
      private var §_-ou§:Number;
      
      private var §_-V6§:Number;
      
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
         _loc1_;
         this.selectColour(this.§_-Th§());
      }
      
      override public function getPointsUsed() : int
      {
         var _loc1_:int = panel_value;
         return _loc1_;
      }
      
      public function §_-Bz§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.selectColour(param1);
      }
      
      public function §_-Rf§() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Array = null;
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         if(!this.§_-uF§)
         {
            _loc4_;
            Global.custom_weapon_editor.hideAllMenus();
            _loc3_;
            _loc3_;
            this.§_-yw§ = new CustomWeaponWepGfxMenu(x + this.§_-lM§.x,y + this.§_-lM§.y,this);
            _loc1_ = new Array();
            _loc3_;
            _loc3_;
            _loc2_ = 0;
            while(_loc2_ < SafeGlobal.wepGfxUnlocked.length)
            {
               if(SafeGlobal.wepGfxUnlocked[_loc2_] == true)
               {
                  _loc1_.push(_loc2_);
               }
               _loc2_++;
               _loc4_;
               _loc4_;
            }
            _loc3_;
            _loc3_;
            this.§_-yw§.init(_loc1_);
            _loc3_;
            _loc3_;
            parent.parent.addChild(this.§_-yw§);
            _loc3_;
            this.§_-uF§ = true;
         }
         else
         {
            if(this.§_-yw§ != null)
            {
               _loc3_;
               _loc3_;
               parent.parent.removeChild(this.§_-yw§);
               _loc4_;
               this.§_-yw§ = null;
               _loc3_;
               _loc3_;
            }
            this.§_-uF§ = false;
         }
      }
      
      private function §_-IS§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         if(this.§_-yw§ != null)
         {
            _loc2_;
            parent.parent.removeChild(this.§_-yw§);
            _loc1_;
            this.§_-yw§ = null;
            _loc2_;
            _loc2_;
         }
         this.§_-uF§ = false;
      }
      
      override public function toggleColourMenu(param1:int = -1) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(!this.§_-P7§)
         {
            Global.custom_weapon_editor.hideAllMenus();
            _loc3_;
            this.§_-iP§ = new CustomWeaponColourMenu(this.§_-et§,this.§_-VI§,this);
            _loc3_;
            _loc2_;
            this.§_-iP§.init(SafeGlobal.cw_colours);
            _loc3_;
            parent.parent.addChild(this.§_-iP§);
            this.§_-P7§ = true;
            _loc3_;
         }
         else
         {
            if(this.§_-iP§ != null)
            {
               parent.parent.removeChild(this.§_-iP§);
               _loc2_;
               this.§_-iP§ = null;
               _loc2_;
               _loc2_;
            }
            this.§_-P7§ = false;
         }
      }
      
      private function §_-XU§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(this.§_-iP§ != null)
         {
            _loc2_;
            parent.parent.removeChild(this.§_-iP§);
            _loc1_;
            this.§_-iP§ = null;
            _loc1_;
            _loc1_;
         }
         this.§_-P7§ = false;
      }
      
      override public function hideAllMenus() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-IS§();
         _loc1_;
         this.§_-XU§();
      }
      
      public function selectColour(param1:int, param2:int = 0) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         this.colour_id = param1;
         _loc4_;
         this.§_-VW§.updateContent(param1);
         _loc4_;
         this.§_-lM§.§_-ma§(param1);
         _loc4_;
         _loc4_;
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
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_ = _loc1_ + String(this.item_id);
         _loc3_;
         _loc2_;
         _loc1_ = _loc1_ + ",";
         _loc2_;
         _loc3_;
         _loc3_;
         _loc1_ = _loc1_ + String(this.colour_id);
         return _loc1_;
      }
   }
}
