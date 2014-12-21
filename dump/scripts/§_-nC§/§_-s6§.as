package §_-nC§
{
   import flash.display.MovieClip;
   import flash.display.Sprite;
   import flash.display.DisplayObject;
   import flash.events.Event;
   import flash.net.URLLoader;
   import flash.display.Loader;
   import §_-nI§.API;
   import §_-nI§.§_-6O§;
   import flash.net.URLRequest;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import §_-nI§.§_-NZ§;
   import flash.system.LoaderContext;
   import flash.system.ApplicationDomain;
   import flash.events.MouseEvent;
   import flash.system.Security;
   
   public class §_-s6§ extends MovieClip
   {
      
      public function §_-s6§()
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-Aw§ = this.§_-dM§;
         _loc2_;
         super();
         try
         {
            Security.allowDomain("server.cpmstar.com");
            _loc3_;
            Security.allowInsecureDomain("server.cpmstar.com");
            _loc2_;
            _loc2_;
         }
         catch(error:*)
         {
         }
         gotoAndStop("idle");
         x = int(x);
         y = int(y);
         stop();
         if(this["newgroundsButton"])
         {
            this["newgroundsButton"].addEventListener(MouseEvent.CLICK,this.§_-pU§);
         }
         addEventListener(Event.REMOVED_FROM_STAGE,this.§_-J0§);
         addEventListener(Event.ENTER_FRAME,this.init);
      }
      
      public function get §_-Vs§() : Sprite
      {
         return this["adContainer"];
      }
      
      public function get §_-0O§() : DisplayObject
      {
         return this["newgroundsButton"];
      }
      
      private var §_-4x§:Boolean = true;
      
      public var showPlayButton:Boolean;
      
      private var §_-5r§:Boolean;
      
      public var §_-Aw§:String;
      
      public var §_-dM§:String = "Video";
      
      public var §_-CA§:String = "Simple";
      
      public function get §_-wZ§() : Boolean
      {
         return this.§_-5r§;
      }
      
      public function set §_-wZ§(param1:Boolean) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.§_-5r§ = param1;
         if(param1)
         {
            if(stage)
            {
               _loc3_;
               this.§_-tp§();
               _loc2_;
            }
            else
            {
               addEventListener(Event.ADDED_TO_STAGE,this.§_-S-§);
               _loc3_;
               _loc3_;
            }
         }
         else
         {
            graphics.clear();
         }
      }
      
      public function get §_-Sb§() : Boolean
      {
         return this.§_-4x§;
      }
      
      public function set §_-Sb§(param1:Boolean) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-4x§ = param1;
         if(this.§_-4x§)
         {
            if(this.§_-gG§)
            {
               if(this.§_-gG§.content)
               {
                  gotoAndStop("loaded");
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
      
      private var §_-mO§:URLLoader;
      
      private var §_-gG§:Loader;
      
      private function init(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         removeEventListener(Event.ENTER_FRAME,this.init);
         _loc3_;
         if(API.§_-SV§)
         {
            _loc2_;
            _loc2_;
            this.§_-ue§();
            _loc3_;
            _loc3_;
         }
         else
         {
            API.addEventListener(§_-6O§.§_-IA§,this.§_-ue§);
         }
      }
      
      private function §_-ue§(param1:§_-6O§ = null) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         var event:§_-6O§ = param1;
         if(!API.§_-SV§)
         {
            _loc5_;
            _loc5_;
            return;
         }
         if(this.§_-4x§)
         {
            _loc5_;
            gotoAndStop("loading");
         }
         this.§_-mO§ = new URLLoader();
         this.§_-mO§.addEventListener(Event.COMPLETE,this.§_-ut§);
         _loc4_;
         this.§_-mO§.addEventListener(IOErrorEvent.IO_ERROR,this.§_-w9§);
         _loc5_;
         _loc5_;
         this.§_-mO§.addEventListener(SecurityErrorEvent.SECURITY_ERROR,this.§_-w9§);
         var adFeedRequest:URLRequest = new URLRequest(API.§_-SV§);
         try
         {
            this.§_-mO§.load(adFeedRequest);
         }
         catch(e:Error)
         {
            if(_loc4_)
            {
               §_-w9§();
            }
         }
      }
      
      private function §_-ut§(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         if((this.§_-mO§) && (this.§_-mO§.data) && !(this.§_-mO§.data == ""))
         {
            _loc3_;
            _loc3_;
            this.§_-Tk§(this.§_-mO§.data);
            _loc3_;
         }
         else
         {
            this.§_-w9§();
         }
      }
      
      private function §_-Tk§(param1:String) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var adURL:String = param1;
         _loc5_;
         if(this.§_-gG§)
         {
            _loc4_;
            _loc4_;
            this.§_-cn§();
            _loc5_;
         }
         §_-NZ§.§_-Bv§("Loading flash ad...");
         _loc4_;
         this.§_-gG§ = new Loader();
         _loc5_;
         _loc5_;
         this.§_-gG§.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§_-w9§);
         try
         {
            Object(this.§_-gG§.contentLoaderInfo).uncaughtErrorEvents.addEventListener("uncaughtError",function(param1:Event):void
            {
               param1.preventDefault();
            });
         }
         catch(error:Error)
         {
         }
         try
         {
            _loc4_;
            if(this.§_-Aw§ != this.§_-dM§)
            {
               _loc4_;
               if(adURL.indexOf("?") >= 0)
               {
                  _loc4_;
                  _loc5_;
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  _loc4_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  adURL = adURL + "&";
                  _loc5_;
                  _loc5_;
               }
               else
               {
                  _loc4_;
                  _loc4_;
                  _loc5_;
                  _loc4_;
                  _loc5_;
                  _loc4_;
                  adURL = adURL + "?";
                  _loc5_;
               }
               adURL = adURL + "blockoverlays=1";
            }
            this.§_-gG§.load(new URLRequest(adURL),new LoaderContext(false,new ApplicationDomain(null)));
            if(this.§_-Vs§)
            {
               this.§_-Vs§.addChild(this.§_-gG§);
            }
            if(this.§_-4x§)
            {
               gotoAndStop("loaded");
            }
         }
         catch(error:Error)
         {
            if(_loc5_)
            {
               §_-w9§();
            }
         }
      }
      
      private function §_-tp§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         if(stage)
         {
            _loc2_;
            _loc2_;
            x = (stage.stageWidth - width) / 2;
            _loc1_;
            _loc1_;
            y = (stage.stageHeight - height) / 2;
            _loc2_;
            _loc2_;
            graphics.beginFill(0);
            graphics.drawRect(-stage.stageWidth,-stage.stageHeight,stage.stageWidth * 2,stage.stageHeight * 2);
            graphics.endFill();
         }
      }
      
      public function §_-cn§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         removeEventListener(Event.REMOVED_FROM_STAGE,this.§_-J0§);
         _loc3_;
         if(this.§_-mO§)
         {
            try
            {
               this.§_-mO§.close();
               _loc4_;
            }
            catch(e:Error)
            {
            }
         }
         if(this.§_-gG§)
         {
            try
            {
               this.§_-gG§.close();
               _loc3_;
            }
            catch(e:Error)
            {
            }
            try
            {
               Object(this.§_-gG§).unloadAndStop(true);
               _loc4_;
            }
            catch(e:Error)
            {
               if(_loc4_ || (this))
               {
                  §_-gG§.unload();
               }
            }
            if(this.§_-gG§.parent)
            {
               this.§_-gG§.parent.removeChild(this.§_-gG§);
            }
            this.§_-gG§ = null;
         }
         §_-NZ§.logError("Ad destroyed.");
      }
      
      private function §_-w9§(param1:Event = null) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         §_-NZ§.logError("Unable to load ad.");
         _loc3_;
         _loc3_;
         this.§_-cn§();
      }
      
      private function §_-J0§(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-cn§();
      }
      
      private function §_-S-§(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         removeEventListener(Event.ADDED_TO_STAGE,this.§_-S-§);
         _loc2_;
         if(this.§_-wZ§)
         {
            _loc3_;
            this.§_-tp§();
         }
      }
      
      private function §_-pU§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         API.loadNewgrounds();
      }
   }
}
