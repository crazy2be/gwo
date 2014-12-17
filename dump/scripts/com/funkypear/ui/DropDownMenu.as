package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.events.MouseEvent;
   
   public class DropDownMenu extends Sprite
   {
      
      public function DropDownMenu()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
      }
      
      public var bg:MovieClip;
      
      public var §_-4d§:MovieClip;
      
      public var §_-UB§:TextField;
      
      protected var §_-0-§:Array;
      
      protected var §_-rn§:Array;
      
      protected var §_-2p§:int = 0;
      
      protected var §_-Jm§:Sprite;
      
      protected var §_-1x§;
      
      public function init(param1:Array, param2:*) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc5_;
         _loc5_;
         this.§_-0-§ = param1;
         _loc5_;
         this.§_-Jm§ = new Sprite();
         _loc5_;
         this.§_-Jm§.x = 2;
         _loc6_;
         this.§_-Jm§.y = 26.5;
         _loc6_;
         this.§_-1x§ = param2;
         var _loc3_:Number = 0;
         _loc6_;
         _loc6_;
         this.§_-rn§ = new Array();
         var _loc4_:* = 0;
         while(_loc4_ < this.§_-0-§.length)
         {
            _loc5_;
            _loc5_;
            this.§_-rn§.push(new §_-SF§(_loc4_,this.§_-0-§[_loc4_],this));
            this.§_-rn§[this.§_-rn§.length - 1].y = _loc3_;
            this.§_-Jm§.addChild(this.§_-rn§[this.§_-rn§.length - 1]);
            _loc5_;
            _loc5_;
            _loc6_;
            _loc3_ = _loc3_ + 29;
            _loc4_++;
         }
         _loc5_;
         addChild(this.§_-Jm§);
         this.§_-Jm§.visible = false;
         this.§_-mt§(0);
         _loc5_;
         this.§_-4d§.mouseEnabled = true;
         this.§_-4d§.mouseChildren = false;
         _loc5_;
         this.§_-4d§.buttonMode = true;
         _loc5_;
         this.§_-4d§.addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         _loc5_;
         this.§_-4d§.addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         this.§_-4d§.addEventListener(MouseEvent.CLICK,this.§_-h6§,false,0,true);
         this.bg.gotoAndStop("up");
      }
      
      private function doRollOver(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.bg.gotoAndStop("over");
      }
      
      private function doRollOut(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.bg.gotoAndStop("up");
      }
      
      private function §_-h6§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.§_-wU§();
         this.bg.gotoAndStop("up");
         this.§_-Jm§.visible = true;
         this.§_-Jm§.mouseEnabled = true;
         this.§_-4d§.removeEventListener(MouseEvent.CLICK,this.§_-h6§);
         _loc3_;
         _loc3_;
         this.§_-4d§.addEventListener(MouseEvent.CLICK,this.§_-ph§,false,0,true);
      }
      
      private function §_-ph§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-mt§(this.§_-2p§);
      }
      
      public function §_-wU§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         while(_loc1_ < this.§_-rn§.length)
         {
            _loc3_;
            _loc3_;
            if(_loc1_ == this.§_-2p§)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc2_;
               _loc2_;
               this.§_-rn§[_loc1_].doSelect(true);
               _loc3_;
            }
            else
            {
               this.§_-rn§[_loc1_].doSelect(false);
               _loc2_;
               _loc2_;
            }
            _loc1_++;
            _loc2_;
         }
      }
      
      public function §_-PQ§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         while(_loc1_ < this.§_-rn§.length)
         {
            this.§_-rn§[_loc1_].doSelect(false);
            _loc2_;
            _loc1_++;
            _loc3_;
            _loc3_;
         }
      }
      
      public function §_-mt§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-2p§ = param1;
         this.§_-UB§.text = this.§_-0-§[param1];
         _loc2_;
         this.§_-Jm§.visible = false;
         this.§_-Jm§.mouseEnabled = false;
         _loc3_;
         _loc3_;
         this.§_-wU§();
         this.§_-4d§.removeEventListener(MouseEvent.CLICK,this.§_-ph§);
         _loc3_;
         this.§_-4d§.addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         this.§_-4d§.addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         this.§_-4d§.addEventListener(MouseEvent.CLICK,this.§_-h6§,false,0,true);
         this.§_-1x§.handleClickDropDown(name,param1);
      }
      
      public function §_-Ro§() : int
      {
         return this.§_-2p§;
      }
   }
}
