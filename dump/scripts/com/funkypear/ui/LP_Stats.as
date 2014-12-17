package com.funkypear.ui
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.events.MouseEvent;
   import flash.display.Sprite;
   
   public class LP_Stats extends §_-A3§
   {
      
      public function LP_Stats(param1:Sprite)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         super(param1);
         this.§_-db§.addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         this.§_-db§.addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         this.§_-db§.addEventListener(MouseEvent.CLICK,this.§_-VV§,false,0,true);
         this.§_-db§.mouseEnabled = false;
         _loc3_;
         _loc3_;
         this.§_-db§.mouseChildren = false;
         _loc2_;
         this.§_-db§.buttonMode = false;
         this.§_-db§.gotoAndStop("off");
         _loc3_;
         this.§_-cL§ = true;
      }
      
      public var §_-db§:MovieClip;
      
      public var §_-Oe§:TextField;
      
      public var §_-7g§:TextField;
      
      public var §_-Ek§:TextField;
      
      public var §_-K§:TextField;
      
      public var §_-Tx§:TextField;
      
      public var §_-o0§:TextField;
      
      public var §_-GV§:TextField;
      
      public var §_-qw§:TextField;
      
      public var §_-r6§:TextField;
      
      public var §_-f0§:TextField;
      
      public var §_-Y7§:TextField;
      
      public var §_-hD§:TextField;
      
      public var §_-CV§:TextField;
      
      public var §_-D9§:TextField;
      
      public var §_-BF§:TextField;
      
      public var §_-sE§:TextField;
      
      public var §_-5T§:TextField;
      
      public var §_-AE§:TextField;
      
      public var §_-P1§:TextField;
      
      public var §_-u-§:TextField;
      
      public var §_-0S§:TextField;
      
      public var §_-95§:TextField;
      
      public var §_-E-§:TextField;
      
      public var §_-nb§:TextField;
      
      public var §_-8g§:TextField;
      
      public var §_-iM§:TextField;
      
      public var §_-zr§:TextField;
      
      private var §_-cL§:Boolean = false;
      
      private function §true §(param1:Number) : String
      {
         var _loc13_:* = false;
         var _loc14_:* = true;
         var _loc2_:Number = 60;
         var _loc3_:Number = 3600;
         var _loc4_:Number = 86400;
         var _loc5_:Number = 604800;
         var _loc6_:Number = 31449600;
         var _loc7_:Number = 0;
         var _loc8_:Number = 0;
         var _loc9_:Number = 0;
         var _loc10_:Number = 0;
         var _loc11_:Number = 0;
         var _loc12_:Number = 0;
         _loc13_;
         if(param1 >= _loc6_)
         {
            _loc14_;
            _loc14_;
            _loc7_ = Math.floor(param1 / _loc6_);
            _loc13_;
            _loc13_;
            _loc8_ = Math.floor((param1 - _loc7_ * _loc6_) / _loc5_);
            _loc13_;
            _loc13_;
            _loc9_ = Math.floor((param1 - _loc7_ * _loc6_ - _loc8_ * _loc5_) / _loc4_);
            return String(_loc7_ + "<font size=\'14\'>Y</font> " + _loc8_ + "<font size=\'14\'>W</font> " + _loc9_ + "<font size=\'14\'>D</font>");
         }
         _loc14_;
         _loc14_;
         _loc14_;
         _loc14_;
         if(param1 >= _loc5_)
         {
            _loc8_ = Math.floor(param1 / _loc5_);
            _loc9_ = Math.floor((param1 - _loc8_ * _loc5_) / _loc4_);
            _loc14_;
            _loc14_;
            _loc14_;
            _loc14_;
            _loc10_ = Math.floor((param1 - _loc8_ * _loc5_ - _loc9_ * _loc4_) / _loc3_);
            return String(_loc8_ + "<font size=\'14\'>W</font> " + _loc9_ + "<font size=\'14\'>D</font> " + _loc10_ + "<font size=\'14\'>H</font>");
         }
         _loc13_;
         _loc13_;
         if(param1 >= _loc4_)
         {
            _loc13_;
            _loc14_;
            _loc9_ = Math.floor(param1 / _loc4_);
            _loc14_;
            _loc14_;
            _loc10_ = Math.floor((param1 - _loc9_ * _loc4_) / _loc3_);
            _loc11_ = Math.floor((param1 - _loc9_ * _loc4_ - _loc10_ * _loc3_) / _loc2_);
            _loc13_;
            return String(_loc9_ + "<font size=\'14\'>D</font> " + _loc10_ + "<font size=\'14\'>H</font> " + _loc11_ + "<font size=\'14\'>M</font>");
         }
         _loc13_;
         _loc10_ = Math.floor(param1 / _loc3_);
         _loc14_;
         _loc11_ = Math.floor((param1 - _loc10_ * _loc3_) / _loc2_);
         _loc13_;
         _loc13_;
         _loc12_ = Math.floor(param1 - _loc10_ * _loc3_ - _loc11_ * _loc2_);
         return String(_loc10_ + "<font size=\'14\'>H</font> " + _loc11_ + "<font size=\'14\'>M</font> " + _loc12_ + "<font size=\'14\'>S</font>");
      }
      
      private function §_-QP§(param1:int) : String
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         var _loc2_:String = this.formatNumber(param1.toString());
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_ = _loc2_ + "<font size=\'14\'>XP</font>";
         return _loc2_;
      }
      
      private function formatNumber(param1:String) : String
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:String = null;
         _loc5_;
         _loc5_;
         var _loc2_:String = param1;
         var _loc3_:* = "";
         while(true)
         {
            _loc6_;
            if(_loc2_.length <= 3)
            {
               break;
            }
            _loc6_;
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc4_ = _loc2_.substr(-3);
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc2_ = _loc2_.substr(0,_loc2_.length - 3);
            _loc6_;
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc3_ = "," + _loc4_ + _loc3_;
            _loc6_;
         }
         _loc6_;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         _loc3_ = _loc2_ + _loc3_;
         return _loc3_;
      }
      
      public function update() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-K§.htmlText = this.§true §(Global.other_stats[Global.OSTAT_TIME_PLAYED]);
         this.§_-E-§.text = this.formatNumber(Global.other_stats[Global.OSTAT_GAMES_PLAYED].toString());
         this.§_-7g§.text = this.formatNumber(Global.game_stats[Global.STAT_SHOTS_TAKEN].toString());
         this.§_-Oe§.htmlText = this.§_-QP§(Global.teamXP.getInt());
         _loc1_;
         this.§_-BF§.text = this.formatNumber(Global.other_stats[Global.OSTAT_GRAVITONS_EARNED].toString());
         _loc2_;
         this.§_-nb§.text = this.formatNumber(Global.other_stats[Global.OSTAT_GOLD_MEDALS].toString());
         this.§_-GV§.text = this.formatNumber(Global.other_stats[Global.OSTAT_SILVER_MEDALS].toString());
         _loc2_;
         this.§_-sE§.text = this.formatNumber(Global.other_stats[Global.OSTAT_BRONZE_MEDALS].toString());
         _loc1_;
         this.§_-CV§.text = this.formatNumber(Global.other_stats[Global.OSTAT_IRON_MEDALS].toString());
         _loc2_;
         _loc2_;
         this.§_-Y7§.text = this.formatNumber(Global.game_stats[Global.STAT_DAMAGE_DEALT].toString());
         this.§_-f0§.text = this.formatNumber(Global.game_stats[Global.STAT_DAMAGE_RECEIVED].toString());
         _loc1_;
         this.§_-hD§.text = this.formatNumber(Global.game_stats[Global.STAT_ENEMIES_KILLED].toString());
         _loc2_;
         _loc2_;
         this.§_-D9§.text = this.formatNumber(Global.game_stats[Global.STAT_SUN_KILLS].toString());
         _loc2_;
         _loc2_;
         this.§_-Tx§.text = this.formatNumber(Global.game_stats[Global.STAT_OOB_KILLS].toString());
         this.§_-Ek§.text = this.formatNumber(Global.game_stats[Global.STAT_SHIELD_KILLS].toString());
         _loc1_;
         this.§_-iM§.text = this.formatNumber(Global.game_stats[Global.STAT_FRIENDLY_DEATHS].toString());
         this.§_-AE§.text = this.formatNumber(Global.game_stats[Global.STAT_POWERUPS_COLLECTED].toString());
         this.§_-u-§.text = this.formatNumber(Global.game_stats[Global.STAT_BARRELS_DESTROYED].toString());
         this.§_-zr§.htmlText = this.formatNumber(Global.game_stats[Global.STAT_DISTANCE_WALKED].toString()) + "<font size=\'14\'>M</font>";
         this.§_-o0§.htmlText = this.formatNumber(Global.game_stats[Global.STAT_DISTANCE_JETPACKED].toString()) + "<font size=\'14\'>M</font>";
         this.§_-qw§.text = this.formatNumber(Global.game_stats[Global.STAT_SKILLSHOTS_HIT].toString());
         this.§_-95§.htmlText = this.formatNumber(Global.game_stats[Global.STAT_DISTANCE_HIT].toString()) + "<font size=\'14\'>M</font>";
         this.§_-P1§.text = this.formatNumber(Global.global_stats[Global.GSTAT_PLAYS].toString());
         this.§_-0S§.text = this.formatNumber(Global.global_stats[Global.GSTAT_KILLS].toString());
         _loc2_;
         this.§_-r6§.text = this.formatNumber(Global.global_stats[Global.GSTAT_DAMAGE].toString());
         this.§_-8g§.htmlText = this.§true §(Global.global_stats[Global.GSTAT_TIME]);
         _loc2_;
         _loc2_;
         this.§_-5T§.text = this.formatNumber(Global.game_stats[Global.STAT_PLANETS_DESTROYED].toString());
         this.§_-db§.mouseEnabled = true;
         _loc2_;
         _loc2_;
         this.§_-db§.buttonMode = true;
         this.§_-db§.gotoAndStop("up");
         _loc1_;
         this.§_-cL§ = false;
      }
      
      public function §_-VV§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(!this.§_-cL§)
         {
            Global.lobby_client.refreshGlobalStats();
            this.§_-db§.mouseEnabled = false;
            _loc2_;
            this.§_-db§.buttonMode = false;
            this.§_-db§.gotoAndStop("off");
            _loc2_;
            this.§_-cL§ = true;
         }
      }
      
      public function doRollOver(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(this.§_-cL§)
         {
            _loc2_;
            this.§_-db§.gotoAndStop("off");
            _loc2_;
            _loc2_;
         }
         else
         {
            this.§_-db§.gotoAndStop("over");
         }
      }
      
      public function doRollOut(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(this.§_-cL§)
         {
            _loc3_;
            _loc3_;
            this.§_-db§.gotoAndStop("off");
            _loc2_;
         }
         else
         {
            this.§_-db§.gotoAndStop("up");
         }
      }
   }
}
