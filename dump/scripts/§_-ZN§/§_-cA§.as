package §_-ZN§
{
   import flash.text.TextField;
   import flash.events.MouseEvent;
   
   public class §_-cA§ extends SimpleButton
   {
      
      public function §_-cA§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         super();
         _loc1_;
         addFrameScript(0,this.frame1,4,this.frame5,9,this.frame10);
      }
      
      public var §_-PW§:TextField;
      
      public var §_-zp§:TextField;
      
      private var §_-Lx§:Boolean = true;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(this.§_-Lx§)
         {
            _loc2_;
            _loc2_;
            Global.lobby_display.backOneScreen();
         }
      }
      
      override protected function updateGraphic() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(!this.§_-Lx§)
         {
            gotoAndStop("inactive");
            this.§_-PW§.textColor = 16777215;
            this.§_-zp§.textColor = 16777215;
            _loc2_;
            this.§_-PW§.alpha = 0.3;
            _loc2_;
            this.§_-zp§.alpha = 0.3;
            _loc1_;
            _loc1_;
            buttonMode = false;
            _loc1_;
         }
         else
         {
            this.§_-PW§.alpha = 1;
            this.§_-zp§.alpha = 1;
            _loc2_;
            buttonMode = true;
            _loc2_;
            _loc2_;
            if(over)
            {
               _loc1_;
               _loc1_;
               gotoAndStop("over");
               _loc2_;
               this.§_-PW§.textColor = 8432384;
               _loc1_;
               _loc1_;
               this.§_-zp§.textColor = 8432384;
               _loc2_;
               _loc2_;
            }
            else
            {
               gotoAndStop("up");
               this.§_-PW§.textColor = 16777215;
               _loc1_;
               _loc1_;
               this.§_-zp§.textColor = 16777215;
            }
         }
      }
      
      public function setActive(param1:Boolean) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-Lx§ = param1;
         _loc3_;
         _loc3_;
         mouseEnabled = param1;
         _loc3_;
         _loc3_;
         buttonMode = param1;
         _loc2_;
         this.updateGraphic();
      }
      
      public function §_-MD§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         var _loc1_:int = Global.lobby_display.getPreviousScreen();
         _loc4_;
         var _loc2_:int = Global.lobby_display.getCurrentScreen();
         _loc3_;
         _loc3_;
         if(_loc1_ == Global.SCREEN_HUB)
         {
            this.§_-zp§.text = "TO HUB";
            _loc4_;
            _loc4_;
         }
         else
         {
            _loc4_;
            _loc4_;
            if(_loc1_ == Global.SCREEN_CAMPAIGN_SELECT)
            {
               _loc4_;
               this.§_-zp§.text = "TO CAMPAIGNS";
               _loc4_;
            }
            else if(_loc1_ == Global.SCREEN_BROWSE_CAMPAIGN)
            {
               this.§_-zp§.text = String("TO CAMPAIGN " + (SafeGlobal.selected_level.campaign_id + 1));
               _loc3_;
            }
            else if(_loc1_ == Global.SCREEN_BROWSE_YOUR_CUSTOM)
            {
               this.§_-zp§.text = "TO YOUR MAPS";
               _loc3_;
            }
            else if(_loc1_ == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
            {
               this.§_-zp§.text = "TO CAMPAIGN MAPS";
               _loc3_;
               _loc3_;
            }
            else
            {
               _loc3_;
               if(_loc1_ == Global.SCREEN_BROWSE_LATEST_CUSTOM)
               {
                  _loc4_;
                  this.§_-zp§.text = "TO LATEST MAPS";
                  _loc3_;
               }
               else if(_loc1_ == Global.SCREEN_BROWSE_GAMES)
               {
                  _loc4_;
                  this.§_-zp§.text = "TO BROWSE GAMES";
                  _loc3_;
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  if(_loc1_ == Global.SCREEN_CUSTOM_GAME)
                  {
                     this.§_-zp§.text = "TO GAME SETUP";
                     _loc4_;
                     _loc4_;
                  }
                  else
                  {
                     _loc4_;
                     if(_loc1_ == Global.SCREEN_LOADING_BROWSE_GAMES)
                     {
                        _loc3_;
                        this.§_-zp§.text = "TO HUB";
                        _loc4_;
                        _loc4_;
                     }
                     else
                     {
                        _loc3_;
                        _loc3_;
                        if(_loc1_ == Global.SCREEN_LOADING_CUSTOM_GAME)
                        {
                           this.§_-zp§.text = "TO HUB";
                        }
                        else if(_loc1_ == Global.SCREEN_LOADING_SHARE_CODE)
                        {
                           this.§_-zp§.text = "TO HUB";
                           _loc3_;
                        }
                        else
                        {
                           _loc3_;
                           _loc4_;
                           if(_loc1_ == Global.SCREEN_LOADING_LATEST_MAPS)
                           {
                              this.§_-zp§.text = "TO CUSTOM MAPS";
                              _loc4_;
                           }
                           else
                           {
                              _loc4_;
                              if(_loc1_ == Global.SCREEN_CUSTOM_SELECT)
                              {
                                 this.§_-zp§.text = "TO CUSTOM MAPS";
                              }
                              else
                              {
                                 _loc4_;
                                 if(_loc1_ == Global.SCREEN_LOADING_REPLAYS)
                                 {
                                    _loc3_;
                                    _loc3_;
                                    this.§_-zp§.text = "TO HUB";
                                 }
                                 else if(_loc1_ == Global.SCREEN_VIEW_REPLAYS)
                                 {
                                    _loc3_;
                                    this.§_-zp§.text = "TO LATEST REPLAYS";
                                    _loc4_;
                                    _loc4_;
                                 }
                                 else
                                 {
                                    _loc3_;
                                    _loc3_;
                                    if(_loc1_ == Global.SCREEN_SAVING_REPLAY)
                                    {
                                       this.§_-zp§.text = "TO LATEST REPLAYS";
                                    }
                                    else
                                    {
                                       _loc4_;
                                       _loc4_;
                                       if(_loc1_ == Global.SCREEN_EDIT_REPLAY && _loc2_ == Global.SCREEN_SAVING_REPLAY)
                                       {
                                          _loc4_;
                                          this.§_-zp§.text = "TO LATEST REPLAYS";
                                       }
                                       else
                                       {
                                          this.§_-zp§.text = "";
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
         _loc2_;
         stop();
      }
      
      function frame5() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         stop();
      }
   }
}
