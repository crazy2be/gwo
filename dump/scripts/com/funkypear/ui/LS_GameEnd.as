package com.funkypear.ui
{
   import fl.transitions.TweenEvent;
   
   public class LS_GameEnd extends LobbyScreen
   {
      
      public function LS_GameEnd()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-C4§ = [1,4,2,5,3];
         _loc2_;
         _loc2_;
         super();
      }
      
      private var §_-gz§:GameEndDisplay;
      
      private var start_x:Number;
      
      private var start_y:Number;
      
      private var §_-MX§:int = 0;
      
      private var §_-bL§:int = 1;
      
      private var §_-12§:int = 2;
      
      private var §_-FY§:int = 3;
      
      private var §_-3Q§:int = 4;
      
      private var §_-bB§:int = 5;
      
      private var §_-C4§:Array;
      
      private var §_-aS§:int = -1;
      
      private var §_-9q§:Boolean = false;
      
      private var end_stats:GameEndStatsPanel;
      
      private var unlocks:Array;
      
      private var §_-p0§:int = -1;
      
      private var awards:Array;
      
      private var award_count:int = -1;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         x = Global.large_thumbnail_x;
         _loc2_;
         _loc2_;
         y = Global.large_thumbnail_y;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         §_-NW§ = SafeGlobal.game_over_data.§_-ts§;
         _loc2_;
         §_-NW§.x = §_-NW§.x - Global.large_thumbnail_x;
         _loc3_;
         §_-NW§.y = §_-NW§.y - Global.large_thumbnail_y;
         _loc3_;
         _loc3_;
         addChild(§_-NW§);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         §_-QH§();
      }
      
      override protected function tweenOnExtras(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc2_;
         _loc2_;
         Global.lobby_display.lobby_stats.tweenIn();
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         Global.lobby_display.logo.tweenIn();
         _loc3_;
         _loc3_;
         Global.lobby_display.lobby_nav.tweenIn(true);
      }
      
      override protected function finishTweenOutOfGame(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         if(SafeGlobal.selected_level.§_-Td§ == true)
         {
            if(SafeGlobal.selected_level.§_-tn§ == false)
            {
               this.§_-gz§ = new GameEndDisplay(this,SafeGlobal.game_over_data.game_radius,true,SafeGlobal.selected_level.campaign_id,SafeGlobal.selected_level.level_id);
               _loc3_;
            }
            else
            {
               this.§_-gz§ = new GameEndDisplay(this,SafeGlobal.game_over_data.game_radius,false);
            }
         }
         else
         {
            this.§_-gz§ = new GameEndDisplay(this,SafeGlobal.game_over_data.game_radius,false);
         }
         this.§_-gz§.§_-fH§();
         addChild(this.§_-gz§);
         this.§_-LL§();
      }
      
      private function §_-C1§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         SafeGlobal.game_over_data.§_-l9§();
         SafeGlobal.game_over_data.§_-1G§();
         Global.lobby_display.lobby_nav.§_-v§();
         _loc2_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            if(SafeGlobal.game_client != null)
            {
               _loc2_;
               _loc2_;
               _loc2_;
               SafeGlobal.game_client.submitKongStats();
            }
         }
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-9d§)
         {
            _loc2_;
            _loc1_;
            _loc1_;
            _loc1_;
            if(SafeGlobal.game_client != null)
            {
               _loc1_;
               _loc1_;
               _loc2_;
               SafeGlobal.game_client.checkNewgroundsAwards();
               _loc2_;
               _loc2_;
            }
         }
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-Ir§)
         {
            _loc2_;
            _loc2_;
            if(SafeGlobal.game_client != null)
            {
               _loc1_;
               SafeGlobal.game_client.submitMiniplayStats();
            }
         }
      }
      
      public function §_-LL§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         if(!this.§_-9q§)
         {
            _loc4_;
            _loc3_;
            _loc3_;
            this.§_-aS§++;
            _loc4_;
            _loc4_;
            if(this.§_-aS§ >= this.§_-C4§.length)
            {
               this.§_-C1§();
            }
            else
            {
               _loc4_;
               _loc4_;
               if(this.§_-C4§[this.§_-aS§] != this.§_-MX§)
               {
                  _loc3_;
                  _loc3_;
                  if(this.§_-C4§[this.§_-aS§] == this.§_-bL§)
                  {
                     _loc4_;
                     this.displayGamePositions();
                     _loc3_;
                     _loc3_;
                  }
                  else
                  {
                     _loc3_;
                     _loc3_;
                     if(this.§_-C4§[this.§_-aS§] == this.§_-3Q§)
                     {
                        _loc4_;
                        this.§_-HK§();
                        _loc3_;
                     }
                     else
                     {
                        _loc4_;
                        _loc3_;
                        _loc3_;
                        if(this.§_-C4§[this.§_-aS§] == this.§_-12§)
                        {
                           this.displayUnlocks();
                           _loc4_;
                        }
                        else
                        {
                           _loc4_;
                           _loc4_;
                           _loc4_;
                           _loc4_;
                           if(this.§_-C4§[this.§_-aS§] == this.§_-FY§)
                           {
                              this.displayAwards();
                           }
                           else if(this.§_-C4§[this.§_-aS§] == this.§_-bB§)
                           {
                              this.§_-tQ§();
                           }
                           
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §_-tQ§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(Global.§_-Ba§ == true)
         {
            _loc2_;
            Global.lobby_display.§_-8k§(1);
            _loc2_;
         }
         this.§_-LL§();
      }
      
      private function displayUnlocks() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(SafeGlobal.game_over_data.unlock_data != "")
         {
            _loc2_;
            _loc2_;
            this.unlocks = SafeGlobal.game_over_data.unlock_data.split("|");
            _loc2_;
            _loc2_;
            this.§_-p0§ = -1;
            _loc1_;
            this.§_-vC§();
            _loc2_;
         }
         else
         {
            this.§_-LL§();
         }
      }
      
      public function §_-vC§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         this.§_-p0§++;
         _loc4_;
         _loc4_;
         if(this.§_-p0§ < this.unlocks.length)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            Global.lobby_display.displayNewUnlock(this.unlocks[this.§_-p0§],this);
            _loc4_;
         }
         else
         {
            Global.lobby_display.hideUnlockPanel();
            _loc3_;
            _loc3_;
            this.§_-LL§();
         }
      }
      
      private function displayAwards() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(SafeGlobal.game_over_data.§_-jO§ != "")
         {
            _loc2_;
            _loc2_;
            this.awards = SafeGlobal.game_over_data.§_-jO§.split("|");
            _loc1_;
            Global.award_panel.§_-Fk§(this.awards);
            _loc1_;
         }
         this.§_-LL§();
      }
      
      private function displayGamePositions() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         Global.lobby_display.displayGamePositions(this);
         _loc1_;
         _loc1_;
         Global.coins.setInt(Global.coins.getInt() + SafeGlobal.game_over_data.§_-Z6§);
         _loc2_;
         _loc2_;
         Global.lobby_display.lobby_stats.§_-Cm§();
      }
      
      private function §_-HK§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.end_stats = new GameEndStatsPanel(lobby_canvas,this);
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         this.end_stats.x = 74;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         this.end_stats.y = 92;
         _loc2_;
         _loc2_;
         this.end_stats.name = "end_stats";
         lobby_canvas.addChild(this.end_stats);
         this.end_stats.tweenIn();
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-9q§ = true;
         _loc2_;
         if(param1 == Global.SCREEN_BROWSE_CAMPAIGN)
         {
            this.§_-gz§.§_-yq§();
            _loc3_;
            this.§_-gz§.§_-0-e§(param1);
            §_-NW§.visible = false;
            this.start_x = SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].positions[SafeGlobal.selected_level.level_id].x;
            _loc2_;
            this.start_y = SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].positions[SafeGlobal.selected_level.level_id].y;
            §_-3j§(this.start_x,this.start_y,true);
         }
         else
         {
            _loc3_;
            _loc3_;
            if(param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM)
            {
               _loc3_;
               _loc2_;
               _loc2_;
               this.§_-gz§.§_-yq§();
               _loc3_;
               this.§_-gz§.§_-0-e§(param1);
               §_-NW§.visible = false;
               this.start_x = Global.positions[5][SafeGlobal.selected_level.§_-p2§].x;
               this.start_y = Global.positions[5][SafeGlobal.selected_level.§_-p2§].y;
               §_-3j§(this.start_x,this.start_y,true);
            }
            else if(param1 == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
            {
               _loc3_;
               _loc3_;
               this.§_-gz§.§_-yq§();
               _loc3_;
               _loc3_;
               this.§_-gz§.§_-0-e§(param1);
               §_-NW§.visible = false;
               this.start_x = Global.positions[5][SafeGlobal.selected_level.§_-p2§].x;
               this.start_y = Global.positions[5][SafeGlobal.selected_level.§_-p2§].y;
               §_-3j§(this.start_x,this.start_y,true);
               _loc2_;
            }
            else
            {
               _loc3_;
               _loc2_;
               if(param1 == Global.SCREEN_BROWSE_LATEST_CUSTOM)
               {
                  _loc2_;
                  _loc2_;
                  this.§_-gz§.§_-yq§();
                  _loc3_;
                  _loc3_;
                  this.§_-gz§.§_-0-e§(param1);
                  §_-NW§.visible = false;
                  this.start_x = Global.positions[5][SafeGlobal.selected_level.§_-p2§].x;
                  this.start_y = Global.positions[5][SafeGlobal.selected_level.§_-p2§].y;
                  §_-3j§(this.start_x,this.start_y,true);
                  _loc3_;
                  _loc3_;
               }
               else if(param1 == Global.SCREEN_LOADING_BROWSE_GAMES)
               {
                  _loc3_;
                  §_-4y§();
                  _loc3_;
                  _loc3_;
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  if(param1 == Global.SCREEN_CUSTOM_GAME)
                  {
                     §_-Yc§(null);
                     _loc2_;
                  }
                  else if(param1 == Global.SCREEN_WAITING_AREA)
                  {
                     §_-Yc§(null);
                  }
                  else
                  {
                     §_-eY§(1200);
                  }
                  
               }
               
            }
            
         }
      }
      
      override protected function tweenOffExtras(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(this.end_stats != null)
         {
            _loc2_;
            _loc2_;
            this.end_stats.tweenOut();
         }
      }
      
      override public function finishTweenOff() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc2_;
         _loc2_;
         if(this.end_stats != null)
         {
            _loc2_;
            _loc2_;
            this.end_stats.visible = false;
            _loc2_;
            _loc2_;
         }
         SafeGlobal.GAME.finalDestroy();
      }
   }
}
