package §_-n§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.display.Loader;
   import §_-8B§.API;
   import §_-8B§.§_-E6§;
   import flash.net.URLRequest;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import §_-8B§.§_-tz§;
   import flash.system.LoaderContext;
   import flash.system.ApplicationDomain;
   import flash.events.MouseEvent;
   import flash.system.Security;
   
   public class §_-hm§ extends MovieClip
   {
      
      public function §_-hm§()
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-5u§ = this.§_-AS§;
         _loc3_;
         super();
         try
         {
            Security.allowDomain("server.cpmstar.com");
            Security.allowInsecureDomain("server.cpmstar.com");
            _loc3_;
         }
         catch(error:*)
         {
         }
         gotoAndStop("idle");
         _loc3_;
         x = int(x);
         y = int(y);
         stop();
         _loc3_;
         if(this["newgroundsButton"])
         {
            this["newgroundsButton"].addEventListener(MouseEvent.CLICK,this.§_-Uk§);
            _loc3_;
            _loc3_;
         }
         addEventListener(Event.REMOVED_FROM_STAGE,this.§_-B0§);
         addEventListener(Event.ENTER_FRAME,this.init);
      }
      
      public function get §_-lj§() : Sprite
      {
         return this["adContainer"];
      }
      
      public function get §_-oW§() : DisplayObject
      {
         return this["newgroundsButton"];
      }
      
      private var §_-rz§:Boolean = true;
      
      public var showPlayButton:Boolean;
      
      private var §_-Oc§:Boolean;
      
      public var §_-5u§:String;
      
      public var §_-AS§:String = "Video";
      
      public var §_-YA§:String = "Simple";
      
      public function get §_-GX§() : Boolean
      {
         return this.§_-Oc§;
      }
      
      public function set §_-GX§(param1:Boolean) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.§_-Oc§ = param1;
         if(param1)
         {
            if(stage)
            {
               _loc2_;
               this.§_-zn§();
               _loc2_;
               _loc2_;
            }
            else
            {
               addEventListener(Event.ADDED_TO_STAGE,this.§_-4c§);
               _loc2_;
            }
         }
         else
         {
            graphics.clear();
         }
      }
      
      public function get §_-QL§() : Boolean
      {
         return this.§_-rz§;
      }
      
      public function set §_-QL§(param1:Boolean) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.§_-rz§ = param1;
         if(this.§_-rz§)
         {
            _loc3_;
            _loc3_;
            if(this.§_-9d§)
            {
               _loc3_;
               _loc3_;
               if(this.§_-9d§.content)
               {
                  _loc3_;
                  gotoAndStop("loaded");
                  _loc3_;
                  _loc3_;
               }
               else
               {
                  gotoAndStop("loading");
               }
            }
            else
            {
               gotoAndStop("idle");
            }
         }
         else
         {
            gotoAndStop("noBorder");
         }
      }
      
      private var §_-cs§:URLLoader;
      
      private var §_-9d§:Loader;
      
      private function init(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         removeEventListener(Event.ENTER_FRAME,this.init);
         _loc2_;
         if(API.§_-Jd§)
         {
            _loc3_;
            _loc3_;
            this.§_-B7§();
            _loc2_;
            _loc2_;
         }
         else
         {
            API.addEventListener(§_-E6§.§_-al§,this.§_-B7§);
         }
      }
      
      private function §_-B7§(param1:§_-E6§ = null) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         var event:§_-E6§ = param1;
         _loc4_;
         _loc4_;
         if(!API.§_-Jd§)
         {
            return;
         }
         if(this.§_-rz§)
         {
            _loc5_;
            gotoAndStop("loading");
         }
         this.§_-cs§ = new URLLoader();
         _loc4_;
         this.§_-cs§.addEventListener(Event.COMPLETE,this.§_-13§);
         _loc4_;
         _loc4_;
         this.§_-cs§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-82§);
         this.§_-cs§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-82§);
         _loc4_;
         _loc4_;
         var adFeedRequest:URLRequest = new URLRequest(API.§_-Jd§);
         try
         {
            this.§_-cs§.load(adFeedRequest);
         }
         catch(e:Error)
         {
            if(_loc5_)
            {
               §_-82§();
            }
         }
      }
      
      private function §_-13§(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc2_;
         _loc2_;
         if((this.§_-cs§) && (this.§_-cs§.data) && !(this.§_-cs§.data == ""))
         {
            _loc3_;
            this.§_-6l§(this.§_-cs§.data);
            _loc3_;
         }
         else
         {
            this.§_-82§();
         }
      }
      
      private function §_-6l§(param1:String) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var adURL:String = param1;
         _loc4_;
         _loc4_;
         if(this.§_-9d§)
         {
            _loc4_;
            _loc4_;
            this.§_-fy§();
            _loc5_;
            _loc5_;
         }
         §_-tz§.§_-Lq§("Loading flash ad...");
         _loc4_;
         _loc4_;
         this.§_-9d§ = new Loader();
         _loc5_;
         this.§_-9d§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§_-82§);
         try
         {
            Object(this.§_-9d§.contentLoaderInfo).uncaughtErrorEvents.addEventListener("uncaughtError",function(param1:Event):void
            {
               param1.preventDefault();
            });
            _loc4_;
         }
         catch(error:Error)
         {
         }
         try
         {
            _loc5_;
            _loc5_;
            if(this.§_-5u§ != this.§_-AS§)
            {
               _loc4_;
               _loc4_;
               if(adURL.indexOf("?") >= 0)
               {
                  _loc4_;
                  _loc4_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  adURL = adURL + "&";
               }
               else
               {
                  _loc4_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc4_;
                  _loc4_;
                  adURL = adURL + "?";
                  _loc5_;
                  _loc5_;
               }
               adURL = adURL + "blockoverlays=1";
               _loc4_;
               _loc4_;
            }
            this.§_-9d§.load(new URLRequest(adURL),new LoaderContext(false,new ApplicationDomain(null)));
            _loc5_;
            _loc5_;
            if(this.§_-lj§)
            {
               this.§_-lj§.addChild(this.§_-9d§);
            }
            if(this.§_-rz§)
            {
               gotoAndStop("loaded");
            }
         }
         catch(error:Error)
         {
            if(!_loc4_)
            {
               §_-82§();
            }
         }
      }
      
      private function §_-zn§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(stage)
         {
            _loc2_;
            x = (stage.stageWidth - width) / 2;
            y = (stage.stageHeight - height) / 2;
            _loc2_;
            _loc2_;
            graphics.beginFill(0);
            graphics.drawRect(-stage.stageWidth,-stage.stageHeight,stage.stageWidth * 2,stage.stageHeight * 2);
            graphics.endFill();
         }
      }
      
      public function §_-fy§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         removeEventListener(Event.REMOVED_FROM_STAGE,this.§_-B0§);
         _loc4_;
         if(this.§_-cs§)
         {
            try
            {
               this.§_-cs§.close();
               _loc4_;
               _loc4_;
            }
            catch(e:Error)
            {
            }
         }
         if(this.§_-9d§)
         {
            try
            {
               this.§_-9d§.close();
            }
            catch(e:Error)
            {
            }
            try
            {
               Object(this.§_-9d§).unloadAndStop(true);
               _loc4_;
            }
            catch(e:Error)
            {
               if(!(_loc3_ && (this)))
               {
                  §_-9d§.unload();
               }
            }
            if(this.§_-9d§.parent)
            {
               this.§_-9d§.parent.removeChild(this.§_-9d§);
               _loc4_;
            }
            this.§_-9d§ = null;
         }
         §_-tz§.logError("Ad destroyed.");
      }
      
      private function §_-82§(param1:Event = null) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         §_-tz§.logError("Unable to load ad.");
         _loc3_;
         this.§_-fy§();
      }
      
      private function §_-B0§(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-fy§();
      }
      
      private function §_-4c§(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         removeEventListener(Event.ADDED_TO_STAGE,this.§_-4c§);
         _loc2_;
         if(this.§_-GX§)
         {
            _loc3_;
            this.§_-zn§();
         }
      }
      
      private function §_-Uk§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         API.loadNewgrounds();
      }
   }
}
