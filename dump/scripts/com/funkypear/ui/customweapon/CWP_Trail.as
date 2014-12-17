package com.funkypear.ui.customweapon
{
   import §_-ZN§.CWMB_Trail;
   import §_-ZN§.CWMB_Colour;
   import flash.events.MouseEvent;
   
   public class CWP_Trail extends CustomWeaponPanel
   {
      
      public function CWP_Trail(param1:Number, param2:Number)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         this.§_-k9§ = [0,0];
         super(param1,param2);
         _loc3_;
         panel_value = 0;
         panel_width = 97;
         this.§_-Bo§ = new Array();
         _loc3_;
         _loc3_;
         this.§_-Bo§.push(this.§_-VW§);
         _loc4_;
         _loc4_;
         this.§_-Bo§.push(this.colour_button2);
         this.§_-VW§.§_-JR§(0);
         _loc3_;
         _loc3_;
         this.colour_button2.§_-JR§(1);
         this.selectMenuItem(this.item_id);
         this.selectColour(this.§_-Th§(),0);
         this.selectColour(this.§_-Th§(),1);
      }
      
      public var §_-pl§:CWMB_Trail;
      
      public var colour_button2:CWMB_Colour;
      
      public var §_-VW§:CWMB_Colour;
      
      private var §_-I1§:Boolean = false;
      
      private var §_-YX§:CustomWeaponTrailMenu;
      
      private var item_id:int = 0;
      
      private var §_-P7§:Boolean = false;
      
      private var §_-iP§:CustomWeaponColourMenu;
      
      private var §_-et§:Number;
      
      private var §_-VI§:Number;
      
      private var §_-Bo§:Array;
      
      private var §_-k9§:Array;
      
      private var total_colours:int = 0;
      
      private function §_-Th§() : int
      {
         var _loc1_:int = Math.random() * (SafeGlobal.cw_colours.length - 1);
         return _loc1_;
      }
      
      override public function setDefault() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.selectColour(this.§_-Th§(),0);
         _loc2_;
         _loc2_;
         this.selectColour(this.§_-Th§(),1);
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
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.selectMenuItem(param1);
      }
      
      public function §_-Bz§(param1:String) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Array = null;
         var _loc3_:* = 0;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(param1 != "")
         {
            _loc2_ = param1.split(",");
            _loc4_;
            _loc3_ = 0;
            while(_loc3_ < _loc2_.length)
            {
               this.selectColour(_loc2_[_loc3_],_loc3_);
               _loc5_;
               _loc3_++;
               _loc5_;
               _loc5_;
            }
         }
      }
      
      private function §_-F1§(param1:MouseEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         while(true)
         {
            if(_loc3_ >= this.§_-Bo§.length)
            {
               _loc4_;
               _loc4_;
               break;
            }
            if(this.§_-Bo§[_loc3_] == param1.currentTarget)
            {
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               _loc2_ = _loc3_;
               _loc5_;
               _loc5_;
               break;
            }
            _loc3_++;
            _loc5_;
            _loc5_;
         }
         this.toggleColourMenu(_loc2_);
      }
      
      override public function toggleItemMenu() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Array = null;
         var _loc2_:* = 0;
         _loc3_;
         if(!this.§_-I1§)
         {
            _loc4_;
            _loc4_;
            Global.custom_weapon_editor.hideAllMenus();
            _loc4_;
            this.§_-YX§ = new CustomWeaponTrailMenu(parent.x + x + this.§_-pl§.x,parent.y + y + this.§_-pl§.y,this);
            _loc1_ = new Array();
            _loc3_;
            _loc3_;
            _loc2_ = 0;
            while(_loc2_ < SafeGlobal.projTrailUnlocked.length)
            {
               if(SafeGlobal.projTrailUnlocked[_loc2_] == true)
               {
                  _loc4_;
                  _loc1_.push(_loc2_);
               }
               _loc2_++;
               _loc3_;
               _loc3_;
            }
            this.§_-YX§.init(_loc1_);
            parent.parent.addChild(this.§_-YX§);
            _loc3_;
            _loc3_;
            this.§_-I1§ = true;
         }
         else
         {
            if(this.§_-YX§ != null)
            {
               _loc4_;
               _loc4_;
               parent.parent.removeChild(this.§_-YX§);
               _loc3_;
               this.§_-YX§ = null;
               _loc3_;
            }
            this.§_-I1§ = false;
         }
      }
      
      override public function hideItemMenu() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         if(this.§_-YX§ != null)
         {
            _loc1_;
            _loc1_;
            parent.parent.removeChild(this.§_-YX§);
            _loc1_;
            _loc1_;
            this.§_-YX§ = null;
            _loc2_;
         }
         this.§_-I1§ = false;
      }
      
      override public function toggleColourMenu(param1:int = -1) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = false;
         _loc4_;
         _loc4_;
         if(!this.§_-P7§)
         {
            _loc4_;
            Global.custom_weapon_editor.hideAllMenus();
            this.§_-et§ = x + this.§_-Bo§[param1].x;
            _loc3_;
            _loc3_;
            this.§_-VI§ = parent.y + y + this.§_-Bo§[param1].y;
            this.§_-iP§ = new CustomWeaponColourMenu(this.§_-et§,this.§_-VI§,this);
            _loc4_;
            _loc4_;
            this.§_-iP§.§_-8H§(param1);
            _loc4_;
            _loc4_;
            this.§_-iP§.init(SafeGlobal.cw_trail_colours);
            parent.parent.addChild(this.§_-iP§);
            _loc4_;
            _loc4_;
            this.§_-P7§ = true;
         }
         else
         {
            _loc3_;
            _loc2_ = false;
            _loc4_;
            _loc4_;
            if(this.§_-iP§ != null)
            {
               if(this.§_-iP§.§_-QH§() != param1)
               {
                  _loc3_;
                  _loc4_;
                  _loc4_;
                  _loc2_ = true;
               }
               parent.parent.removeChild(this.§_-iP§);
               _loc3_;
               this.§_-iP§ = null;
               _loc3_;
            }
            this.§_-P7§ = false;
            _loc4_;
            if(_loc2_)
            {
               _loc3_;
               this.toggleColourMenu(param1);
            }
         }
      }
      
      private function §_-XU§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(this.§_-iP§ != null)
         {
            _loc2_;
            parent.parent.removeChild(this.§_-iP§);
            _loc1_;
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
         _loc1_;
         this.hideItemMenu();
         _loc2_;
         _loc2_;
         this.§_-XU§();
      }
      
      public function selectColour(param1:int, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-k9§[param2] = param1;
         _loc4_;
         _loc4_;
         this.§_-Bo§[param2].updateContent(param1);
         _loc4_;
         this.§_-pl§.§_-ma§(param1,param2);
         _loc3_;
         this.§_-XU§();
      }
      
      public function getColour(param1:int = 0) : int
      {
         return this.§_-k9§[param1];
      }
      
      public function getColours() : Array
      {
         return this.§_-k9§;
      }
      
      public function getTrailId() : int
      {
         return this.item_id;
      }
      
      override public function selectMenuItem(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.item_id = param1;
         _loc2_;
         _loc2_;
         this.§_-pl§.updateContent(param1);
         _loc2_;
         this.hideItemMenu();
         _loc3_;
         _loc3_;
         this.total_colours = Global.cw_trail_colour_count[this.item_id];
         _loc3_;
         _loc3_;
         this.§_-bw§();
      }
      
      private function §_-bw§() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = 0;
         var _loc2_:* = 0;
         _loc4_;
         _loc4_;
         _loc4_;
         if(this.total_colours == 0)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-Bo§[0].visible = false;
            _loc4_;
            this.§_-Bo§[1].visible = false;
            _loc4_;
            _loc4_;
         }
         else
         {
            _loc4_;
            _loc1_ = 0;
            _loc4_;
            _loc4_;
            _loc2_ = 0;
            while(_loc2_ < this.§_-Bo§.length)
            {
               _loc1_++;
               _loc3_;
               _loc3_;
               _loc3_;
               if(_loc1_ <= this.total_colours)
               {
                  _loc3_;
                  _loc4_;
                  _loc4_;
                  _loc3_;
                  _loc3_;
                  this.§_-Bo§[_loc2_].visible = true;
                  _loc4_;
                  _loc4_;
               }
               else
               {
                  this.§_-Bo§[_loc2_].visible = false;
                  _loc3_;
                  _loc3_;
               }
               _loc2_++;
               _loc3_;
            }
         }
      }
      
      override public function getDataString() : String
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         var _loc1_:* = "e,";
         _loc4_;
         _loc3_;
         _loc1_ = _loc1_ + String(this.item_id);
         _loc4_;
         _loc4_;
         _loc3_;
         if(this.total_colours > 0)
         {
            _loc4_;
            _loc2_ = 0;
            while(_loc2_ < this.total_colours)
            {
               _loc3_;
               _loc3_;
               _loc1_ = _loc1_ + ",";
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc1_ = _loc1_ + String(this.§_-k9§[_loc2_]);
               _loc4_;
               _loc4_;
               _loc2_++;
               _loc4_;
            }
         }
         return _loc1_;
      }
   }
}
