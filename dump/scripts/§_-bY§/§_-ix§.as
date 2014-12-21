package §_-bY§
{
   import flash.events.MouseEvent;
   
   public class §_-ix§ extends SimpleButton
   {
      
      public function §_-ix§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         super();
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc3_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_BETA)
         {
            Global.lobby_display.displayMoreGravitonsPanel("",true);
            _loc3_;
            _loc3_;
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc2_;
            if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_LAUNCH)
            {
               _loc3_;
               _loc3_;
               Global.lobby_display.displayBuyGravitonsPanel();
            }
            else
            {
               _loc2_;
               _loc2_;
               _loc2_;
               _loc3_;
               _loc3_;
               if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
               {
                  Global.lobby_display.displayKredsPanel();
               }
               else
               {
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-9d§)
                  {
                     _loc3_;
                     Global.lobby_display.displayBuyGravitonsPanel();
                     _loc3_;
                  }
                  else
                  {
                     _loc2_;
                     _loc2_;
                     _loc2_;
                     _loc3_;
                     if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-Ir§)
                     {
                        Global.lobby_display.§_-v8§();
                        _loc2_;
                        _loc2_;
                     }
                     else if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-ul§)
                     {
                        _loc2_;
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
         SafeGlobal.§_-8m§.§_-WK§();
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
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
