package §_-n§
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
   
   public dynamic class §_-8§ extends MovieClip
   {
      
      public function §_-8§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      public var §_-Yp§:MovieClip;
      
      public var playButton:MovieClip;
      
      public var §_-Ip§:Boolean;
      
      public var §_-3M§:String;
      
      public var §_-3y§:Boolean;
      
      public function §_-pQ§(param1:Event) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Number = 0;
         if(loaderInfo)
         {
            _loc4_;
            _loc3_;
            _loc2_ = loaderInfo.bytesLoaded / loaderInfo.bytesTotal;
            _loc3_;
            _loc3_;
         }
         if(this.§_-Yp§)
         {
            this.§_-Yp§.gotoAndStop(int(_loc2_ * (this.§_-Yp§.totalFrames - 1)) + 1);
         }
         _loc3_;
         _loc3_;
         _loc3_;
         if(_loc2_ >= 1 && !(this.§_-3y§ == true))
         {
            removeEventListener(Event.ENTER_FRAME,this.§_-pQ§);
            gotoAndStop("loaded");
         }
      }
      
      public function §_-kO§(param1:MouseEvent) : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc2_:MovieClip = root as MovieClip;
         var _loc3_:MovieClip = parent as MovieClip;
         if(_loc2_)
         {
            _loc5_;
            _loc5_;
            _loc2_.play();
            _loc2_.nextFrame();
         }
         _loc6_;
         _loc6_;
         if((_loc3_) && (_loc3_["_onLoaded"]))
         {
            _loc6_;
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
         _loc1_;
         addEventListener(Event.ENTER_FRAME,this.§_-pQ§);
      }
      
      function frame10() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(this.playButton)
         {
            this.playButton.addEventListener(MouseEvent.CLICK,this.§_-kO§);
            this.playButton.stop();
            _loc2_;
            _loc2_;
            this.playButton.buttonMode = true;
            _loc1_;
            _loc1_;
         }
         if(this.§_-Ip§)
         {
            this.§_-kO§(null);
         }
      }
   }
}
