package §_-ZN§
{
   import flash.events.MouseEvent;
   
   public class §_-U7§ extends SimpleButton
   {
      
      public function §_-U7§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         super();
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_BETA)
         {
            _loc2_;
            _loc2_;
            Global.lobby_display.displayMoreGravitonsPanel("",true);
            _loc2_;
         }
         else
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
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
               _loc2_;
               if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
               {
                  _loc3_;
                  Global.lobby_display.displayKredsPanel();
               }
               else
               {
                  _loc2_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-7u§)
                  {
                     Global.lobby_display.displayBuyGravitonsPanel();
                  }
                  else
                  {
                     _loc2_;
                     _loc3_;
                     _loc2_;
                     _loc2_;
                     if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-AY§)
                     {
                        Global.lobby_display.§_-OT§();
                        _loc2_;
                        _loc2_;
                     }
                     else if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-zJ§)
                     {
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
         SafeGlobal.§_-zK§.§_-cm§();
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         stop();
      }
   }
}
