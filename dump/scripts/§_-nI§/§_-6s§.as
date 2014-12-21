package §_-nI§
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
   
   public class §_-6s§ extends §_-kM§
   {
      
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
      }
      
      public function §_-6s§(param1:BitmapData, param2:String)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         super();
         _loc4_;
         _loc4_;
         this.§_-oI§ = param1;
         _loc4_;
         this._url = param2;
      }
      
      static var §_-Mz§:uint = 0;
      
      private static const §true §:LoaderContext = new LoaderContext(true);
      
      private var _url:String;
      
      private var §_-oI§:BitmapData;
      
      private var §_-v5§:Boolean = true;
      
      public function get url() : String
      {
         return this._url;
      }
      
      public function set url(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-v5§ = false;
         _loc2_;
         this._url = param1;
      }
      
      public function get bitmapData() : BitmapData
      {
         return this.§_-oI§;
      }
      
      public function set bitmapData(param1:BitmapData) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-oI§ = param1;
         _loc3_;
         this.§_-v5§ = true;
      }
      
      public function get loaded() : Boolean
      {
         return this.§_-v5§;
      }
      
      private var _loader:Loader;
      
      private function §_-Qf§() : Loader
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Loader = new Loader();
         var _loc2_:URLRequest = new URLRequest(this._url);
         _loc4_;
         _loc4_;
         _loc2_.method = URLRequestMethod.GET;
         _loc4_;
         _loc4_;
         _loc2_.data = §_-Mz§.toString();
         _loc3_;
         _loc1_.load(_loc2_,§true §);
         return _loc1_;
      }
      
      private function §_-qi§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(this._loader)
         {
            try
            {
               this._loader.contentLoaderInfo.removeEventListener(Event.COMPLETE,this.§_-BI§);
               _loc3_;
               _loc3_;
               this._loader.contentLoaderInfo.removeEventListener(IOErrorEvent.IO_ERROR,this.§_-BI§);
               _loc3_;
               _loc3_;
               this._loader.unload();
               _loc2_;
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
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         if(!this._url || this._url == "")
         {
            _loc1_;
            _loc1_;
            this.§_-BI§(null);
            return;
         }
         this.§_-qi§();
         _loc2_;
         this._loader = this.§_-Qf§();
         this._loader.contentLoaderInfo.addEventListener(Event.COMPLETE,this.§_-BI§);
         _loc1_;
         _loc1_;
         this._loader.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,this.§_-BI§);
      }
      
      public function §_-OM§(param1:DisplayObjectContainer) : Sprite
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Sprite = new Sprite();
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         if((!this.§_-v5§) && (this._url) && !(this._url == ""))
         {
            if(!this._loader)
            {
               _loc3_;
               _loc3_;
               this.load();
               _loc4_;
               _loc4_;
            }
            _loc2_.addChild(this.§_-Qf§());
            _loc3_;
            _loc3_;
         }
         else
         {
            _loc2_.addChild(new Bitmap(this.§_-oI§));
            _loc3_;
            _loc3_;
         }
         if(param1)
         {
            param1.addChild(_loc2_);
         }
         return _loc2_;
      }
      
      private function §_-BI§(param1:Event) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         var bitmapData:BitmapData = null;
         _loc5_;
         var event:Event = param1;
         try
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            if((event && event.type == Event.COMPLETE) && (this._loader) && this._loader.content is Bitmap)
            {
               bitmapData = Bitmap(this._loader.content).bitmapData;
               this.§_-oI§ = bitmapData;
               this.§_-v5§ = true;
            }
         }
         catch(error:SecurityError)
         {
            if(!_loc5_)
            {
               if(_loc4_)
               {
                  if(bitmapData)
                  {
                     if(_loc5_ && (_loc2_))
                     {
                     }
                  }
               }
               if(_loc4_)
               {
                  /*UnknownSlot*/.dispose();
               }
               else
               {
                  bitmapData.dispose();
               }
            }
            if(!_loc5_)
            {
               bitmapData.dispose();
            }
            else
            {
               bitmapData.dispose();
            }
         }
         this.§_-qi§();
         _loc4_;
         _loc4_;
         _loc5_;
         if(this.§_-v5§)
         {
            _loc5_;
         }
         else
         {
            _loc4_;
            _loc4_;
         }
         if(this.§_-v5§)
         {
            dispatchEvent(new §_-6O§(§_-6O§.§_-DV§,this,null));
            return;
         }
         dispatchEvent(new §_-6O§(§_-6O§.§_-DV§,this,§_-6O§.§_-Ag§));
      }
   }
}
