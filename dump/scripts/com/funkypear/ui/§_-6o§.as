package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import §_-ZN§.§_-N3§;
   import §_-ZN§.§_-cA§;
   import fl.transitions.Tween;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import fl.transitions.easing.*;
   import fl.transitions.TweenEvent;
   
   public class §_-6o§ extends Sprite
   {
      
      public function §_-6o§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         mouseEnabled = false;
         mouseChildren = true;
         this.bg.mouseEnabled = false;
         this.bg.mouseChildren = false;
         _loc2_;
         _loc2_;
         if(this.§_-pC§ == null)
         {
            _loc2_;
            this.§_-pC§ = new LobbyNavScreenTitle();
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc1_;
            _loc1_;
            this.§_-pC§.x = 76;
            _loc1_;
            _loc1_;
            this.§_-pC§.y = 0;
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            this.§_-pC§.mouseEnabled = false;
            this.§_-pC§.mouseChildren = false;
            _loc2_;
            _loc2_;
            addChild(this.§_-pC§);
         }
         _loc2_;
         if(this.§_-HK§ == null)
         {
            this.§_-HK§ = new §_-N3§();
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            this.§_-HK§.x = 12;
            _loc1_;
            _loc1_;
            this.§_-HK§.y = 11;
            addChild(this.§_-HK§);
         }
      }
      
      public var bg:MovieClip;
      
      private var §_-a0§:Boolean = false;
      
      private var current_screen:int = -1;
      
      private var start_y:Number = 39;
      
      private var §_-HK§:§_-N3§;
      
      private var back_button:§_-cA§;
      
      private var §_-pC§:LobbyNavScreenTitle;
      
      private var §_-EK§:Boolean = false;
      
      private var tween_y:Tween;
      
      private var §_-y9§:Tween;
      
      private var §_-8e§:Timer;
      
      private var §_-xU§:int = 7000;
      
      public function §_-FW§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.§_-HK§ != null)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            this.§_-HK§.setActive(false);
            _loc1_;
            _loc1_;
            this.§_-HK§.alpha = 0.3;
            _loc1_;
            _loc1_;
         }
         this.§_-pC§.§_-d5§("");
      }
      
      public function updateTitleText(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-pC§.§_-8s§(param1);
      }
      
      public function updateButtons(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.current_screen != param1)
         {
            this.current_screen = param1;
            _loc3_;
            _loc2_;
            _loc2_;
            _loc2_;
            if(this.current_screen == Global.SCREEN_WAITING_AREA)
            {
               _loc3_;
               this.§_-FW§();
               _loc2_;
               _loc2_;
               this.§_-a0§ = false;
               this.§_-8e§ = new Timer(this.§_-xU§,1);
               this.§_-8e§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-T7§,false,0,true);
               this.§_-8e§.start();
            }
            else
            {
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               _loc3_;
               _loc3_;
               _loc2_;
               _loc2_;
               if(this.current_screen == Global.SCREEN_GAME_END || this.current_screen == Global.SCREEN_LOADING_BROWSE_GAMES || this.current_screen == Global.SCREEN_LOADING_CUSTOM_GAME || this.current_screen == Global.SCREEN_LOADING_SHARE_CODE || this.current_screen == Global.SCREEN_LOADING_REPLAYS || this.current_screen == Global.SCREEN_SAVING_REPLAY || this.current_screen == Global.SCREEN_LOADING_LATEST_MAPS)
               {
                  _loc2_;
                  _loc2_;
                  this.§_-FW§();
                  if(this.current_screen == Global.SCREEN_GAME_END)
                  {
                     _loc2_;
                     _loc3_;
                     _loc3_;
                     Global.lobby_display.lobby_players.finishUpdateBackButton(false);
                  }
               }
               else
               {
                  _loc3_;
                  _loc2_;
                  _loc2_;
                  this.§_-HK§.alpha = 1;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  _loc2_;
                  this.§_-HK§.visible = true;
                  _loc3_;
                  _loc2_;
                  this.§_-HK§.setActive(true);
                  _loc2_;
                  _loc2_;
                  _loc3_;
                  Global.lobby_display.lobby_players.finishUpdateBackButton();
               }
            }
            _loc2_;
            _loc2_;
            _loc2_;
            this.§_-pC§.§_-d5§(this.§_-eU§());
         }
         else if(param1 == Global.SCREEN_EDITOR_SLOTS || param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM || param1 == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM || param1 == Global.SCREEN_BROWSE_LATEST_CUSTOM || param1 == Global.SCREEN_BROWSE_GAMES)
         {
            _loc3_;
            _loc2_;
            _loc2_;
            this.§_-HK§.alpha = 1;
            _loc3_;
            _loc3_;
            _loc3_;
            this.§_-HK§.visible = true;
            this.§_-HK§.setActive(true);
            _loc3_;
            _loc3_;
            Global.lobby_display.lobby_players.finishUpdateBackButton();
            this.§_-pC§.§_-d5§(this.§_-eU§());
         }
         
      }
      
      public function §_-MS§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         _loc2_;
         if(this.§_-HK§ != null)
         {
            _loc2_;
            _loc2_;
            this.§_-HK§.alpha = 1;
            _loc2_;
            _loc2_;
            _loc1_;
            _loc2_;
            this.§_-HK§.visible = true;
            _loc2_;
            _loc2_;
            this.§_-HK§.setActive(true);
            _loc1_;
            _loc1_;
         }
         Global.lobby_display.lobby_players.finishUpdateBackButton();
      }
      
      public function §_-BV§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.§_-a0§ = true;
         this.§_-FW§();
         if(this.§_-8e§ != null)
         {
            _loc1_;
            this.§_-8e§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§_-T7§);
            this.§_-8e§.stop();
            _loc1_;
            this.§_-8e§ = null;
         }
         Global.lobby_display.lobby_players.finishUpdateBackButton(false);
      }
      
      private function §_-T7§(param1:TimerEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         if(this.§_-8e§ != null)
         {
            _loc3_;
            if(this.§_-8e§.hasEventListener(TimerEvent.TIMER_COMPLETE))
            {
               _loc3_;
               this.§_-8e§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§_-T7§);
            }
            this.§_-8e§ = null;
            _loc2_;
         }
         if(!this.§_-a0§)
         {
            _loc2_;
            _loc3_;
            if(this.§_-HK§ != null)
            {
               _loc2_;
               _loc2_;
               this.§_-HK§.alpha = 1;
               _loc3_;
               _loc2_;
               _loc2_;
               _loc2_;
               this.§_-HK§.visible = true;
               _loc2_;
               this.§_-HK§.setActive(true);
               _loc3_;
            }
            Global.lobby_display.lobby_players.finishUpdateBackButton();
            _loc2_;
            _loc2_;
            if(Global.other_stats[Global.OSTAT_GAMES_PLAYED] == 0)
            {
               Global.help_manager.§_-gV§();
            }
         }
      }
      
      private function §_-eU§() : String
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.current_screen == Global.SCREEN_EDITOR_SLOTS)
         {
            _loc2_;
            if(Global.page_max_editorslots > 1)
            {
               return String("(" + (Global.page_id_editorslots + 1) + "/" + Global.page_max_editorslots + ")");
            }
            _loc2_;
            return "";
         }
         _loc1_;
         if(this.current_screen == Global.SCREEN_BROWSE_YOUR_CUSTOM)
         {
            _loc2_;
            if(Global.page_max_your_custom > 1)
            {
               return String("(" + (Global.page_id_your_custom + 1) + "/" + Global.page_max_your_custom + ")");
            }
            _loc2_;
            return "";
         }
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.current_screen == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
         {
            if(Global.page_max_campaign_custom > 1)
            {
               return String("(" + (Global.page_id_campaign_custom + 1) + "/" + Global.page_max_campaign_custom + ")");
            }
            _loc1_;
            _loc1_;
            return "";
         }
         _loc1_;
         _loc2_;
         _loc2_;
         if(this.current_screen == Global.SCREEN_BROWSE_LATEST_CUSTOM)
         {
            if(Global.page_max_latest_custom > 1)
            {
               return String("(" + (Global.page_id_latest_custom + 1) + "/" + Global.page_max_latest_custom + ")");
            }
            return "";
         }
         _loc1_;
         _loc1_;
         _loc2_;
         if(this.current_screen == Global.SCREEN_BROWSE_GAMES)
         {
            if(Global.page_max_browsegames > 1)
            {
               return String("(" + (Global.page_id_browsegames + 1) + "/" + Global.page_max_browsegames + ")");
            }
            return "";
         }
         return "";
      }
      
      public function §_-j§() : void
      {
      }
      
      public function §_-iG§() : void
      {
      }
      
      public function §_-8w§() : void
      {
      }
      
      public function tweenOut() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-BV§();
         _loc1_;
         if(this.§_-EK§)
         {
            _loc1_;
            _loc1_;
            this.tween_y = new Tween(this,"y",Strong.easeOut,y,-92,1,true);
            _loc2_;
            _loc2_;
            _loc2_;
            this.tween_y.addEventListener(TweenEvent.MOTION_FINISH,this.§_-hs§,false,0,true);
            _loc1_;
            this.tween_y.start();
         }
      }
      
      public function tweenIn(param1:Boolean = false) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         visible = true;
         _loc2_;
         _loc2_;
         if(!this.§_-EK§)
         {
            _loc2_;
            this.tween_y = new Tween(this,"y",Strong.easeOut,-92,3,1,true);
            _loc2_;
            this.tween_y.addEventListener(TweenEvent.MOTION_FINISH,this.§_-Hy§,false,0,true);
            _loc3_;
            this.tween_y.start();
            _loc3_;
         }
         if(param1)
         {
            _loc2_;
            this.§_-HK§.setActive(false);
         }
      }
      
      private function §_-hs§(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-EK§ = false;
         _loc2_;
         _loc2_;
         visible = false;
      }
      
      private function §_-Hy§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-EK§ = true;
         _loc3_;
         _loc3_;
         visible = true;
      }
      
      public function §_-k6§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-HK§.setActive(true);
      }
   }
}
