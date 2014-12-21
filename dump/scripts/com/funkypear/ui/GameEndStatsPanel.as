package com.funkypear.ui
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import fl.transitions.Tween;
   import flash.display.Sprite;
   import fl.transitions.easing.*;
   import flash.utils.getDefinitionByName;
   import fl.transitions.TweenEvent;
   
   public class GameEndStatsPanel extends MovieClip
   {
      
      public function GameEndStatsPanel(param1:Sprite, param2:LS_GameEnd)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         this.§_-jI§ = ["","ST","ND","RD","TH"];
         this.medals = ["","A GOLD MEDAL","A SILVER MEDAL","A BRONZE MEDAL","AN IRON MEDAL"];
         super();
         addFrameScript(0,this.frame1,14,this.frame15,28,this.frame29,43,this.frame44);
         this.lobby_canvas = param1;
         this.end_screen = param2;
         this.grav_icon_1.visible = false;
         this.grav_icon_2.visible = false;
      }
      
      public var §_-yJ§:TextField;
      
      public var xp4_text:TextField;
      
      public var xp5_text:TextField;
      
      public var §_-oK§:MovieClip;
      
      public var §_-yE§:TextField;
      
      public var §_-Be§:TextField;
      
      public var grav_icon_2:§_-83§;
      
      public var §_-AL§:TextField;
      
      public var §true§:TextField;
      
      public var §_-Wa§:TextField;
      
      public var g2_text:TextField;
      
      public var §_-Jj§:TextField;
      
      public var §_-7S§:TextField;
      
      public var §_-ho§:TextField;
      
      public var §_-Sx§:TextField;
      
      public var §_-q5§:TextField;
      
      public var g1_text:TextField;
      
      public var grav_icon_1:§_-83§;
      
      public var §_-0-K§:TextField;
      
      public var §_-CF§:TextField;
      
      public var §_-g4§:TextField;
      
      public var xp2_text:TextField;
      
      public var xp3_text:TextField;
      
      public var §_-5J§:TextField;
      
      public var xp1_text:TextField;
      
      public var §_-Lc§:TextField;
      
      public var §_-GC§:TextField;
      
      public var §_-YH§:TextField;
      
      public var §_-6R§:TextField;
      
      private var tween_x:Tween;
      
      private var lobby_canvas:Sprite;
      
      private var §_-jI§:Array;
      
      private var medals:Array;
      
      private var end_screen:LS_GameEnd;
      
      public function §_-Hp§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:* = 0;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(SafeGlobal.selected_level.§_-Td§ == true && SafeGlobal.selected_level.§_-tn§ == false)
         {
            this.§_-7S§.text = "YOU WON " + this.medals[SafeGlobal.game_over_data.§_-Ht§];
            _loc2_;
            _loc1_ = SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].medals[SafeGlobal.selected_level.level_id];
            _loc3_;
            if(_loc1_ != 0)
            {
               this.§_-Wa§.text = "PREVIOUS BEST: " + this.medals[_loc1_];
            }
            else
            {
               this.§_-Wa§.text = "";
               _loc2_;
            }
         }
         else
         {
            this.§_-7S§.text = "YOU WON " + this.medals[SafeGlobal.game_over_data.§_-Ht§];
            _loc3_;
            _loc3_;
            this.§_-Wa§.text = "";
         }
      }
      
      public function §_-wT§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = 0;
         var _loc1_:Array = SafeGlobal.game_over_data.§_-5C§.split(",");
         this.§true§.text = String(_loc1_[Global.STAT_SHOTS_TAKEN]);
         this.§_-q5§.text = String(_loc1_[Global.STAT_SHOTS_TAKEN] * Global.XP_SHOTS);
         this.§_-5J§.text = String(_loc1_[Global.STAT_ENEMY_HITS]);
         this.§_-ho§.text = String(_loc1_[Global.STAT_ENEMY_HITS] * Global.XP_HITS);
         this.§_-AL§.text = String(_loc1_[Global.STAT_SKILLSHOTS_HIT]);
         this.§_-Sx§.text = String(_loc1_[Global.STAT_SKILLSHOTS_HIT] * Global.XP_SKILLSHOTS);
         this.§_-g4§.text = String(SafeGlobal.game_over_data.§_-Ht§);
         this.§_-Be§.text = this.§_-jI§[SafeGlobal.game_over_data.§_-Ht§];
         _loc4_;
         _loc4_;
         if(SafeGlobal.§_-yj§)
         {
            _loc4_;
            _loc4_;
            this.§_-Jj§.text = String(Global.§_-Ly§[SafeGlobal.game_over_data.§_-Ht§]);
            _loc4_;
            _loc4_;
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc3_;
            if(SafeGlobal.game_over_data.§_-aY§ == 4)
            {
               this.§_-Jj§.text = String(Global.XP_POSITION_4P[SafeGlobal.game_over_data.§_-Ht§]);
            }
            else
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               if(SafeGlobal.game_over_data.§_-aY§ == 3)
               {
                  this.§_-Jj§.text = String(Global.XP_POSITION_3P[SafeGlobal.game_over_data.§_-Ht§]);
               }
               else
               {
                  _loc4_;
                  _loc3_;
                  _loc3_;
                  _loc3_;
                  if(SafeGlobal.game_over_data.§_-aY§ == 2)
                  {
                     this.§_-Jj§.text = String(Global.XP_POSITION_2P[SafeGlobal.game_over_data.§_-Ht§]);
                     _loc4_;
                  }
               }
            }
         }
         this.§_-GC§.text = "POSITION";
         this.§_-6R§.text = "WEAPONS USED";
         _loc4_;
         _loc4_;
         this.§_-CF§.text = "SKILLSHOTS";
         this.§_-YH§.text = "SHOTS LANDED";
         this.xp1_text.text = "XP";
         _loc3_;
         _loc3_;
         this.xp2_text.text = "XP";
         _loc3_;
         this.xp3_text.text = "XP";
         this.xp4_text.text = "XP";
         if(SafeGlobal.§_-yj§)
         {
            _loc3_;
            if(SafeGlobal.game_over_data.§_-Ht§ == 1)
            {
               _loc4_;
               _loc2_ = 20;
               _loc4_;
            }
            else
            {
               _loc2_ = 10;
            }
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc2_ = (SafeGlobal.selected_level.max_players + 1 - SafeGlobal.game_over_data.§_-Ht§) * 5;
            _loc3_;
            _loc3_;
         }
         this.§_-yJ§.text = String(_loc2_);
         this.§_-0-K§.text = String(_loc2_);
         this.g1_text.text = "G";
         _loc4_;
         _loc4_;
         this.g2_text.text = "G";
         if(_loc2_ <= 9)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            this.grav_icon_1.x = 342;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            this.grav_icon_2.x = 345;
         }
         else
         {
            _loc3_;
            this.grav_icon_1.x = 327;
            _loc3_;
            _loc4_;
            _loc4_;
            this.grav_icon_2.x = 327;
         }
         this.grav_icon_1.visible = true;
         this.grav_icon_2.visible = true;
      }
      
      public function §_-xK§() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Class = null;
         var _loc2_:Sprite = null;
         _loc4_;
         _loc4_;
         if(SafeGlobal.game_over_data.§_-ZL§ != 0)
         {
            _loc4_;
            _loc4_;
            _loc1_ = getDefinitionByName("BoosterIcon" + SafeGlobal.game_over_data.§_-ZL§) as Class;
            _loc2_ = new _loc1_();
            _loc4_;
            _loc2_.scaleX = 0.8;
            _loc2_.scaleY = 0.8;
            this.§_-oK§.addChild(_loc2_);
            _loc4_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            SafeGlobal.§_-f0§[SafeGlobal.game_over_data.§_-ZL§].setInt(SafeGlobal.§_-f0§[SafeGlobal.game_over_data.§_-ZL§].getInt() - 1);
            _loc4_;
            if(SafeGlobal.§_-f0§[SafeGlobal.game_over_data.§_-ZL§].getInt() == 0)
            {
               _loc3_;
               SafeGlobal.§_-eN§.setInt(SafeGlobal.§_-pt§);
            }
         }
         this.§_-Lc§.text = String(SafeGlobal.game_over_data.§_-nn§);
         _loc3_;
         _loc3_;
         this.xp5_text.text = "XP";
         _loc4_;
         this.§_-yE§.text = "TOTAL";
         _loc3_;
         this.finishTweenIn();
      }
      
      public function tweenIn() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         gotoAndPlay(2);
      }
      
      public function finishTweenIn() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:int = Global.getLevel(Global.teamXP.getInt());
         _loc4_;
         Global.teamXP.setInt(Global.teamXP.getInt() + SafeGlobal.game_over_data.§_-nn§);
         _loc4_;
         Global.lobby_display.lobby_stats.§_-WU§(Global.teamXP.getInt());
         var _loc2_:int = Global.getLevel(Global.teamXP.getInt());
         _loc4_;
         _loc4_;
         this.end_screen.§_-LL§();
         _loc3_;
         _loc3_;
         Global.lobby_display.lobby_menu.updateButtons();
      }
      
      public function §_-cB§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.end_screen.§_-LL§();
      }
      
      public function tweenOut() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Number = x;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc2_;
         this.tween_x = new Tween(this,"x",Strong.easeOut,_loc1_,_loc1_ + 800,1,true);
         _loc2_;
         _loc2_;
         _loc2_;
         this.tween_x.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOut,false,0,true);
         _loc3_;
         _loc3_;
         this.tween_x.start();
      }
      
      public function finishTweenOut(param1:TweenEvent) : void
      {
         var te:TweenEvent = param1;
         try
         {
            this.lobby_canvas.removeChild(this);
         }
         catch(e:Error)
         {
         }
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         stop();
      }
      
      function frame15() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-Hp§();
      }
      
      function frame29() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.§_-wT§();
      }
      
      function frame44() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-xK§();
         _loc2_;
         _loc2_;
         stop();
      }
   }
}
