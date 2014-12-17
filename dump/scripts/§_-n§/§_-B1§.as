package §_-n§
{
   import adobe.utils.*;
   import flash.accessibility.*;
   import flash.desktop.*;
   import flash.display.*;
   import flash.errors.*;
   import flash.events.*;
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
   
   public dynamic class §_-B1§ extends §_-hm§
   {
      
      public function §_-B1§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         super();
         _loc2_;
         _loc2_;
         addFrameScript(0,this.frame1,1,this.frame2,9,this.frame10,19,this.frame20);
      }
      
      public var newgroundsButton:SimpleButton;
      
      public var playButton:MovieClip;
      
      public var adContainer:MovieClip;
      
      public function §_-US§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(this["playButton"])
         {
            _loc1_;
            _loc1_;
            this["playButton"].addEventListener(MouseEvent.CLICK,this.§_-RY§);
            _loc1_;
            if(!this["showPlayButton"])
            {
               _loc1_;
               this["playButton"].visible = false;
            }
         }
      }
      
      public function §_-RY§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         §_-fy§();
         _loc2_;
         _loc2_;
         if(parent)
         {
            _loc2_;
            _loc2_;
            parent.removeChild(this);
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         stop();
      }
      
      function frame2() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-US§();
      }
      
      function frame10() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-US§();
      }
      
      function frame20() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-US§();
      }
   }
}
