package GraviteeWars_fla
{
   import com.funkypear.ui.StarMap;
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
   
   public dynamic class §_-20§ extends MovieClip
   {
      
      public function §_-20§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         super();
         _loc1_;
         addFrameScript(1,this.frame2,9,this.frame10);
      }
      
      public var §_-Pf§:MovieClip;
      
      public var preloader:MovieClip;
      
      public var §_-x0§:ContextMenu;
      
      public var §_-vq§:Boolean;
      
      public var §_-kK§:Boolean;
      
      public var pause_count:int;
      
      public var starMap:StarMap;
      
      public var §_-rk§:Number;
      
      public function §_-zv§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-Pf§.addChild(this.starMap);
         _loc2_;
         _loc2_;
         this.bringToFront(this.preloader);
         _loc2_;
         _loc2_;
         this.preloader.version_text.text = TimelineGlobal.version_number;
         _loc2_;
         _loc2_;
         this.§_-rk§ = 800;
         _loc1_;
         addEventListener(Event.ENTER_FRAME,this.§_-c8§,false,0,true);
      }
      
      public function bringToFront(param1:DisplayObject) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         setChildIndex(param1,numChildren - 1);
      }
      
      public function §_-c8§(param1:Event) : void
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:* = undefined;
         var _loc5_:String = null;
         _loc8_;
         _loc8_;
         _loc8_;
         this.§_-rk§ = this.§_-rk§ + 26.67;
         _loc9_;
         _loc9_;
         this.starMap.moveTo(this.§_-rk§,y);
         var _loc2_:Number = loaderInfo.bytesLoaded;
         var _loc3_:Number = loaderInfo.bytesTotal;
         if(_loc2_ == _loc3_)
         {
            this.§_-vq§ = true;
            _loc9_;
         }
         this.preloader.preloader_graphic.load_text.text = String(int(_loc2_ / 1000) + "KB / " + int(_loc3_ / 1000) + "KB");
         _loc9_;
         _loc9_;
         if(this.§_-vq§)
         {
            if(!this.§_-kK§)
            {
               _loc9_;
               _loc9_;
               _loc8_;
               _loc8_;
               _loc9_;
               this.pause_count++;
               if(this.pause_count == 50)
               {
                  _loc4_ = root.loaderInfo.parameters;
                  _loc8_;
                  _loc8_;
                  _loc5_ = "";
                  _loc8_;
                  _loc9_;
                  if(!(_loc4_ == undefined) && !(_loc4_ == null))
                  {
                     _loc8_;
                     _loc9_;
                     _loc9_;
                     _loc9_;
                     if(!(_loc4_.loc == undefined) && !(_loc4_.loc == null))
                     {
                        _loc8_;
                        _loc8_;
                        _loc5_ = unescape(_loc4_.loc);
                     }
                  }
                  if(_loc5_ == "")
                  {
                     _loc5_ = "unknown";
                  }
                  TimelineGlobal.§_-XQ§ = _loc5_;
                  _loc9_;
                  removeChild(this.preloader);
                  gotoAndStop("lobby");
                  _loc8_;
                  removeEventListener(Event.ENTER_FRAME,this.§_-c8§);
                  _loc8_;
                  this.§_-kK§ = true;
               }
            }
         }
      }
      
      public var TimelineFunctionsClass:Class;
      
      public var timeline:Object;
      
      function frame2() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.§_-x0§ = new ContextMenu();
         this.§_-x0§.hideBuiltInItems();
         contextMenu = this.§_-x0§;
         this.§_-vq§ = false;
         _loc2_;
         _loc2_;
         this.§_-kK§ = false;
         _loc2_;
         this.pause_count = 0;
         _loc2_;
         _loc2_;
         this.starMap = new StarMap();
         this.§_-zv§();
         _loc2_;
         _loc2_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.TimelineFunctionsClass = getDefinitionByName("TimelineFunctions") as Class;
         _loc2_;
         this.timeline = new this.TimelineFunctionsClass(this);
         _loc2_;
         this.timeline.loadLobbyDisplay();
         _loc2_;
         stop();
      }
   }
}
