package §_-bY§
{
   import flash.events.MouseEvent;
   import com.funkypear.ui.LS_BrowseGames;
   
   public class §_-jl§ extends SimpleButton
   {
      
      public function §_-jl§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         super();
         _loc2_;
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10,19,this.frame20,29,this.frame30);
         _loc1_;
         x = 80;
         _loc1_;
         _loc1_;
         y = 90;
         buttonMode = true;
         this.updateGraphic();
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(SafeGlobal.browse_games_show_filtered == true)
         {
            SafeGlobal.browse_games_show_filtered = false;
            SafeGlobal.browse_games_hide_campaign = SafeGlobal.browse_games_hide_campaign_saved;
         }
         else
         {
            SafeGlobal.browse_games_show_filtered = true;
            _loc2_;
            SafeGlobal.browse_games_hide_campaign_saved = SafeGlobal.browse_games_hide_campaign;
            _loc3_;
            SafeGlobal.browse_games_hide_campaign = true;
            _loc3_;
         }
         (parent as LS_BrowseGames).§_-31§();
         Global.lobby_display.selectBrowseGames();
      }
      
      public function §_-oc§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.updateGraphic();
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(SafeGlobal.browse_games_show_filtered == true)
         {
            _loc2_;
            if(over)
            {
               gotoAndStop("on_over");
               _loc2_;
               _loc2_;
            }
            else
            {
               gotoAndStop("on_up");
            }
         }
         else if(over)
         {
            gotoAndStop("off_over");
            _loc1_;
         }
         else
         {
            gotoAndStop("off_up");
         }
         
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
      
      function frame20() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
      }
      
      function frame30() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         stop();
      }
   }
}
