package §_-ZN§
{
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §_-A0§ extends SimpleButton
   {
      
      public function §_-A0§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
         _loc1_;
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         var e:MouseEvent = param1;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc5_;
         _loc4_;
         _loc4_;
         var siteURL:String = "http://twitter.com/share?text=" + encodeURIComponent("Check out my awesome replay from #GraviteeWarsOnline") + "&url=" + encodeURIComponent(Global.§_-TQ§ + Global.save_replay_response);
         _loc5_;
         _loc5_;
         var url:URLRequest = new URLRequest(siteURL);
         try
         {
            navigateToURL(url,"_blank");
            _loc5_;
         }
         catch(e:Error)
         {
         }
         SafeGlobal.§_-zK§.§_-sJ§();
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         stop();
      }
   }
}
