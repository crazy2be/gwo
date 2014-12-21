package §_-nI§
{
   import flash.events.EventDispatcher;
   import flash.net.LocalConnection;
   import §_-k-§.§_-Ge§;
   import flash.events.Event;
   import flash.events.StatusEvent;
   
   public class Bridge extends EventDispatcher
   {
      
      public function Bridge(param1:String)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super();
         _loc2_;
         _loc2_;
         this.§_-Qs§ = param1;
         _loc3_;
         _loc3_;
         this.§_-XG§ = new LocalConnection();
         this.§_-Z2§ = new LocalConnection();
         this.§_-XG§.client = this;
         _loc3_;
         this.§_-XG§.allowDomain("www.newgrounds.com");
         this.§_-XG§.allowInsecureDomain("www.newgrounds.com");
         this.§_-XG§.connect("_rec_" + this.§_-Qs§);
         _loc2_;
         _loc2_;
         this.§_-Z2§.addEventListener(StatusEvent.STATUS,this.§_-Ze§);
         §_-NZ§.addEventListener(§_-6O§.§_-09§,this.§_-b5§);
      }
      
      private var §_-XG§:LocalConnection;
      
      private var §_-Z2§:LocalConnection;
      
      private var §_-Qs§:String;
      
      public function get §_-oM§() : String
      {
         return this.§_-Qs§;
      }
      
      private function §_-b5§(param1:§_-6O§) : void
      {
         try
         {
            this.§_-Z2§.send(this.§_-Qs§,"sendEvent","trace",String(param1.data));
         }
         catch(error:*)
         {
         }
      }
      
      public function sendEvent(param1:String, param2:Object) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         if(this.§_-Z2§)
         {
            var param2:Object = {"data":param2};
            try
            {
               this.§_-Z2§.send(this.§_-Qs§,"sendEvent",param1,param2);
            }
            catch(error:*)
            {
            }
         }
      }
      
      public function §_-Kk§(param1:String) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Object = null;
         try
         {
            _loc2_ = §_-Ge§.decode(param1);
            _loc5_;
            _loc5_;
         }
         catch(error:*)
         {
         }
         dispatchEvent(new §_-6O§(§_-6O§.§_-wK§,_loc2_,_loc2_ == null?§_-6O§.§_-MF§:null));
      }
      
      private function §_-Ze§(param1:Event) : void
      {
      }
   }
}
