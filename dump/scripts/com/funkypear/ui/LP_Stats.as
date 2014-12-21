package com.funkypear.ui
{
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.events.MouseEvent;
   import flash.display.Sprite;
   
   public class LP_Stats extends §_-uw§
   {
      
      public function LP_Stats(param1:Sprite)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         super(param1);
         this.§_-H7§.addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         _loc3_;
         this.§_-H7§.addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         _loc2_;
         _loc2_;
         this.§_-H7§.addEventListener(MouseEvent.CLICK,this.§_-AP§,false,0,true);
         this.§_-H7§.mouseEnabled = false;
         _loc3_;
         this.§_-H7§.mouseChildren = false;
         _loc2_;
         this.§_-H7§.buttonMode = false;
         this.§_-H7§.gotoAndStop("off");
         _loc3_;
         this.§_-3G§ = true;
      }
      
      public var §_-H7§:MovieClip;
      
      public var §_-M7§:TextField;
      
      public var §_-SI§:TextField;
      
      public var §_-0M§:TextField;
      
      public var § set§:TextField;
      
      public var §_-2k§:TextField;
      
      public var §_-nl§:TextField;
      
      public var §_-kH§:TextField;
      
      public var §_-SF§:TextField;
      
      public var §_-dT§:TextField;
      
      public var §_-7F§:TextField;
      
      public var §_-v1§:TextField;
      
      public var §_-y§:TextField;
      
      public var §_-VW§:TextField;
      
      public var §_-KR§:TextField;
      
      public var §_-EY§:TextField;
      
      public var §_-Hn§:TextField;
      
      public var §_-hB§:TextField;
      
      public var §_-S6§:TextField;
      
      public var §_-6M§:TextField;
      
      public var §_-UY§:TextField;
      
      public var §_-1g§:TextField;
      
      public var §_-ii§:TextField;
      
      public var §_-dh§:TextField;
      
      public var §_-7Y§:TextField;
      
      public var §_-ZW§:TextField;
      
      public var §_-1Y§:TextField;
      
      public var §_-qp§:TextField;
      
      private var §_-3G§:Boolean = false;
      
      private function §_-XN§(param1:Number) : String
      {
         var _loc13_:* = true;
         var _loc14_:* = false;
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
         _loc14_;
         _loc13_;
         _loc13_;
         if(param1 >= _loc6_)
         {
            _loc7_ = Math.floor(param1 / _loc6_);
            _loc13_;
            _loc8_ = Math.floor((param1 - _loc7_ * _loc6_) / _loc5_);
            _loc13_;
            _loc9_ = Math.floor((param1 - _loc7_ * _loc6_ - _loc8_ * _loc5_) / _loc4_);
            return String(_loc7_ + "<font size=\'14\'>Y</font> " + _loc8_ + "<font size=\'14\'>W</font> " + _loc9_ + "<font size=\'14\'>D</font>");
         }
         _loc14_;
         if(param1 >= _loc5_)
         {
            _loc13_;
            _loc13_;
            _loc8_ = Math.floor(param1 / _loc5_);
            _loc14_;
            _loc9_ = Math.floor((param1 - _loc8_ * _loc5_) / _loc4_);
            _loc10_ = Math.floor((param1 - _loc8_ * _loc5_ - _loc9_ * _loc4_) / _loc3_);
            return String(_loc8_ + "<font size=\'14\'>W</font> " + _loc9_ + "<font size=\'14\'>D</font> " + _loc10_ + "<font size=\'14\'>H</font>");
         }
         if(param1 >= _loc4_)
         {
            _loc13_;
            _loc13_;
            _loc13_;
            _loc9_ = Math.floor(param1 / _loc4_);
            _loc14_;
            _loc14_;
            _loc10_ = Math.floor((param1 - _loc9_ * _loc4_) / _loc3_);
            _loc14_;
            _loc14_;
            _loc11_ = Math.floor((param1 - _loc9_ * _loc4_ - _loc10_ * _loc3_) / _loc2_);
            return String(_loc9_ + "<font size=\'14\'>D</font> " + _loc10_ + "<font size=\'14\'>H</font> " + _loc11_ + "<font size=\'14\'>M</font>");
         }
         _loc10_ = Math.floor(param1 / _loc3_);
         _loc14_;
         _loc11_ = Math.floor((param1 - _loc10_ * _loc3_) / _loc2_);
         _loc12_ = Math.floor(param1 - _loc10_ * _loc3_ - _loc11_ * _loc2_);
         return String(_loc10_ + "<font size=\'14\'>H</font> " + _loc11_ + "<font size=\'14\'>M</font> " + _loc12_ + "<font size=\'14\'>S</font>");
      }
      
      private function §_-k0§(param1:int) : String
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
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
         _loc6_;
         var _loc2_:String = param1;
         var _loc3_:* = "";
         while(true)
         {
            _loc5_;
            if(_loc2_.length <= 3)
            {
               break;
            }
            _loc6_;
            _loc6_;
            _loc6_;
            _loc4_ = _loc2_.substr(-3);
            _loc5_;
            _loc5_;
            _loc5_;
            _loc2_ = _loc2_.substr(0,_loc2_.length - 3);
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            _loc6_;
            _loc3_ = "," + _loc4_ + _loc3_;
            _loc5_;
         }
         _loc6_;
         _loc3_ = _loc2_ + _loc3_;
         return _loc3_;
      }
      
      public function update() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.§ set§.htmlText = this.§_-XN§(Global.other_stats[Global.OSTAT_TIME_PLAYED]);
         this.§_-dh§.text = this.formatNumber(Global.other_stats[Global.OSTAT_GAMES_PLAYED].toString());
         _loc1_;
         _loc1_;
         this.§_-SI§.text = this.formatNumber(Global.game_stats[Global.STAT_SHOTS_TAKEN].toString());
         _loc1_;
         _loc1_;
         this.§_-M7§.htmlText = this.§_-k0§(Global.teamXP.getInt());
         this.§_-EY§.text = this.formatNumber(Global.other_stats[Global.OSTAT_GRAVITONS_EARNED].toString());
         this.§_-7Y§.text = this.formatNumber(Global.other_stats[Global.OSTAT_GOLD_MEDALS].toString());
         this.§_-kH§.text = this.formatNumber(Global.other_stats[Global.OSTAT_SILVER_MEDALS].toString());
         this.§_-Hn§.text = this.formatNumber(Global.other_stats[Global.OSTAT_BRONZE_MEDALS].toString());
         this.§_-VW§.text = this.formatNumber(Global.other_stats[Global.OSTAT_IRON_MEDALS].toString());
         this.§_-v1§.text = this.formatNumber(Global.game_stats[Global.STAT_DAMAGE_DEALT].toString());
         _loc2_;
         _loc2_;
         this.§_-7F§.text = this.formatNumber(Global.game_stats[Global.STAT_DAMAGE_RECEIVED].toString());
         this.§_-y§.text = this.formatNumber(Global.game_stats[Global.STAT_ENEMIES_KILLED].toString());
         this.§_-KR§.text = this.formatNumber(Global.game_stats[Global.STAT_SUN_KILLS].toString());
         _loc1_;
         _loc1_;
         this.§_-2k§.text = this.formatNumber(Global.game_stats[Global.STAT_OOB_KILLS].toString());
         this.§_-0M§.text = this.formatNumber(Global.game_stats[Global.STAT_SHIELD_KILLS].toString());
         _loc2_;
         _loc2_;
         this.§_-1Y§.text = this.formatNumber(Global.game_stats[Global.STAT_FRIENDLY_DEATHS].toString());
         this.§_-S6§.text = this.formatNumber(Global.game_stats[Global.STAT_POWERUPS_COLLECTED].toString());
         this.§_-UY§.text = this.formatNumber(Global.game_stats[Global.STAT_BARRELS_DESTROYED].toString());
         this.§_-qp§.htmlText = this.formatNumber(Global.game_stats[Global.STAT_DISTANCE_WALKED].toString()) + "<font size=\'14\'>M</font>";
         this.§_-nl§.htmlText = this.formatNumber(Global.game_stats[Global.STAT_DISTANCE_JETPACKED].toString()) + "<font size=\'14\'>M</font>";
         this.§_-SF§.text = this.formatNumber(Global.game_stats[Global.STAT_SKILLSHOTS_HIT].toString());
         _loc1_;
         this.§_-ii§.htmlText = this.formatNumber(Global.game_stats[Global.STAT_DISTANCE_HIT].toString()) + "<font size=\'14\'>M</font>";
         this.§_-6M§.text = this.formatNumber(Global.global_stats[Global.GSTAT_PLAYS].toString());
         _loc1_;
         _loc1_;
         this.§_-1g§.text = this.formatNumber(Global.global_stats[Global.GSTAT_KILLS].toString());
         this.§_-dT§.text = this.formatNumber(Global.global_stats[Global.GSTAT_DAMAGE].toString());
         _loc2_;
         this.§_-ZW§.htmlText = this.§_-XN§(Global.global_stats[Global.GSTAT_TIME]);
         this.§_-hB§.text = this.formatNumber(Global.game_stats[Global.STAT_PLANETS_DESTROYED].toString());
         this.§_-H7§.mouseEnabled = true;
         _loc2_;
         _loc2_;
         this.§_-H7§.buttonMode = true;
         this.§_-H7§.gotoAndStop("up");
         _loc2_;
         _loc2_;
         this.§_-3G§ = false;
      }
      
      public function §_-AP§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(!this.§_-3G§)
         {
            _loc3_;
            Global.lobby_client.refreshGlobalStats();
            this.§_-H7§.mouseEnabled = false;
            this.§_-H7§.buttonMode = false;
            _loc2_;
            _loc2_;
            this.§_-H7§.gotoAndStop("off");
            this.§_-3G§ = true;
         }
      }
      
      public function doRollOver(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(this.§_-3G§)
         {
            _loc3_;
            this.§_-H7§.gotoAndStop("off");
            _loc2_;
         }
         else
         {
            this.§_-H7§.gotoAndStop("over");
         }
      }
      
      public function doRollOut(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(this.§_-3G§)
         {
            _loc2_;
            _loc2_;
            this.§_-H7§.gotoAndStop("off");
            _loc2_;
         }
         else
         {
            this.§_-H7§.gotoAndStop("up");
         }
      }
   }
}
