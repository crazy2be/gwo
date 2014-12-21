package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.events.MouseEvent;
   
   public class DropDownMenuLarger extends Sprite
   {
      
      public function DropDownMenuLarger()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         super();
      }
      
      public var bg:MovieClip;
      
      public var §_-9L§:MovieClip;
      
      public var §_-Z§:TextField;
      
      protected var §get §:Array;
      
      protected var §_-EX§:Array;
      
      protected var §_-PN§:int = 0;
      
      protected var §_-hE§:Sprite;
      
      protected var §_-Yf§;
      
      public function init(param1:Array, param2:*) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc5_;
         _loc5_;
         this.§get § = param1;
         _loc6_;
         _loc6_;
         this.§_-hE§ = new Sprite();
         _loc5_;
         this.§_-hE§.x = 2;
         _loc6_;
         _loc6_;
         this.§_-hE§.y = 26.5;
         _loc6_;
         _loc6_;
         this.§_-Yf§ = param2;
         var _loc3_:Number = 0;
         _loc6_;
         this.§_-EX§ = new Array();
         var _loc4_:* = 0;
         while(_loc4_ < this.§get §.length)
         {
            _loc6_;
            _loc6_;
            this.§_-EX§.push(new §_-3R§(_loc4_,this.§get §[_loc4_],this));
            this.§_-EX§[this.§_-EX§.length - 1].y = _loc3_;
            _loc6_;
            _loc6_;
            this.§_-hE§.addChild(this.§_-EX§[this.§_-EX§.length - 1]);
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc3_ = _loc3_ + 29;
            _loc4_++;
            _loc6_;
            _loc6_;
         }
         addChild(this.§_-hE§);
         this.§_-hE§.visible = false;
         this.§_-ww§(0);
         this.§_-9L§.mouseEnabled = true;
         _loc6_;
         _loc6_;
         this.§_-9L§.mouseChildren = false;
         _loc6_;
         _loc6_;
         this.§_-9L§.buttonMode = true;
         this.§_-9L§.addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         this.§_-9L§.addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         _loc5_;
         this.§_-9L§.addEventListener(MouseEvent.CLICK,this.§_-jm§,false,0,true);
         this.bg.gotoAndStop("up");
      }
      
      private function doRollOver(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.bg.gotoAndStop("over");
      }
      
      private function doRollOut(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.bg.gotoAndStop("up");
      }
      
      private function §_-jm§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.§_-q-§();
         this.bg.gotoAndStop("up");
         _loc3_;
         this.§_-hE§.visible = true;
         this.§_-hE§.mouseEnabled = true;
         _loc3_;
         this.§_-9L§.removeEventListener(MouseEvent.CLICK,this.§_-jm§);
         this.§_-9L§.addEventListener(MouseEvent.CLICK,this.§_-Jo§,false,0,true);
      }
      
      private function §_-Jo§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-ww§(this.§_-PN§);
      }
      
      public function §_-q-§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         while(_loc1_ < this.§_-EX§.length)
         {
            _loc3_;
            _loc3_;
            if(_loc1_ == this.§_-PN§)
            {
               _loc3_;
               _loc3_;
               _loc2_;
               this.§_-EX§[_loc1_].doSelect(true);
               _loc2_;
            }
            else
            {
               this.§_-EX§[_loc1_].doSelect(false);
               _loc3_;
            }
            _loc1_++;
            _loc3_;
            _loc3_;
         }
      }
      
      public function §_-l1§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         while(_loc1_ < this.§_-EX§.length)
         {
            this.§_-EX§[_loc1_].doSelect(false);
            _loc2_;
            _loc1_++;
            _loc2_;
            _loc2_;
         }
      }
      
      public function §_-ww§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.§_-PN§ = param1;
         this.§_-Z§.text = this.§get §[param1];
         this.§_-hE§.visible = false;
         this.§_-hE§.mouseEnabled = false;
         this.§_-q-§();
         this.§_-9L§.removeEventListener(MouseEvent.CLICK,this.§_-Jo§);
         _loc2_;
         this.§_-9L§.addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         this.§_-9L§.addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         this.§_-9L§.addEventListener(MouseEvent.CLICK,this.§_-jm§,false,0,true);
         this.§_-Yf§.handleClickDropDown(name,param1);
      }
      
      public function §_-6S§() : int
      {
         return this.§_-PN§;
      }
   }
}
