package com.funkypear.ui.customweapon
{
   import §_-bY§.CWMB_Trail;
   import §_-bY§.CWMB_Colour;
   import flash.events.MouseEvent;
   
   public class CWP_Trail extends CustomWeaponPanel
   {
      
      public function CWP_Trail(param1:Number, param2:Number)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.§_-pZ§ = [0,0];
         super(param1,param2);
         _loc4_;
         _loc4_;
         panel_value = 0;
         panel_width = 97;
         _loc3_;
         this.§_-kE§ = new Array();
         _loc4_;
         this.§_-kE§.push(this.§_-V2§);
         this.§_-kE§.push(this.colour_button2);
         this.§_-V2§.§_-5B§(0);
         _loc3_;
         this.colour_button2.§_-5B§(1);
         this.selectMenuItem(this.item_id);
         this.selectColour(this.§_-U2§(),0);
         this.selectColour(this.§_-U2§(),1);
      }
      
      public var §_-SC§:CWMB_Trail;
      
      public var colour_button2:CWMB_Colour;
      
      public var §_-V2§:CWMB_Colour;
      
      private var §_-AA§:Boolean = false;
      
      private var §_-3X§:CustomWeaponTrailMenu;
      
      private var item_id:int = 0;
      
      private var §_-5I§:Boolean = false;
      
      private var §_-Ux§:CustomWeaponColourMenu;
      
      private var §_-rK§:Number;
      
      private var §_-ed§:Number;
      
      private var §_-kE§:Array;
      
      private var §_-pZ§:Array;
      
      private var total_colours:int = 0;
      
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
         _loc2_;
         this.selectColour(this.§_-U2§(),0);
         _loc2_;
         this.selectColour(this.§_-U2§(),1);
         _loc1_;
         this.selectMenuItem(0);
      }
      
      override public function getPointsUsed() : int
      {
         var _loc1_:* = 0;
         return _loc1_;
      }
      
      override public function getNextItemCost(param1:int = 0) : int
      {
         return 0;
      }
      
      override public function setInitialValue(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.selectMenuItem(param1);
      }
      
      public function §_-Lq§(param1:String) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc5_;
         if(param1 != "")
         {
            _loc2_ = param1.split(",");
            _loc5_;
            _loc5_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.selectColour(_loc2_[_loc3_],_loc3_);
               _loc4_;
               _loc4_;
               _loc3_++;
               _loc4_;
               _loc4_;
            }
         }
      }
      
      private function §_-lR§(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         while(true)
         {
            if(_loc3_ >= this.§_-kE§.length)
            {
               _loc5_;
               break;
            }
            if(this.§_-kE§[_loc3_] == param1.currentTarget)
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc5_;
               _loc2_ = _loc3_;
               _loc4_;
               break;
            }
            _loc3_++;
            _loc4_;
         }
         this.toggleColourMenu(_loc2_);
      }
      
      override public function toggleItemMenu() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Array = null;
         var _loc2_:* = 0;
         _loc3_;
         if(!this.§_-AA§)
         {
            _loc4_;
            Global.custom_weapon_editor.hideAllMenus();
            _loc3_;
            this.§_-3X§ = new CustomWeaponTrailMenu(parent.x + x + this.§_-SC§.x,parent.y + y + this.§_-SC§.y,this);
            _loc1_ = new Array();
            _loc4_;
            _loc4_;
            _loc2_ = 0;
            while(_loc2_ < SafeGlobal.projTrailUnlocked.length)
            {
               if(SafeGlobal.projTrailUnlocked[_loc2_] == true)
               {
                  _loc1_.push(_loc2_);
               }
               _loc2_++;
            }
            _loc4_;
            _loc4_;
            this.§_-3X§.init(_loc1_);
            parent.parent.addChild(this.§_-3X§);
            this.§_-AA§ = true;
         }
         else
         {
            if(this.§_-3X§ != null)
            {
               _loc3_;
               _loc3_;
               parent.parent.removeChild(this.§_-3X§);
               _loc3_;
               _loc3_;
               this.§_-3X§ = null;
               _loc3_;
            }
            this.§_-AA§ = false;
         }
      }
      
      override public function hideItemMenu() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(this.§_-3X§ != null)
         {
            _loc1_;
            parent.parent.removeChild(this.§_-3X§);
            _loc1_;
            _loc1_;
            this.§_-3X§ = null;
            _loc2_;
            _loc2_;
         }
         this.§_-AA§ = false;
      }
      
      override public function toggleColourMenu(param1:int = -1) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = false;
         _loc4_;
         _loc4_;
         if(!this.§_-5I§)
         {
            Global.custom_weapon_editor.hideAllMenus();
            this.§_-rK§ = x + this.§_-kE§[param1].x;
            this.§_-ed§ = parent.y + y + this.§_-kE§[param1].y;
            _loc3_;
            this.§_-Ux§ = new CustomWeaponColourMenu(this.§_-rK§,this.§_-ed§,this);
            _loc3_;
            this.§_-Ux§.§_-8E§(param1);
            _loc3_;
            _loc3_;
            _loc3_;
            this.§_-Ux§.init(SafeGlobal.cw_trail_colours);
            _loc3_;
            _loc3_;
            parent.parent.addChild(this.§_-Ux§);
            _loc4_;
            this.§_-5I§ = true;
         }
         else
         {
            _loc4_;
            _loc2_ = false;
            _loc3_;
            _loc4_;
            _loc4_;
            if(this.§_-Ux§ != null)
            {
               if(this.§_-Ux§.§_-JB§() != param1)
               {
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  _loc2_ = true;
                  _loc3_;
                  _loc3_;
               }
               parent.parent.removeChild(this.§_-Ux§);
               _loc4_;
               _loc4_;
               this.§_-Ux§ = null;
               _loc3_;
               _loc3_;
            }
            this.§_-5I§ = false;
            if(_loc2_)
            {
               _loc3_;
               _loc3_;
               this.toggleColourMenu(param1);
            }
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
            parent.parent.removeChild(this.§_-Ux§);
            _loc2_;
            _loc2_;
            this.§_-Ux§ = null;
            _loc1_;
         }
         this.§_-5I§ = false;
      }
      
      override public function hideAllMenus() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.hideItemMenu();
         _loc1_;
         this.§_-By§();
      }
      
      public function selectColour(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc3_;
         this.§_-pZ§[param2] = param1;
         _loc3_;
         _loc3_;
         this.§_-kE§[param2].updateContent(param1);
         _loc3_;
         this.§_-SC§.§_-r7§(param1,param2);
         _loc4_;
         this.§_-By§();
      }
      
      public function getColour(param1:int = 0) : int
      {
         return this.§_-pZ§[param1];
      }
      
      public function getColours() : Array
      {
         return this.§_-pZ§;
      }
      
      public function getTrailId() : int
      {
         return this.item_id;
      }
      
      override public function selectMenuItem(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.item_id = param1;
         _loc2_;
         _loc2_;
         this.§_-SC§.updateContent(param1);
         _loc2_;
         _loc2_;
         this.hideItemMenu();
         _loc3_;
         this.total_colours = Global.cw_trail_colour_count[this.item_id];
         _loc2_;
         _loc2_;
         this.§_-da§();
      }
      
      private function §_-da§() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(this.total_colours == 0)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            this.§_-kE§[0].visible = false;
            _loc3_;
            this.§_-kE§[1].visible = false;
            _loc4_;
         }
         else
         {
            _loc4_;
            _loc1_ = 0;
            _loc3_;
            _loc2_ = 0;
            while(_loc2_ < this.§_-kE§.length)
            {
               _loc1_++;
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               if(_loc1_ <= this.total_colours)
               {
                  _loc3_;
                  _loc4_;
                  _loc4_;
                  _loc3_;
                  this.§_-kE§[_loc2_].visible = true;
                  _loc3_;
               }
               else
               {
                  this.§_-kE§[_loc2_].visible = false;
                  _loc3_;
               }
               _loc2_++;
               _loc4_;
               _loc4_;
            }
         }
      }
      
      override public function getDataString() : String
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         var _loc1_:* = "e,";
         _loc4_;
         _loc4_;
         _loc3_;
         _loc1_ = _loc1_ + String(this.item_id);
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         if(this.total_colours > 0)
         {
            _loc3_;
            _loc3_;
            _loc2_ = 0;
            while(_loc2_ < this.total_colours)
            {
               _loc4_;
               _loc1_ = _loc1_ + ",";
               _loc3_;
               _loc3_;
               _loc4_;
               _loc4_;
               _loc1_ = _loc1_ + String(this.§_-pZ§[_loc2_]);
               _loc3_;
               _loc2_++;
               _loc3_;
               _loc3_;
            }
         }
         return _loc1_;
      }
   }
}
