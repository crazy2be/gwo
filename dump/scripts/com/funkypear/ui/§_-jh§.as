package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import §_-bY§.§_-mr§;
   import §_-bY§.§_-2u§;
   import fl.transitions.Tween;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import fl.transitions.easing.*;
   import fl.transitions.TweenEvent;
   
   public class §_-jh§ extends Sprite
   {
      
      public function §_-jh§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
         mouseEnabled = false;
         _loc2_;
         _loc2_;
         mouseChildren = true;
         _loc2_;
         this.bg.mouseEnabled = false;
         this.bg.mouseChildren = false;
         _loc1_;
         _loc1_;
         if(this.§_-m6§ == null)
         {
            this.§_-m6§ = new LobbyNavScreenTitle();
            _loc2_;
            _loc2_;
            _loc2_;
            this.§_-m6§.x = 76;
            _loc2_;
            _loc1_;
            this.§_-m6§.y = 0;
            _loc2_;
            _loc1_;
            _loc1_;
            this.§_-m6§.mouseEnabled = false;
            this.§_-m6§.mouseChildren = false;
            addChild(this.§_-m6§);
         }
         _loc1_;
         _loc1_;
         if(this.§_-r9§ == null)
         {
            this.§_-r9§ = new §_-mr§();
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            _loc2_;
            this.§_-r9§.x = 12;
            this.§_-r9§.y = 11;
            _loc2_;
            addChild(this.§_-r9§);
         }
      }
      
      public var bg:MovieClip;
      
      private var §_-bo§:Boolean = false;
      
      private var current_screen:int = -1;
      
      private var start_y:Number = 39;
      
      private var §_-r9§:§_-mr§;
      
      private var back_button:§_-2u§;
      
      private var §_-m6§:LobbyNavScreenTitle;
      
      private var §_-yS§:Boolean = false;
      
      private var tween_y:Tween;
      
      private var §_-XK§:Tween;
      
      private var §_-xI§:Timer;
      
      private var §_-Iu§:int = 7000;
      
      public function §_-Di§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         if(this.§_-r9§ != null)
         {
            _loc1_;
            _loc1_;
            _loc1_;
            this.§_-r9§.setActive(false);
            _loc2_;
            _loc2_;
            this.§_-r9§.alpha = 0.3;
            _loc1_;
            _loc1_;
         }
         this.§_-m6§.§_-P8§("");
      }
      
      public function updateTitleText(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-m6§.§_-G6§(param1);
      }
      
      public function updateButtons(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.current_screen != param1)
         {
            _loc3_;
            _loc3_;
            this.current_screen = param1;
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            _loc2_;
            if(this.current_screen == Global.SCREEN_WAITING_AREA)
            {
               this.§_-Di§();
               this.§_-bo§ = false;
               this.§_-xI§ = new Timer(this.§_-Iu§,1);
               _loc2_;
               _loc2_;
               this.§_-xI§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-CM§,false,0,true);
               this.§_-xI§.start();
               _loc2_;
            }
            else
            {
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               if(this.current_screen == Global.SCREEN_GAME_END || this.current_screen == Global.SCREEN_LOADING_BROWSE_GAMES || this.current_screen == Global.SCREEN_LOADING_CUSTOM_GAME || this.current_screen == Global.SCREEN_LOADING_SHARE_CODE || this.current_screen == Global.SCREEN_LOADING_REPLAYS || this.current_screen == Global.SCREEN_SAVING_REPLAY || this.current_screen == Global.SCREEN_LOADING_LATEST_MAPS)
               {
                  this.§_-Di§();
                  _loc3_;
                  if(this.current_screen == Global.SCREEN_GAME_END)
                  {
                     _loc3_;
                     _loc3_;
                     _loc3_;
                     _loc3_;
                     _loc3_;
                     Global.lobby_display.lobby_players.finishUpdateBackButton(false);
                     _loc2_;
                     _loc2_;
                  }
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  this.§_-r9§.alpha = 1;
                  _loc2_;
                  _loc3_;
                  this.§_-r9§.visible = true;
                  _loc3_;
                  _loc2_;
                  _loc2_;
                  _loc3_;
                  _loc3_;
                  this.§_-r9§.setActive(true);
                  _loc3_;
                  _loc2_;
                  _loc2_;
                  Global.lobby_display.lobby_players.finishUpdateBackButton();
               }
            }
            _loc2_;
            _loc3_;
            _loc3_;
            this.§_-m6§.§_-P8§(this.§_-Ro§());
         }
         else
         {
            _loc3_;
            if(param1 == Global.SCREEN_EDITOR_SLOTS || param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM || param1 == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM || param1 == Global.SCREEN_BROWSE_LATEST_CUSTOM || param1 == Global.SCREEN_BROWSE_GAMES)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               this.§_-r9§.alpha = 1;
               _loc3_;
               _loc3_;
               _loc2_;
               _loc3_;
               _loc3_;
               this.§_-r9§.visible = true;
               _loc2_;
               _loc2_;
               this.§_-r9§.setActive(true);
               Global.lobby_display.lobby_players.finishUpdateBackButton();
               _loc2_;
               _loc2_;
               this.§_-m6§.§_-P8§(this.§_-Ro§());
            }
         }
      }
      
      public function §_-v§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.§_-r9§ != null)
         {
            _loc1_;
            _loc1_;
            _loc1_;
            this.§_-r9§.alpha = 1;
            _loc1_;
            _loc1_;
            _loc1_;
            _loc2_;
            this.§_-r9§.visible = true;
            _loc2_;
            this.§_-r9§.setActive(true);
            _loc2_;
         }
         Global.lobby_display.lobby_players.finishUpdateBackButton();
      }
      
      public function §_-Un§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-bo§ = true;
         _loc2_;
         _loc2_;
         this.§_-Di§();
         _loc1_;
         if(this.§_-xI§ != null)
         {
            _loc2_;
            _loc2_;
            this.§_-xI§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§_-CM§);
            _loc2_;
            _loc2_;
            this.§_-xI§.stop();
            this.§_-xI§ = null;
            _loc2_;
            _loc2_;
         }
         Global.lobby_display.lobby_players.finishUpdateBackButton(false);
      }
      
      private function §_-CM§(param1:TimerEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(this.§_-xI§ != null)
         {
            _loc3_;
            _loc3_;
            if(this.§_-xI§.hasEventListener(TimerEvent.TIMER_COMPLETE))
            {
               this.§_-xI§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§_-CM§);
            }
            this.§_-xI§ = null;
         }
         if(!this.§_-bo§)
         {
            _loc3_;
            _loc3_;
            if(this.§_-r9§ != null)
            {
               _loc2_;
               _loc2_;
               this.§_-r9§.alpha = 1;
               _loc2_;
               _loc2_;
               _loc2_;
               _loc2_;
               this.§_-r9§.visible = true;
               this.§_-r9§.setActive(true);
            }
            Global.lobby_display.lobby_players.finishUpdateBackButton();
            if(Global.other_stats[Global.OSTAT_GAMES_PLAYED] == 0)
            {
               Global.help_manager.§_-8d§();
            }
         }
      }
      
      private function §_-Ro§() : String
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc2_;
         if(this.current_screen == Global.SCREEN_EDITOR_SLOTS)
         {
            if(Global.page_max_editorslots > 1)
            {
               _loc2_;
               return String("(" + (Global.page_id_editorslots + 1) + "/" + Global.page_max_editorslots + ")");
            }
            _loc2_;
            return "";
         }
         if(this.current_screen == Global.SCREEN_BROWSE_YOUR_CUSTOM)
         {
            _loc1_;
            if(Global.page_max_your_custom > 1)
            {
               return String("(" + (Global.page_id_your_custom + 1) + "/" + Global.page_max_your_custom + ")");
            }
            _loc1_;
            _loc1_;
            return "";
         }
         if(this.current_screen == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
         {
            _loc1_;
            _loc1_;
            _loc2_;
            _loc2_;
            if(Global.page_max_campaign_custom > 1)
            {
               return String("(" + (Global.page_id_campaign_custom + 1) + "/" + Global.page_max_campaign_custom + ")");
            }
            _loc2_;
            _loc2_;
            return "";
         }
         _loc1_;
         if(this.current_screen == Global.SCREEN_BROWSE_LATEST_CUSTOM)
         {
            _loc2_;
            if(Global.page_max_latest_custom > 1)
            {
               return String("(" + (Global.page_id_latest_custom + 1) + "/" + Global.page_max_latest_custom + ")");
            }
            return "";
         }
         _loc1_;
         if(this.current_screen == Global.SCREEN_BROWSE_GAMES)
         {
            _loc2_;
            if(Global.page_max_browsegames > 1)
            {
               return String("(" + (Global.page_id_browsegames + 1) + "/" + Global.page_max_browsegames + ")");
            }
            return "";
         }
         return "";
      }
      
      public function §_-75§() : void
      {
      }
      
      public function §_-qQ§() : void
      {
      }
      
      public function §_-vB§() : void
      {
      }
      
      public function tweenOut() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-Un§();
         _loc1_;
         if(this.§_-yS§)
         {
            _loc2_;
            this.tween_y = new Tween(this,"y",Strong.easeOut,y,-92,1,true);
            _loc2_;
            _loc2_;
            _loc1_;
            this.tween_y.addEventListener(TweenEvent.MOTION_FINISH,this.§_-ro§,false,0,true);
            _loc2_;
            this.tween_y.start();
         }
      }
      
      public function tweenIn(param1:Boolean = false) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         visible = true;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         if(!this.§_-yS§)
         {
            this.tween_y = new Tween(this,"y",Strong.easeOut,-92,3,1,true);
            _loc3_;
            _loc2_;
            this.tween_y.addEventListener(TweenEvent.MOTION_FINISH,this.§_-qZ§,false,0,true);
            this.tween_y.start();
         }
         if(param1)
         {
            this.§_-r9§.setActive(false);
         }
      }
      
      private function §_-ro§(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-yS§ = false;
         _loc3_;
         _loc3_;
         visible = false;
      }
      
      private function §_-qZ§(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-yS§ = true;
         _loc3_;
         visible = true;
      }
      
      public function §_-Rn§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-r9§.setActive(true);
      }
   }
}
