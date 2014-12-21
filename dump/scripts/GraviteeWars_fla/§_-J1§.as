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
   
   public dynamic class §_-J1§ extends MovieClip
   {
      
      public function §_-J1§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         super();
         _loc2_;
         _loc2_;
         addFrameScript(1,this.frame2,9,this.frame10);
      }
      
      public var §_-M0§:MovieClip;
      
      public var preloader:MovieClip;
      
      public var §_-6d§:ContextMenu;
      
      public var §_-5o§:Boolean;
      
      public var §var§:Boolean;
      
      public var pause_count:int;
      
      public var starMap:StarMap;
      
      public var §_-BB§:Number;
      
      public function §_-EU§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-M0§.addChild(this.starMap);
         _loc1_;
         _loc1_;
         this.bringToFront(this.preloader);
         _loc1_;
         this.preloader.version_text.text = TimelineGlobal.version_number;
         _loc2_;
         this.§_-BB§ = 800;
         _loc1_;
         _loc1_;
         addEventListener(Event.ENTER_FRAME,this.§_-lI§,false,0,true);
      }
      
      public function bringToFront(param1:DisplayObject) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         setChildIndex(param1,numChildren - 1);
      }
      
      public function §_-lI§(param1:Event) : void
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc4_:* = undefined;
         var _loc5_:String = null;
         _loc9_;
         _loc9_;
         _loc9_;
         this.§_-BB§ = this.§_-BB§ + 26.67;
         _loc8_;
         this.starMap.moveTo(this.§_-BB§,y);
         var _loc2_:Number = loaderInfo.bytesLoaded;
         var _loc3_:Number = loaderInfo.bytesTotal;
         _loc9_;
         if(_loc2_ == _loc3_)
         {
            _loc9_;
            _loc9_;
            this.§_-5o§ = true;
         }
         this.preloader.preloader_graphic.load_text.text = String(int(_loc2_ / 1000) + "KB / " + int(_loc3_ / 1000) + "KB");
         _loc9_;
         _loc9_;
         _loc9_;
         if(this.§_-5o§)
         {
            if(!this.§var§)
            {
               _loc8_;
               _loc8_;
               _loc9_;
               _loc9_;
               this.pause_count++;
               if(this.pause_count == 50)
               {
                  _loc4_ = root.loaderInfo.parameters;
                  _loc9_;
                  _loc9_;
                  _loc8_;
                  _loc5_ = "";
                  _loc8_;
                  _loc9_;
                  _loc8_;
                  if(!(_loc4_ == undefined) && !(_loc4_ == null))
                  {
                     if(!(_loc4_.loc == undefined) && !(_loc4_.loc == null))
                     {
                        _loc8_;
                        _loc8_;
                        _loc5_ = unescape(_loc4_.loc);
                        _loc9_;
                     }
                  }
                  if(_loc5_ == "")
                  {
                     _loc9_;
                     _loc9_;
                     _loc5_ = "unknown";
                  }
                  TimelineGlobal.§use§ = _loc5_;
                  _loc9_;
                  removeChild(this.preloader);
                  _loc9_;
                  gotoAndStop("lobby");
                  _loc9_;
                  _loc9_;
                  removeEventListener(Event.ENTER_FRAME,this.§_-lI§);
                  this.§var§ = true;
               }
            }
         }
      }
      
      public var TimelineFunctionsClass:Class;
      
      public var timeline:Object;
      
      function frame2() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.§_-6d§ = new ContextMenu();
         this.§_-6d§.hideBuiltInItems();
         contextMenu = this.§_-6d§;
         this.§_-5o§ = false;
         this.§var§ = false;
         _loc2_;
         this.pause_count = 0;
         _loc1_;
         _loc1_;
         this.starMap = new StarMap();
         _loc2_;
         _loc2_;
         this.§_-EU§();
         _loc2_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.TimelineFunctionsClass = getDefinitionByName("TimelineFunctions") as Class;
         _loc2_;
         this.timeline = new this.TimelineFunctionsClass(this);
         _loc2_;
         _loc2_;
         this.timeline.loadLobbyDisplay();
         _loc1_;
         stop();
      }
   }
}
