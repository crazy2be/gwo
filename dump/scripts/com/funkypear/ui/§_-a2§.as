package com.funkypear.ui
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.events.MouseEvent;
   import flash.text.TextFormat;
   
   public class §_-a2§ extends MovieClip
   {
      
      public function §_-a2§()
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         super();
         _loc3_;
         _loc3_;
         addFrameScript(0,this.frame1,1,this.frame2,322,this.frame323,323,this.frame324);
         _loc2_;
         _loc2_;
         x = 1;
         _loc2_;
         y = 86;
         var _loc1_:TextFormat = new TextFormat();
         _loc3_;
         _loc1_.letterSpacing = -1;
         _loc2_;
         this.§_-kw§.defaultTextFormat = _loc1_;
         _loc2_;
         _loc2_;
         this.§_-kw§.mouseEnabled = false;
         _loc2_;
         _loc2_;
         this.hideContent();
         _loc3_;
         _loc3_;
         stop();
      }
      
      public var §_-HC§:MovieClip;
      
      public var §_-kw§:TextField;
      
      public var §_-W7§:MovieClip;
      
      private var §_-cw§:Boolean = false;
      
      private var over:Boolean = false;
      
      private var done_init:Boolean = false;
      
      public function §_-Ll§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-W7§.visible = true;
         _loc1_;
         _loc1_;
         this.§_-HC§.visible = true;
         _loc2_;
         this.§_-kw§.visible = true;
      }
      
      public function hideContent() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-W7§.visible = false;
         _loc2_;
         this.§_-HC§.visible = false;
         _loc1_;
         _loc1_;
         this.§_-kw§.visible = false;
      }
      
      public function tweenIntoGame() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         gotoAndPlay("out");
      }
      
      public function init() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(!this.done_init)
         {
            this.§_-W7§.mouseEnabled = true;
            this.§_-W7§.mouseChildren = false;
            _loc1_;
            _loc1_;
            this.§_-W7§.buttonMode = true;
            _loc1_;
            this.§_-W7§.addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
            this.§_-W7§.addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
            this.§_-W7§.addEventListener(MouseEvent.CLICK,this.§_-lu§,false,0,true);
            this.§_-7r§();
            gotoAndPlay("in");
            this.done_init = true;
         }
      }
      
      public function §_-Eh§(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-kw§.text = String("PLAYERS VOTED " + param1);
      }
      
      public function §_-7r§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(this.§_-cw§)
         {
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            if(this.over)
            {
               this.§_-W7§.gotoAndStop("selected_over");
               _loc2_;
               _loc2_;
            }
            else
            {
               this.§_-W7§.gotoAndStop("selected_up");
            }
         }
         else if(this.over)
         {
            _loc2_;
            this.§_-W7§.gotoAndStop("off_over");
            _loc1_;
            _loc1_;
         }
         else
         {
            this.§_-W7§.gotoAndStop("off_up");
         }
         
      }
      
      public function doRollOver(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.over = true;
         _loc2_;
         _loc2_;
         this.§_-7r§();
      }
      
      public function doRollOut(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.over = false;
         _loc2_;
         this.§_-7r§();
      }
      
      public function §_-lu§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(this.§_-cw§)
         {
            _loc3_;
            this.§_-cw§ = false;
            _loc2_;
            _loc2_;
         }
         else
         {
            this.§_-cw§ = true;
            _loc3_;
            _loc3_;
         }
         this.§_-7r§();
         _loc3_;
         Global.lobby_client.§_-YA§(this.§_-cw§);
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.hideContent();
         _loc2_;
         _loc2_;
         stop();
      }
      
      function frame2() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         stop();
      }
      
      function frame323() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Ll§();
         _loc2_;
         stop();
      }
      
      function frame324() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.hideContent();
      }
   }
}
