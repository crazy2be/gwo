package §_-ZN§
{
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import com.funkypear.ui.LP_BuyGravitons;
   import flash.net.navigateToURL;
   import com.funkypear.ui.§_-nj§;
   import com.funkypear.ui.§_-6X§;
   
   public class §_-Ut§ extends SimpleButton
   {
      
      public function §_-Ut§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
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
         var paypalURL:String = null;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         var url:URLRequest = null;
         _loc4_;
         _loc4_;
         var e:MouseEvent = param1;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_BETA)
         {
            _loc4_;
         }
         else
         {
            _loc4_;
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_LAUNCH || TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-7u§ || TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-zJ§)
            {
               _loc5_;
               _loc5_;
               (parent as LP_BuyGravitons).waitForPayment(3);
               Global.lobby_client.tryBuyGravitons(Global.§_-Z0§.getInt());
               _loc4_;
               paypalURL = "http://api.playerio.com/payvault/paypal/coinsredirect?gameid=graviteewars-j0qjdxsxi0yt1ujatp53fw&connectuserid=";
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               paypalURL = paypalURL + TimelineGlobal.player_uid;
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               paypalURL = paypalURL + "&connection=public&coinamount=";
               _loc5_;
               _loc5_;
               _loc4_;
               paypalURL = paypalURL + String(Global.§_-Z0§.getInt());
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               paypalURL = paypalURL + "&currency=USD&item_name=";
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               paypalURL = paypalURL + String(Global.§_-Z0§.getInt());
               paypalURL = paypalURL + "%20Gravitons";
               url = new URLRequest(paypalURL);
               try
               {
                  navigateToURL(url,"_blank");
               }
               catch(e:Error)
               {
               }
            }
            else
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
               {
                  _loc4_;
                  _loc4_;
                  (parent as §_-nj§).waitForPayment(3);
                  _loc4_;
                  _loc5_;
                  _loc4_;
                  _loc4_;
                  Global.lobby_client.tryBuyGravitonsKreds(Global.§_-Z0§.getInt());
               }
               else if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-AY§)
               {
                  _loc4_;
                  _loc4_;
                  (parent as §_-6X§).waitForPayment(3);
                  _loc5_;
                  _loc5_;
                  Global.lobby_client.§_-z4§(Global.§_-Z0§.getInt());
                  _loc4_;
                  _loc4_;
               }
               
            }
         }
         SafeGlobal.§_-zK§.§_-CX§(Global.§_-Z0§.getInt());
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         stop();
      }
   }
}
