package §_-ZN§
{
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import com.funkypear.ui.LP_BuyGravitons;
   import flash.net.navigateToURL;
   import com.funkypear.ui.§_-nj§;
   import com.funkypear.ui.§_-6X§;
   
   public class §_-0C§ extends SimpleButton
   {
      
      public function §_-0C§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         super();
         _loc2_;
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         var paypalURL:String = null;
         var url:URLRequest = null;
         _loc5_;
         _loc5_;
         var e:MouseEvent = param1;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(TimelineGlobal.site_version.getInt() != TimelineGlobal.SITE_BETA)
         {
            _loc4_;
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc5_;
            if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_LAUNCH || TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-7u§ || TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-zJ§)
            {
               (parent as LP_BuyGravitons).waitForPayment(1);
               Global.lobby_client.tryBuyGravitons(Global.§_-G1§.getInt());
               _loc5_;
               _loc5_;
               _loc5_;
               paypalURL = "http://api.playerio.com/payvault/paypal/coinsredirect?gameid=graviteewars-j0qjdxsxi0yt1ujatp53fw&connectuserid=";
               _loc4_;
               _loc4_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               paypalURL = paypalURL + TimelineGlobal.player_uid;
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               _loc4_;
               paypalURL = paypalURL + "&connection=public&coinamount=";
               _loc4_;
               _loc5_;
               _loc4_;
               paypalURL = paypalURL + String(Global.§_-G1§.getInt());
               _loc5_;
               _loc4_;
               _loc5_;
               _loc5_;
               _loc5_;
               _loc4_;
               _loc5_;
               paypalURL = paypalURL + "&currency=USD&item_name=";
               _loc4_;
               _loc4_;
               paypalURL = paypalURL + String(Global.§_-G1§.getInt());
               paypalURL = paypalURL + "%20Gravitons";
               _loc5_;
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
               _loc5_;
               _loc5_;
               _loc5_;
               _loc4_;
               if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
               {
                  _loc5_;
                  (parent as §_-nj§).waitForPayment(1);
                  _loc4_;
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  Global.lobby_client.tryBuyGravitonsKreds(Global.§_-G1§.getInt());
               }
               else if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-AY§)
               {
                  (parent as §_-6X§).waitForPayment(1);
                  _loc5_;
                  _loc5_;
                  Global.lobby_client.§_-z4§(Global.§_-G1§.getInt());
               }
               
            }
         }
         SafeGlobal.§_-zK§.§_-CX§(Global.§_-G1§.getInt());
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
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
