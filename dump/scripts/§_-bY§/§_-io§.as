package §_-bY§
{
   import flash.events.MouseEvent;
   import com.funkypear.ui.LS_BrowseGames;
   
   public class §_-io§ extends SimpleButton
   {
      
      public function §_-io§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         super();
         _loc2_;
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10,19,this.frame20,29,this.frame30);
         _loc2_;
         _loc2_;
         x = 410;
         _loc1_;
         y = 90;
         _loc1_;
         _loc1_;
         this.updateGraphic();
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(SafeGlobal.browse_games_hide_campaign == true)
         {
            _loc3_;
            _loc3_;
            SafeGlobal.browse_games_hide_campaign = false;
            _loc2_;
            _loc2_;
         }
         else
         {
            SafeGlobal.browse_games_hide_campaign = true;
            _loc3_;
            _loc3_;
         }
         (parent as LS_BrowseGames).§_-31§();
         _loc3_;
         Global.lobby_display.selectBrowseGames();
      }
      
      public function §_-oc§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.updateGraphic();
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc1_;
         _loc1_;
         if(SafeGlobal.browse_games_show_filtered == true)
         {
            buttonMode = false;
            gotoAndStop("on_up");
            _loc1_;
            _loc1_;
            alpha = 0.5;
         }
         else
         {
            buttonMode = true;
            _loc2_;
            _loc2_;
            alpha = 1;
            _loc2_;
            _loc2_;
            if(SafeGlobal.browse_games_hide_campaign == true)
            {
               if(over)
               {
                  _loc2_;
                  _loc2_;
                  gotoAndStop("on_over");
               }
               else
               {
                  gotoAndStop("on_up");
               }
            }
            else if(over)
            {
               _loc1_;
               _loc1_;
               gotoAndStop("off_over");
               _loc1_;
            }
            else
            {
               gotoAndStop("off_up");
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
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         stop();
      }
      
      function frame20() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         stop();
      }
      
      function frame30() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         stop();
      }
   }
}
