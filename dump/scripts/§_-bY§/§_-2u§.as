package §_-bY§
{
   import flash.text.TextField;
   import flash.events.MouseEvent;
   
   public class §_-2u§ extends SimpleButton
   {
      
      public function §_-2u§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         super();
         _loc1_;
         addFrameScript(0,this.frame1,4,this.frame5,9,this.frame10);
      }
      
      public var §_-Go§:TextField;
      
      public var §_-1v§:TextField;
      
      private var §_-iw§:Boolean = true;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(this.§_-iw§)
         {
            _loc3_;
            _loc3_;
            Global.lobby_display.backOneScreen();
         }
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(!this.§_-iw§)
         {
            gotoAndStop("inactive");
            this.§_-Go§.textColor = 16777215;
            _loc1_;
            _loc1_;
            this.§_-1v§.textColor = 16777215;
            this.§_-Go§.alpha = 0.3;
            _loc2_;
            this.§_-1v§.alpha = 0.3;
            _loc2_;
            _loc2_;
            buttonMode = false;
            _loc2_;
            _loc2_;
         }
         else
         {
            this.§_-Go§.alpha = 1;
            this.§_-1v§.alpha = 1;
            _loc1_;
            buttonMode = true;
            if(over)
            {
               _loc1_;
               _loc1_;
               gotoAndStop("over");
               this.§_-Go§.textColor = 8432384;
               this.§_-1v§.textColor = 8432384;
            }
            else
            {
               gotoAndStop("up");
               this.§_-Go§.textColor = 16777215;
               _loc2_;
               this.§_-1v§.textColor = 16777215;
            }
         }
      }
      
      public function setActive(param1:Boolean) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-iw§ = param1;
         _loc3_;
         _loc3_;
         mouseEnabled = param1;
         _loc3_;
         buttonMode = param1;
         _loc2_;
         _loc2_;
         this.updateGraphic();
      }
      
      public function §_-h6§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         var _loc1_:int = Global.lobby_display.getPreviousScreen();
         _loc4_;
         var _loc2_:int = Global.lobby_display.getCurrentScreen();
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(_loc1_ == Global.SCREEN_HUB)
         {
            _loc3_;
            _loc3_;
            this.§_-1v§.text = "TO HUB";
         }
         else
         {
            _loc4_;
            if(_loc1_ == Global.SCREEN_CAMPAIGN_SELECT)
            {
               _loc4_;
               _loc4_;
               this.§_-1v§.text = "TO CAMPAIGNS";
               _loc3_;
            }
            else
            {
               _loc3_;
               if(_loc1_ == Global.SCREEN_BROWSE_CAMPAIGN)
               {
                  this.§_-1v§.text = String("TO CAMPAIGN " + (SafeGlobal.selected_level.campaign_id + 1));
                  _loc4_;
                  _loc4_;
               }
               else if(_loc1_ == Global.SCREEN_BROWSE_YOUR_CUSTOM)
               {
                  this.§_-1v§.text = "TO YOUR MAPS";
                  _loc4_;
                  _loc4_;
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  _loc4_;
                  _loc4_;
                  if(_loc1_ == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
                  {
                     this.§_-1v§.text = "TO CAMPAIGN MAPS";
                     _loc4_;
                  }
                  else
                  {
                     _loc4_;
                     if(_loc1_ == Global.SCREEN_BROWSE_LATEST_CUSTOM)
                     {
                        _loc3_;
                        _loc3_;
                        this.§_-1v§.text = "TO LATEST MAPS";
                     }
                     else if(_loc1_ == Global.SCREEN_BROWSE_GAMES)
                     {
                        this.§_-1v§.text = "TO BROWSE GAMES";
                        _loc4_;
                     }
                     else
                     {
                        _loc4_;
                        if(_loc1_ == Global.SCREEN_CUSTOM_GAME)
                        {
                           _loc3_;
                           this.§_-1v§.text = "TO GAME SETUP";
                           _loc3_;
                        }
                        else
                        {
                           _loc4_;
                           if(_loc1_ == Global.SCREEN_LOADING_BROWSE_GAMES)
                           {
                              this.§_-1v§.text = "TO HUB";
                           }
                           else
                           {
                              _loc3_;
                              _loc3_;
                              if(_loc1_ == Global.SCREEN_LOADING_CUSTOM_GAME)
                              {
                                 _loc4_;
                                 _loc4_;
                                 this.§_-1v§.text = "TO HUB";
                                 _loc4_;
                                 _loc4_;
                              }
                              else if(_loc1_ == Global.SCREEN_LOADING_SHARE_CODE)
                              {
                                 this.§_-1v§.text = "TO HUB";
                                 _loc4_;
                              }
                              else
                              {
                                 _loc4_;
                                 _loc4_;
                                 if(_loc1_ == Global.SCREEN_LOADING_LATEST_MAPS)
                                 {
                                    this.§_-1v§.text = "TO CUSTOM MAPS";
                                 }
                                 else if(_loc1_ == Global.SCREEN_CUSTOM_SELECT)
                                 {
                                    this.§_-1v§.text = "TO CUSTOM MAPS";
                                    _loc3_;
                                    _loc3_;
                                 }
                                 else
                                 {
                                    _loc3_;
                                    if(_loc1_ == Global.SCREEN_LOADING_REPLAYS)
                                    {
                                       this.§_-1v§.text = "TO HUB";
                                       _loc3_;
                                    }
                                    else
                                    {
                                       _loc4_;
                                       _loc4_;
                                       if(_loc1_ == Global.SCREEN_VIEW_REPLAYS)
                                       {
                                          this.§_-1v§.text = "TO LATEST REPLAYS";
                                          _loc3_;
                                       }
                                       else if(_loc1_ == Global.SCREEN_SAVING_REPLAY)
                                       {
                                          _loc4_;
                                          this.§_-1v§.text = "TO LATEST REPLAYS";
                                       }
                                       else
                                       {
                                          _loc4_;
                                          if(_loc1_ == Global.SCREEN_EDIT_REPLAY && _loc2_ == Global.SCREEN_SAVING_REPLAY)
                                          {
                                             this.§_-1v§.text = "TO LATEST REPLAYS";
                                             _loc4_;
                                          }
                                          else
                                          {
                                             this.§_-1v§.text = "";
                                          }
                                       }
                                       
                                    }
                                 }
                                 
                              }
                              
                           }
                        }
                     }
                     
                  }
               }
               
            }
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         stop();
      }
      
      function frame5() : *
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
         _loc2_;
         stop();
      }
   }
}
