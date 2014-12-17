package com.funkypear.ui
{
   import fl.transitions.TweenEvent;
   
   public class LS_GameEnd extends LobbyScreen
   {
      
      public function LS_GameEnd()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-gc§ = [1,4,2,5,3];
         _loc1_;
         _loc1_;
         super();
      }
      
      private var §_-4x§:GameEndDisplay;
      
      private var start_x:Number;
      
      private var start_y:Number;
      
      private var §_-O8§:int = 0;
      
      private var §_-BJ§:int = 1;
      
      private var §_-zt§:int = 2;
      
      private var §_-jh§:int = 3;
      
      private var §_-he§:int = 4;
      
      private var §_-O0§:int = 5;
      
      private var §_-gc§:Array;
      
      private var §_-G6§:int = -1;
      
      private var §_-Iw§:Boolean = false;
      
      private var end_stats:GameEndStatsPanel;
      
      private var unlocks:Array;
      
      private var §_-m3§:int = -1;
      
      private var awards:Array;
      
      private var award_count:int = -1;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         x = Global.large_thumbnail_x;
         _loc3_;
         _loc3_;
         y = Global.large_thumbnail_y;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         §_-dN§ = SafeGlobal.game_over_data.§_-sA§;
         _loc2_;
         _loc2_;
         §_-dN§.x = §_-dN§.x - Global.large_thumbnail_x;
         _loc2_;
         §_-dN§.y = §_-dN§.y - Global.large_thumbnail_y;
         _loc3_;
         _loc3_;
         addChild(§_-dN§);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         §_-Hi§();
      }
      
      override protected function tweenOnExtras(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc2_;
         Global.lobby_display.lobby_stats.tweenIn();
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         Global.lobby_display.logo.tweenIn();
         _loc3_;
         Global.lobby_display.lobby_nav.tweenIn(true);
      }
      
      override protected function finishTweenOutOfGame(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc2_;
         _loc3_;
         _loc3_;
         if(SafeGlobal.selected_level.§_-L6§ == true)
         {
            if(SafeGlobal.selected_level.§_-uM§ == false)
            {
               this.§_-4x§ = new GameEndDisplay(this,SafeGlobal.game_over_data.game_radius,true,SafeGlobal.selected_level.campaign_id,SafeGlobal.selected_level.level_id);
            }
            else
            {
               this.§_-4x§ = new GameEndDisplay(this,SafeGlobal.game_over_data.game_radius,false);
            }
         }
         else
         {
            this.§_-4x§ = new GameEndDisplay(this,SafeGlobal.game_over_data.game_radius,false);
         }
         this.§_-4x§.§_-hZ§();
         addChild(this.§_-4x§);
         _loc2_;
         _loc2_;
         this.§_-nx§();
      }
      
      private function §_-5i§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         SafeGlobal.game_over_data.§_-vZ§();
         SafeGlobal.game_over_data.§_-kA§();
         _loc1_;
         _loc1_;
         Global.lobby_display.lobby_nav.§_-MS§();
         _loc1_;
         _loc1_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.SITE_KONG)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            if(SafeGlobal.game_client != null)
            {
               _loc1_;
               _loc1_;
               SafeGlobal.game_client.submitKongStats();
            }
         }
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-7u§)
         {
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            _loc1_;
            _loc1_;
            if(SafeGlobal.game_client != null)
            {
               _loc2_;
               _loc2_;
               SafeGlobal.game_client.checkNewgroundsAwards();
               _loc1_;
            }
         }
         if(TimelineGlobal.site_version.getInt() == TimelineGlobal.§_-AY§)
         {
            _loc1_;
            _loc2_;
            _loc2_;
            if(SafeGlobal.game_client != null)
            {
               _loc2_;
               SafeGlobal.game_client.submitMiniplayStats();
            }
         }
      }
      
      public function §_-nx§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         if(!this.§_-Iw§)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            this.§_-G6§++;
            if(this.§_-G6§ >= this.§_-gc§.length)
            {
               this.§_-5i§();
            }
            else
            {
               _loc4_;
               _loc3_;
               if(this.§_-gc§[this.§_-G6§] == this.§_-O8§)
               {
                  _loc4_;
                  _loc4_;
               }
               else
               {
                  _loc3_;
                  _loc4_;
                  _loc4_;
                  if(this.§_-gc§[this.§_-G6§] == this.§_-BJ§)
                  {
                     this.displayGamePositions();
                     _loc4_;
                     _loc4_;
                  }
                  else
                  {
                     _loc4_;
                     _loc4_;
                     _loc4_;
                     _loc4_;
                     if(this.§_-gc§[this.§_-G6§] == this.§_-he§)
                     {
                        this.§_-TI§();
                        _loc3_;
                     }
                     else
                     {
                        _loc3_;
                        _loc3_;
                        _loc3_;
                        if(this.§_-gc§[this.§_-G6§] == this.§_-zt§)
                        {
                           _loc3_;
                           _loc3_;
                           this.displayUnlocks();
                           _loc3_;
                        }
                        else
                        {
                           _loc3_;
                           _loc3_;
                           _loc3_;
                           if(this.§_-gc§[this.§_-G6§] == this.§_-jh§)
                           {
                              _loc3_;
                              _loc3_;
                              this.displayAwards();
                              _loc3_;
                              _loc3_;
                           }
                           else if(this.§_-gc§[this.§_-G6§] == this.§_-O0§)
                           {
                              this.§_-qX§();
                           }
                           
                        }
                     }
                  }
               }
            }
         }
      }
      
      private function §_-qX§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(Global.§_-UW§ == true)
         {
            _loc1_;
            Global.lobby_display.§_-oq§(1);
            _loc2_;
            _loc2_;
         }
         this.§_-nx§();
      }
      
      private function displayUnlocks() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         if(SafeGlobal.game_over_data.unlock_data != "")
         {
            _loc1_;
            _loc1_;
            this.unlocks = SafeGlobal.game_over_data.unlock_data.split("|");
            _loc2_;
            this.§_-m3§ = -1;
            _loc2_;
            _loc2_;
            this.§_-Oi§();
            _loc1_;
            _loc1_;
         }
         else
         {
            this.§_-nx§();
         }
      }
      
      public function §_-Oi§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         this.§_-m3§++;
         _loc4_;
         _loc4_;
         if(this.§_-m3§ < this.unlocks.length)
         {
            _loc3_;
            _loc3_;
            _loc4_;
            Global.lobby_display.displayNewUnlock(this.unlocks[this.§_-m3§],this);
            _loc4_;
         }
         else
         {
            Global.lobby_display.hideUnlockPanel();
            _loc3_;
            _loc3_;
            this.§_-nx§();
         }
      }
      
      private function displayAwards() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         if(SafeGlobal.game_over_data.§_-U9§ != "")
         {
            _loc2_;
            _loc2_;
            this.awards = SafeGlobal.game_over_data.§_-U9§.split("|");
            _loc2_;
            Global.award_panel.§_-e-§(this.awards);
            _loc1_;
            _loc1_;
         }
         this.§_-nx§();
      }
      
      private function displayGamePositions() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc1_;
         Global.lobby_display.displayGamePositions(this);
         _loc2_;
         Global.coins.setInt(Global.coins.getInt() + SafeGlobal.game_over_data.§_-Qt§);
         _loc2_;
         _loc2_;
         Global.lobby_display.lobby_stats.§_-zB§();
      }
      
      private function §_-TI§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.end_stats = new GameEndStatsPanel(lobby_canvas,this);
         _loc2_;
         _loc2_;
         _loc1_;
         this.end_stats.x = 74;
         _loc2_;
         _loc2_;
         this.end_stats.y = 92;
         _loc2_;
         _loc2_;
         _loc2_;
         this.end_stats.name = "end_stats";
         lobby_canvas.addChild(this.end_stats);
         _loc2_;
         this.end_stats.tweenIn();
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.§_-Iw§ = true;
         _loc3_;
         _loc3_;
         _loc2_;
         if(param1 == Global.SCREEN_BROWSE_CAMPAIGN)
         {
            _loc3_;
            this.§_-4x§.§_-dX§();
            _loc2_;
            this.§_-4x§.§_-Wa§(param1);
            _loc3_;
            _loc3_;
            §_-dN§.visible = false;
            this.start_x = SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].positions[SafeGlobal.selected_level.level_id].x;
            _loc3_;
            _loc3_;
            this.start_y = SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].positions[SafeGlobal.selected_level.level_id].y;
            §_-R3§(this.start_x,this.start_y,true);
         }
         else if(param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM)
         {
            _loc3_;
            this.§_-4x§.§_-dX§();
            _loc3_;
            _loc3_;
            this.§_-4x§.§_-Wa§(param1);
            §_-dN§.visible = false;
            this.start_x = Global.positions[5][SafeGlobal.selected_level.§_-Tv§].x;
            _loc3_;
            _loc3_;
            this.start_y = Global.positions[5][SafeGlobal.selected_level.§_-Tv§].y;
            §_-R3§(this.start_x,this.start_y,true);
         }
         else if(param1 == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
         {
            _loc2_;
            this.§_-4x§.§_-dX§();
            _loc2_;
            _loc3_;
            _loc3_;
            this.§_-4x§.§_-Wa§(param1);
            §_-dN§.visible = false;
            this.start_x = Global.positions[5][SafeGlobal.selected_level.§_-Tv§].x;
            _loc3_;
            this.start_y = Global.positions[5][SafeGlobal.selected_level.§_-Tv§].y;
            _loc3_;
            _loc3_;
            §_-R3§(this.start_x,this.start_y,true);
            _loc2_;
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            if(param1 == Global.SCREEN_BROWSE_LATEST_CUSTOM)
            {
               _loc3_;
               this.§_-4x§.§_-dX§();
               _loc3_;
               _loc3_;
               this.§_-4x§.§_-Wa§(param1);
               _loc3_;
               _loc3_;
               §_-dN§.visible = false;
               _loc2_;
               _loc2_;
               this.start_x = Global.positions[5][SafeGlobal.selected_level.§_-Tv§].x;
               this.start_y = Global.positions[5][SafeGlobal.selected_level.§_-Tv§].y;
               §_-R3§(this.start_x,this.start_y,true);
            }
            else
            {
               _loc2_;
               if(param1 == Global.SCREEN_LOADING_BROWSE_GAMES)
               {
                  §_-j6§();
                  _loc2_;
                  _loc2_;
               }
               else if(param1 == Global.SCREEN_CUSTOM_GAME)
               {
                  _loc2_;
                  §_-TO§(null);
                  _loc2_;
               }
               else if(param1 == Global.SCREEN_WAITING_AREA)
               {
                  _loc3_;
                  _loc3_;
                  §_-TO§(null);
                  _loc2_;
               }
               else
               {
                  §_-hf§(1200);
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
         if(this.end_stats != null)
         {
            _loc3_;
            this.end_stats.tweenOut();
         }
      }
      
      override public function finishTweenOff() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         if(this.end_stats != null)
         {
            _loc2_;
            _loc2_;
            this.end_stats.visible = false;
            _loc1_;
         }
         SafeGlobal.GAME.finalDestroy();
      }
   }
}
