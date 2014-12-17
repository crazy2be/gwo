package §_-ZN§
{
   import fl.transitions.Tween;
   import flash.events.MouseEvent;
   
   public class §_-ZH§ extends SimpleButton
   {
      
      public function §_-ZH§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         super();
         _loc2_;
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      private var §_-nh§:Tween;
      
      private var §_-Vs§:Tween;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_BETA)
         {
            _loc3_;
            _loc3_;
            _loc2_;
            Global.lobby_display.displayMoreGravitonsPanel("",true);
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_LAUNCH)
            {
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               Global.lobby_display.displayBuyGravitonsPanel();
            }
            else
            {
               _loc2_;
               _loc3_;
               _loc3_;
               _loc3_;
               if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
               {
                  Global.lobby_display.displayKredsPanel();
                  _loc3_;
               }
               else
               {
                  _loc2_;
                  _loc2_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-7u§)
                  {
                     _loc3_;
                     _loc3_;
                     Global.lobby_display.displayBuyGravitonsPanel();
                  }
                  else
                  {
                     _loc3_;
                     _loc2_;
                     _loc2_;
                     _loc2_;
                     _loc2_;
                     if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-AY§)
                     {
                        Global.lobby_display.§_-OT§();
                     }
                     else if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-zJ§)
                     {
                        _loc3_;
                        _loc3_;
                        _loc2_;
                        _loc2_;
                        Global.lobby_display.displayBuyGravitonsPanel();
                     }
                     else
                     {
                        Global.lobby_display.displayBuyGravitonsPanel();
                     }
                     
                  }
               }
            }
         }
         SafeGlobal.§_-zK§.§_-j4§();
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         if(§_-QR§)
         {
            gotoAndStop("off");
            buttonMode = false;
            _loc2_;
         }
         else if(§_-Od§)
         {
            buttonMode = true;
            gotoAndStop("selected");
         }
         else
         {
            buttonMode = true;
            if(over)
            {
               gotoAndStop("over");
            }
            else
            {
               gotoAndStop("up");
            }
         }
         
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
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         stop();
      }
   }
}
