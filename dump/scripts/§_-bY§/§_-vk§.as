package §_-bY§
{
   import fl.transitions.Tween;
   import flash.events.MouseEvent;
   
   public class §_-vk§ extends SimpleButton
   {
      
      public function §_-vk§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         super();
         _loc1_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      private var §_-qP§:Tween;
      
      private var §_-GY§:Tween;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_BETA)
         {
            Global.lobby_display.displayMoreGravitonsPanel("",true);
            _loc2_;
         }
         else
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_LAUNCH)
            {
               Global.lobby_display.displayBuyGravitonsPanel();
               _loc2_;
            }
            else
            {
               _loc3_;
               _loc3_;
               _loc2_;
               _loc2_;
               _loc2_;
               if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
               {
                  Global.lobby_display.displayKredsPanel();
                  _loc2_;
                  _loc2_;
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  _loc2_;
                  if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-9d§)
                  {
                     _loc2_;
                     Global.lobby_display.displayBuyGravitonsPanel();
                     _loc3_;
                     _loc3_;
                  }
                  else
                  {
                     _loc3_;
                     _loc3_;
                     _loc3_;
                     _loc2_;
                     if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-Ir§)
                     {
                        _loc3_;
                        _loc3_;
                        _loc3_;
                        Global.lobby_display.§_-v8§();
                        _loc2_;
                        _loc2_;
                     }
                     else if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-ul§)
                     {
                        Global.lobby_display.displayBuyGravitonsPanel();
                        _loc3_;
                     }
                     else
                     {
                        Global.lobby_display.displayBuyGravitonsPanel();
                        _loc3_;
                        _loc3_;
                     }
                     
                  }
               }
            }
         }
         SafeGlobal.§_-8m§.§_-dt§();
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(§_-L4§)
         {
            gotoAndStop("off");
            buttonMode = false;
            _loc2_;
         }
         else if(§_-yY§)
         {
            buttonMode = true;
            _loc1_;
            _loc1_;
            gotoAndStop("selected");
            _loc1_;
         }
         else
         {
            buttonMode = true;
            _loc1_;
            _loc1_;
            if(over)
            {
               _loc2_;
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
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
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
