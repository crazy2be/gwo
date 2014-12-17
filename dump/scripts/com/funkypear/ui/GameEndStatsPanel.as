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
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         this.§_-m9§ = ["","ST","ND","RD","TH"];
         this.medals = ["","A GOLD MEDAL","A SILVER MEDAL","A BRONZE MEDAL","AN IRON MEDAL"];
         _loc3_;
         _loc3_;
         super();
         _loc4_;
         _loc4_;
         addFrameScript(0,this.frame1,14,this.frame15,28,this.frame29,43,this.frame44);
         this.lobby_canvas = param1;
         _loc4_;
         _loc4_;
         this.end_screen = param2;
         _loc4_;
         this.grav_icon_1.visible = false;
         _loc4_;
         this.grav_icon_2.visible = false;
      }
      
      public var §_-Nx§:TextField;
      
      public var xp4_text:TextField;
      
      public var xp5_text:TextField;
      
      public var §_-Bn§:MovieClip;
      
      public var §_-WN§:TextField;
      
      public var §_-3i§:TextField;
      
      public var grav_icon_2:§_-Bb§;
      
      public var §_-3k§:TextField;
      
      public var §_-nH§:TextField;
      
      public var §_-wO§:TextField;
      
      public var g2_text:TextField;
      
      public var §_-Id§:TextField;
      
      public var §_-7N§:TextField;
      
      public var §_-hq§:TextField;
      
      public var §_-Kw§:TextField;
      
      public var §_-37§:TextField;
      
      public var g1_text:TextField;
      
      public var grav_icon_1:§_-Bb§;
      
      public var §_-Af§:TextField;
      
      public var §_-D8§:TextField;
      
      public var §_-zc§:TextField;
      
      public var xp2_text:TextField;
      
      public var xp3_text:TextField;
      
      public var §_-W0§:TextField;
      
      public var xp1_text:TextField;
      
      public var §_-V2§:TextField;
      
      public var §_-Vi§:TextField;
      
      public var §_-6h§:TextField;
      
      public var §_-M4§:TextField;
      
      private var tween_x:Tween;
      
      private var lobby_canvas:Sprite;
      
      private var §_-m9§:Array;
      
      private var medals:Array;
      
      private var end_screen:LS_GameEnd;
      
      public function §_-8v§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:* = 0;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         if(SafeGlobal.selected_level.§_-L6§ == true && SafeGlobal.selected_level.§_-uM§ == false)
         {
            this.§_-7N§.text = "YOU WON " + this.medals[SafeGlobal.game_over_data.§_-a4§];
            _loc2_;
            _loc2_;
            _loc1_ = SafeGlobal.campaigns[SafeGlobal.selected_level.campaign_id].medals[SafeGlobal.selected_level.level_id];
            _loc3_;
            if(_loc1_ != 0)
            {
               this.§_-wO§.text = "PREVIOUS BEST: " + this.medals[_loc1_];
            }
            else
            {
               this.§_-wO§.text = "";
               _loc2_;
               _loc2_;
            }
         }
         else
         {
            this.§_-7N§.text = "YOU WON " + this.medals[SafeGlobal.game_over_data.§_-a4§];
            this.§_-wO§.text = "";
         }
      }
      
      public function §_-hu§() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = 0;
         var _loc1_:Array = SafeGlobal.game_over_data.§_-eT§.split(",");
         this.§_-nH§.text = String(_loc1_[Global.STAT_SHOTS_TAKEN]);
         _loc4_;
         this.§_-37§.text = String(_loc1_[Global.STAT_SHOTS_TAKEN] * Global.XP_SHOTS);
         this.§_-W0§.text = String(_loc1_[Global.STAT_ENEMY_HITS]);
         this.§_-hq§.text = String(_loc1_[Global.STAT_ENEMY_HITS] * Global.XP_HITS);
         _loc3_;
         this.§_-3k§.text = String(_loc1_[Global.STAT_SKILLSHOTS_HIT]);
         this.§_-Kw§.text = String(_loc1_[Global.STAT_SKILLSHOTS_HIT] * Global.XP_SKILLSHOTS);
         _loc4_;
         _loc4_;
         this.§_-zc§.text = String(SafeGlobal.game_over_data.§_-a4§);
         _loc4_;
         _loc4_;
         this.§_-3i§.text = this.§_-m9§[SafeGlobal.game_over_data.§_-a4§];
         _loc4_;
         _loc4_;
         if(SafeGlobal.§_-L8§)
         {
            this.§_-Id§.text = String(Global.§_-XV§[SafeGlobal.game_over_data.§_-a4§]);
            _loc4_;
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(SafeGlobal.game_over_data.§_-l-§ == 4)
            {
               this.§_-Id§.text = String(Global.XP_POSITION_4P[SafeGlobal.game_over_data.§_-a4§]);
               _loc4_;
               _loc4_;
            }
            else
            {
               _loc3_;
               _loc3_;
               _loc3_;
               if(SafeGlobal.game_over_data.§_-l-§ == 3)
               {
                  _loc3_;
                  this.§_-Id§.text = String(Global.XP_POSITION_3P[SafeGlobal.game_over_data.§_-a4§]);
                  _loc4_;
                  _loc4_;
               }
               else
               {
                  _loc4_;
                  _loc4_;
                  if(SafeGlobal.game_over_data.§_-l-§ == 2)
                  {
                     this.§_-Id§.text = String(Global.XP_POSITION_2P[SafeGlobal.game_over_data.§_-a4§]);
                  }
               }
            }
         }
         this.§_-Vi§.text = "POSITION";
         this.§_-M4§.text = "WEAPONS USED";
         this.§_-D8§.text = "SKILLSHOTS";
         _loc3_;
         this.§_-6h§.text = "SHOTS LANDED";
         this.xp1_text.text = "XP";
         this.xp2_text.text = "XP";
         this.xp3_text.text = "XP";
         this.xp4_text.text = "XP";
         _loc3_;
         if(SafeGlobal.§_-L8§)
         {
            _loc4_;
            _loc4_;
            _loc3_;
            if(SafeGlobal.game_over_data.§_-a4§ == 1)
            {
               _loc3_;
               _loc2_ = 20;
            }
            else
            {
               _loc2_ = 10;
            }
         }
         else
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            _loc2_ = (SafeGlobal.selected_level.max_players + 1 - SafeGlobal.game_over_data.§_-a4§) * 5;
         }
         this.§_-Nx§.text = String(_loc2_);
         _loc3_;
         this.§_-Af§.text = String(_loc2_);
         this.g1_text.text = "G";
         this.g2_text.text = "G";
         if(_loc2_ <= 9)
         {
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            this.grav_icon_1.x = 357;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            this.grav_icon_2.x = 360;
         }
         else
         {
            _loc3_;
            this.grav_icon_1.x = 342;
            _loc3_;
            _loc3_;
            _loc3_;
            this.grav_icon_2.x = 342;
         }
         this.grav_icon_1.visible = true;
         _loc3_;
         _loc3_;
         this.grav_icon_2.visible = true;
      }
      
      public function §_-fi§() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:Class = null;
         var _loc2_:Sprite = null;
         _loc3_;
         if(SafeGlobal.game_over_data.§_-Vm§ != 0)
         {
            _loc3_;
            _loc1_ = getDefinitionByName("BoosterIcon" + SafeGlobal.game_over_data.§_-Vm§) as Class;
            _loc2_ = new _loc1_();
            _loc3_;
            _loc2_.scaleX = 0.8;
            _loc3_;
            _loc3_;
            _loc2_.scaleY = 0.8;
            this.§_-Bn§.addChild(_loc2_);
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            SafeGlobal.§_-QC§[SafeGlobal.game_over_data.§_-Vm§].setInt(SafeGlobal.§_-QC§[SafeGlobal.game_over_data.§_-Vm§].getInt() - 1);
            if(SafeGlobal.§_-QC§[SafeGlobal.game_over_data.§_-Vm§].getInt() == 0)
            {
               SafeGlobal.§_-Ds§.setInt(SafeGlobal.§_-i5§);
            }
         }
         this.§_-V2§.text = String(SafeGlobal.game_over_data.§_-EW§);
         _loc3_;
         this.xp5_text.text = "XP";
         _loc3_;
         _loc3_;
         this.§_-WN§.text = "TOTAL";
         _loc3_;
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
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:int = Global.getLevel(Global.teamXP.getInt());
         _loc3_;
         _loc3_;
         Global.teamXP.setInt(Global.teamXP.getInt() + SafeGlobal.game_over_data.§_-EW§);
         _loc4_;
         Global.lobby_display.lobby_stats.§_-X6§(Global.teamXP.getInt());
         var _loc2_:int = Global.getLevel(Global.teamXP.getInt());
         _loc3_;
         _loc3_;
         this.end_screen.§_-nx§();
         _loc4_;
         _loc4_;
         Global.lobby_display.lobby_menu.updateButtons();
      }
      
      public function §_-Wz§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.end_screen.§_-nx§();
      }
      
      public function tweenOut() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         var _loc1_:Number = x;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.tween_x = new Tween(this,"x",Strong.easeOut,_loc1_,_loc1_ + 800,1,true);
         _loc2_;
         _loc2_;
         _loc3_;
         this.tween_x.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOut,false,0,true);
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
         _loc1_;
         stop();
      }
      
      function frame15() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-8v§();
      }
      
      function frame29() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-hu§();
      }
      
      function frame44() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-fi§();
         _loc1_;
         _loc1_;
         stop();
      }
   }
}
