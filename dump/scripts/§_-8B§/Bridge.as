package §_-8B§
{
   import flash.events.EventDispatcher;
   import flash.net.LocalConnection;
   import §_-jM§.§_-4K§;
   import flash.events.Event;
   import flash.events.StatusEvent;
   
   public class Bridge extends EventDispatcher
   {
      
      public function Bridge(param1:String)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         super();
         _loc3_;
         this.§_-vK§ = param1;
         this.§_-js§ = new LocalConnection();
         this.§_-rV§ = new LocalConnection();
         this.§_-js§.client = this;
         _loc3_;
         this.§_-js§.allowDomain("www.newgrounds.com");
         _loc2_;
         _loc2_;
         this.§_-js§.allowInsecureDomain("www.newgrounds.com");
         this.§_-js§.connect("_rec_" + this.§_-vK§);
         _loc3_;
         _loc3_;
         this.§_-rV§.addEventListener(StatusEvent.STATUS,this.§_-VS§);
         §_-tz§.addEventListener(§_-E6§.§_-Sa§,this.§_-gh§);
      }
      
      private var §_-js§:LocalConnection;
      
      private var §_-rV§:LocalConnection;
      
      private var §_-vK§:String;
      
      public function get §_-c9§() : String
      {
         return this.§_-vK§;
      }
      
      private function §_-gh§(param1:§_-E6§) : void
      {
         try
         {
            this.§_-rV§.send(this.§_-vK§,"sendEvent","trace",String(param1.data));
         }
         catch(error:*)
         {
         }
      }
      
      public function sendEvent(param1:String, param2:Object) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         if(this.§_-rV§)
         {
            var param2:Object = {"data":param2};
            try
            {
               this.§_-rV§.send(this.§_-vK§,"sendEvent",param1,param2);
            }
            catch(error:*)
            {
            }
         }
      }
      
      public function §_-J0§(param1:String) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Object = null;
         try
         {
            _loc2_ = §_-4K§.decode(param1);
            _loc4_;
            _loc4_;
         }
         catch(error:*)
         {
         }
         dispatchEvent(new §_-E6§(§_-E6§.§_-bk§,_loc2_,_loc2_ == null?§_-E6§.§_-2x§:null));
      }
      
      private function §_-VS§(param1:Event) : void
      {
      }
   }
}
