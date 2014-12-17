package playerio
{
   import flash.display.Loader;
   import flash.display.Stage;
   import flash.net.URLLoader;
   import flash.net.URLLoaderDataFormat;
   import flash.events.Event;
   import flash.events.IOErrorEvent;
   import flash.events.SecurityErrorEvent;
   import flash.system.LoaderContext;
   import flash.system.ApplicationDomain;
   import flash.net.URLRequest;
   
   public final class PlayerIO extends Object
   {
      
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc2_;
         _loc2_;
      }
      
      public function PlayerIO()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
         throw new Error("You cannot create an instance of the PlayerIO class!");
      }
      
      private static var wrapper:Loader;
      
      private static var queue:Array = [];
      
      private static var apiError:§_-pw§;
      
      private static var wo:Object = {};
      
      public static function connect(param1:Stage, param2:String, param3:String, param4:String, param5:String, param6:String, param7:Function, param8:Function = null) : void
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         _loc10_;
         proxy("connect",arguments);
      }
      
      public static function get quickConnect() : QuickConnect
      {
         return new QuickConnect(proxy);
      }
      
      public static function gameFS(param1:String) : GameFS
      {
         return new SimpleGameFS(param1,wo);
      }
      
      public static function showLogo(param1:Stage, param2:String) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         proxy("showLogo",arguments);
      }
      
      private static function proxy(param1:String, param2:Object) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc5_;
         var api:* = undefined;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         var path:Array = null;
         _loc6_;
         var target:String = param1;
         var args:Object = param2;
         _loc5_;
         if(apiError)
         {
            throwError(apiError,args[args.callee.length - 1]);
         }
         else
         {
            _loc6_;
            if((wrapper) && (wrapper.content))
            {
               try
               {
                  _loc5_;
                  api = wrapper.content;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  path = target.split(".");
                  while(true)
                  {
                     _loc6_;
                     _loc6_;
                     _loc5_;
                     if(path.length <= 1)
                     {
                        break;
                     }
                     _loc5_;
                     _loc5_;
                     api = api[path.shift()];
                     _loc6_;
                     _loc6_;
                  }
                  api[path[0]].apply(null,args);
                  _loc5_;
                  _loc5_;
               }
               catch(e:Error)
               {
                  throwError(new §_-pw§(e.message,e.errorID),args[args.callee.length - 1]);
               }
            }
            else
            {
               queue.push(function():void
               {
                  args.callee.apply(null,args);
               });
            }
         }
         if(!wrapper)
         {
            _loc6_;
            _loc6_;
            loadAPI();
         }
      }
      
      private static function loadAPI() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var loader:URLLoader = null;
         _loc2_;
         wrapper = new Loader();
         _loc3_;
         _loc3_;
         loader = new URLLoader();
         _loc3_;
         _loc3_;
         loader.dataFormat = URLLoaderDataFormat.BINARY;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         loader.addEventListener(Event.COMPLETE,function(param1:Event):void
         {
            wrapper.contentLoaderInfo.addEventListener(Event.COMPLETE,emptyQueue);
            wrapper.contentLoaderInfo.addEventListener(IOErrorEvent.IO_ERROR,handleLoadError);
            wrapper.contentLoaderInfo.addEventListener(SecurityErrorEvent.SECURITY_ERROR,handleLoadError);
            wrapper.loadBytes(loader.data,new LoaderContext(false,ApplicationDomain.currentDomain));
            wo.wrapper = wrapper;
         });
         _loc2_;
         _loc2_;
         loader.addEventListener(IOErrorEvent.IO_ERROR,handleLoadError);
         loader.addEventListener(SecurityErrorEvent.SECURITY_ERROR,handleLoadError);
         _loc2_;
         loader.load(new URLRequest("http://api.playerio.com/flashbridge/1"));
      }
      
      private static function handleLoadError(param1:Event = null) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         apiError = new §_-pw§("Unable to connect to the API due to " + param1.type + ". Please verify that your internet connection is working!",0);
         _loc3_;
         emptyQueue();
      }
      
      private static function emptyQueue(param1:Event = null) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         while(queue.length)
         {
            _loc2_;
            _loc2_;
            queue.shift()();
            _loc3_;
         }
      }
      
      private static function throwError(param1:§_-pw§, param2:Function) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc4_;
         if(param2 != null)
         {
            _loc4_;
            param2(param1);
            _loc4_;
            return;
         }
         throw §_-pw§;
      }
   }
}
