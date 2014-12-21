package §_-nC§
{
   import flash.events.*;
   import flash.display.*;
   import adobe.utils.*;
   import flash.accessibility.*;
   import flash.desktop.*;
   import flash.errors.*;
   import flash.external.*;
   import flash.filters.*;
   import flash.geom.*;
   import flash.globalization.*;
   import flash.media.*;
   import flash.net.*;
   import flash.net.drm.*;
   import flash.printing.*;
   import flash.profiler.*;
   import flash.sampler.*;
   import flash.sensors.*;
   import flash.system.*;
   import flash.text.*;
   import flash.text.ime.*;
   import flash.text.engine.*;
   import flash.ui.*;
   import flash.utils.*;
   import flash.xml.*;
   
   public dynamic class §_-lE§ extends MovieClip
   {
      
      public function §_-lE§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
         _loc1_;
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      public var §_-CN§:MovieClip;
      
      public var playButton:MovieClip;
      
      public var §_-58§:Boolean;
      
      public var §_-Zr§:String;
      
      public var §_-RV§:Boolean;
      
      public function §_-ne§(param1:Event) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Number = 0;
         _loc4_;
         _loc4_;
         if(loaderInfo)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc2_ = loaderInfo.bytesLoaded / loaderInfo.bytesTotal;
         }
         if(this.§_-CN§)
         {
            _loc3_;
            this.§_-CN§.gotoAndStop(int(_loc2_ * (this.§_-CN§.totalFrames - 1)) + 1);
            _loc3_;
            _loc3_;
         }
         _loc4_;
         _loc3_;
         _loc3_;
         if(_loc2_ >= 1 && !(this.§_-RV§ == true))
         {
            removeEventListener(Event.ENTER_FRAME,this.§_-ne§);
            _loc3_;
            gotoAndStop("loaded");
         }
      }
      
      public function §_-Jx§(param1:MouseEvent) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:MovieClip = root as MovieClip;
         var _loc3_:MovieClip = parent as MovieClip;
         if(_loc2_)
         {
            _loc2_.play();
            _loc2_.nextFrame();
         }
         _loc5_;
         if((_loc3_) && (_loc3_["_onLoaded"]))
         {
            _loc6_;
            _loc3_["_onLoaded"]();
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
         _loc2_;
         addEventListener(Event.ENTER_FRAME,this.§_-ne§);
      }
      
      function frame10() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.playButton)
         {
            this.playButton.addEventListener(MouseEvent.CLICK,this.§_-Jx§);
            _loc1_;
            this.playButton.stop();
            this.playButton.buttonMode = true;
            _loc2_;
            _loc2_;
         }
         if(this.§_-58§)
         {
            this.§_-Jx§(null);
         }
      }
   }
}
