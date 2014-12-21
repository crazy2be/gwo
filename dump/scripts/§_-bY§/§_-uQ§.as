package §_-bY§
{
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import com.funkypear.ui.LP_BuyGravitons;
   import flash.net.navigateToURL;
   import com.funkypear.ui.§_-Kj§;
   import com.funkypear.ui.§_-MU§;
   
   public class §_-uQ§ extends SimpleButton
   {
      
      public function §_-uQ§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         super();
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         var paypalURL:String = null;
         _loc5_;
         var url:URLRequest = null;
         var e:MouseEvent = param1;
         _loc5_;
         _loc4_;
         _loc4_;
         _loc4_;
         if(TimelineGlobal.site_version.getInt() != TimelineGlobal.SITE_BETA)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            _loc5_;
            if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_LAUNCH || TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-9d§ || TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-ul§)
            {
               (parent as LP_BuyGravitons).waitForPayment(3);
               Global.lobby_client.tryBuyGravitons(Global.§_-WX§.getInt());
               _loc4_;
               _loc4_;
               _loc5_;
               paypalURL = "http://api.playerio.com/payvault/paypal/coinsredirect?gameid=graviteewars-j0qjdxsxi0yt1ujatp53fw&connectuserid=";
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               paypalURL = paypalURL + TimelineGlobal.player_uid;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               paypalURL = paypalURL + "&connection=public&coinamount=";
               _loc4_;
               _loc5_;
               _loc5_;
               paypalURL = paypalURL + String(Global.§_-WX§.getInt());
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               paypalURL = paypalURL + "&currency=USD&item_name=";
               _loc4_;
               paypalURL = paypalURL + String(Global.§_-WX§.getInt());
               paypalURL = paypalURL + "%20Gravitons";
               url = new URLRequest(paypalURL);
               try
               {
                  navigateToURL(url,"_blank");
                  _loc4_;
               }
               catch(e:Error)
               {
               }
            }
            else
            {
               _loc5_;
               _loc4_;
               _loc4_;
               _loc5_;
               if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
               {
                  (parent as §_-Kj§).waitForPayment(3);
                  _loc4_;
                  _loc5_;
                  _loc5_;
                  Global.lobby_client.tryBuyGravitonsKreds(Global.§_-WX§.getInt());
               }
               else if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-Ir§)
               {
                  (parent as §_-MU§).waitForPayment(3);
                  Global.lobby_client.§_-s8§(Global.§_-WX§.getInt());
                  _loc4_;
                  _loc4_;
               }
               
            }
         }
         SafeGlobal.§_-8m§.§_-4R§(Global.§_-WX§.getInt());
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         stop();
      }
   }
}
