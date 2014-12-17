package §_-8B§
{
   import flash.system.LoaderContext;
   import flash.display.BitmapData;
   import flash.display.Loader;
   import flash.net.URLRequest;
   import flash.net.URLRequestMethod;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.display.Sprite;
   import flash.display.DisplayObjectContainer;
   import flash.display.Bitmap;
   
   public class §_-16§ extends §_-Et§
   {
      
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc2_;
         _loc2_;
      }
      
      public function §_-16§(param1:BitmapData, param2:String)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         super();
         _loc3_;
         this.§_-KZ§ = param1;
         _loc4_;
         this._url = param2;
      }
      
      static var §_-C2§:uint = 0;
      
      private static const §use §:LoaderContext = new LoaderContext(true);
      
      private var _url:String;
      
      private var §_-KZ§:BitmapData;
      
      private var §_-WG§:Boolean = true;
      
      public function get url() : String
      {
         return this._url;
      }
      
      public function set url(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-WG§ = false;
         _loc3_;
         this._url = param1;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§_-KZ§;
      }
      
      public function set bitmapData(param1:BitmapData) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-KZ§ = param1;
         _loc3_;
         _loc3_;
         this.§_-WG§ = true;
      }
      
      public function get loaded() : Boolean
      {
         return this.§_-WG§;
      }
      
      private var _loader:Loader;
      
      private function §_-3L§() : Loader
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Loader = new Loader();
         var _loc2_:URLRequest = new URLRequest(this._url);
         _loc4_;
         _loc2_.method = URLRequestMethod.GET;
         _loc4_;
         _loc4_;
         _loc2_.data = §_-C2§.toString();
         _loc3_;
         _loc3_;
         _loc1_.load(_loc2_,§use §);
         return _loc1_;
      }
      
      private function §_-Hz§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(this._loader)
         {
            try
            {
               this._loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§_-En§);
               _loc2_;
               this._loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-En§);
               _loc3_;
               _loc3_;
               this._loader.unload();
               _loc2_;
            }
            catch(error:*)
            {
            }
            this._loader = null;
         }
      }
      
      public function load() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc2_;
         if(!this._url || this._url == "")
         {
            this.§_-En§(null);
            return;
         }
         this.§_-Hz§();
         this._loader = this.§_-3L§();
         this._loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§_-En§);
         _loc1_;
         _loc1_;
         this._loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§_-En§);
      }
      
      public function §_-f9§(param1:DisplayObjectContainer) : Sprite
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Sprite = new Sprite();
         _loc3_;
         _loc4_;
         _loc3_;
         _loc3_;
         if((!this.§_-WG§) && (this._url) && !(this._url == ""))
         {
            if(!this._loader)
            {
               _loc3_;
               _loc3_;
               this.load();
            }
            _loc2_.addChild(this.§_-3L§());
         }
         else
         {
            _loc2_.addChild(new Bitmap(this.§_-KZ§));
         }
         if(param1)
         {
            param1.addChild(_loc2_);
         }
         return _loc2_;
      }
      
      private function §_-En§(param1:Event) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         var bitmapData:BitmapData = null;
         _loc5_;
         var event:Event = param1;
         try
         {
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            _loc5_;
            if((event && event.type == Event.COMPLETE) && (this._loader) && this._loader.content is Bitmap)
            {
               bitmapData = Bitmap(this._loader.content).bitmapData;
               _loc5_;
               _loc5_;
               this.§_-KZ§ = bitmapData;
               this.§_-WG§ = true;
               _loc5_;
            }
         }
         catch(error:SecurityError)
         {
            if(!(_loc4_ && (_loc2_)))
            {
               if(_loc5_)
               {
                  if(bitmapData)
                  {
                     if(_loc4_ && (this))
                     {
                     }
                     if(_loc4_ && (this))
                     {
                     }
                  }
               }
               if(_loc5_)
               {
                  /*UnknownSlot*/.dispose();
               }
               else
               {
                  bitmapData.dispose();
               }
            }
            if(_loc4_ && (_loc2_))
            {
            }
         }
         this.§_-Hz§();
         _loc5_;
         if(this.§_-WG§)
         {
            _loc4_;
         }
         else
         {
            _loc5_;
         }
         if(this.§_-WG§)
         {
            dispatchEvent(new §_-E6§(§_-E6§.§_-K6§,this,null));
            return;
         }
         dispatchEvent(new §_-E6§(§_-E6§.§_-K6§,this,§_-E6§.§_-zx§));
      }
   }
}
