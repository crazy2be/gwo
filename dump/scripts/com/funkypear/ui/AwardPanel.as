package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import fl.transitions.Tween;
   import flash.utils.Timer;
   import flash.text.TextFormat;
   import §_-Ff§.§_-dS§;
   import flash.utils.getDefinitionByName;
   import fl.transitions.easing.Strong;
   import fl.transitions.TweenEvent;
   import flash.events.TimerEvent;
   
   public class AwardPanel extends Sprite
   {
      
      public function AwardPanel()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         super();
         this.§_-3I§ = new Array();
         this.§_-Qk§ = false;
         x = 12;
         _loc2_;
         y = this.§_-3s§;
         visible = false;
         _loc2_;
         _loc2_;
         Global.award_panel = this;
      }
      
      public var number_holder:MovieClip;
      
      public var gravitons_text:TextField;
      
      public var name_text:TextField;
      
      private var §_-3I§:Array;
      
      private var tween:Tween;
      
      private var §_-Qk§:Boolean = false;
      
      private var §_-jw§:Number = 517;
      
      private var §_-3s§:Number = 610;
      
      private var §_-rO§:Timer;
      
      public function §_-9R§(param1:int, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         this.§_-3I§.push({
            "award_id":param1,
            "grav":param2,
            "endgame":false
         });
         _loc4_;
         _loc4_;
         this.§_-BN§();
      }
      
      public function §_-Fk§(param1:Array) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc3_:Array = null;
         var _loc2_:* = 0;
         while(_loc2_ < param1.length)
         {
            _loc3_ = param1[_loc2_].split(",");
            _loc5_;
            _loc5_;
            this.§_-3I§.push({
               "award_id":int(_loc3_[0]),
               "grav":int(_loc3_[1]),
               "endgame":true
            });
            _loc4_;
            _loc4_;
            _loc2_++;
         }
         _loc4_;
         _loc4_;
         this.§_-BN§();
      }
      
      public function §_-BN§() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Object = null;
         var _loc2_:TextFormat = null;
         var _loc3_:TextFormat = null;
         _loc4_;
         if(!this.§_-Qk§)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            if(this.§_-3I§.length > 0)
            {
               _loc1_ = this.§_-3I§[0];
               _loc5_;
               _loc5_;
               this.§_-3I§.shift();
               _loc2_ = new TextFormat();
               _loc4_;
               _loc4_;
               _loc2_.letterSpacing = -1;
               _loc4_;
               this.name_text.defaultTextFormat = _loc2_;
               _loc4_;
               this.name_text.text = §_-dS§.awards[_loc1_.award_id].award_name;
               _loc3_ = new TextFormat();
               _loc3_.letterSpacing = -2;
               this.gravitons_text.defaultTextFormat = _loc3_;
               _loc5_;
               this.gravitons_text.text = §_-dS§.awards[_loc1_.award_id].gravitons;
               this.displayAwardNumber(_loc1_.award_id + 1);
               if(_loc1_.endgame)
               {
                  Global.coins.setInt(Global.coins.getInt() + _loc1_.grav);
                  _loc4_;
                  _loc4_;
                  _loc5_;
                  _loc5_;
                  Global.lobby_display.lobby_stats.§_-Cm§();
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  §_-dS§.awards[_loc1_.award_id].award_complete = 1;
                  _loc4_;
                  _loc4_;
                  §_-dS§.awards[_loc1_.award_id].new_award = true;
                  _loc4_;
                  _loc5_;
                  _loc5_;
                  Global.lobby_display.panel_awards.updateEndGameAward(_loc1_.award_id);
               }
               Global.lobby_display.lobby_menu.updateButtons();
               this.tweenOn();
               _loc5_;
               _loc5_;
               this.§_-Qk§ = true;
               _loc4_;
               if(_loc1_.award_id == 96)
               {
                  _loc4_;
                  _loc4_;
                  SafeGlobal.§_-8m§.§_-0d§();
                  _loc4_;
               }
               if(_loc1_.award_id == 99)
               {
                  _loc4_;
                  SafeGlobal.§_-8m§.§_-wY§();
               }
            }
         }
      }
      
      private function displayAwardNumber(param1:int) : void
      {
         /*
          * Decompilation error
          * Code may be obfuscated
          * Deobfuscation is activated but decompilation still failed. If the file is NOT obfuscated, disable "Automatic deobfucation" for better results.
          * Error type: TranslateException
          */
         throw new flash.errors.IllegalOperationError("Not decompiled due to error");
      }
      
      private function tweenOn() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         visible = true;
         _loc1_;
         this.tween = new Tween(this,"y",Strong.easeOut,this.§_-3s§,this.§_-jw§,1,true);
         _loc2_;
         _loc2_;
         _loc1_;
         this.tween.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOn,false,0,true);
         _loc1_;
         this.tween.start();
      }
      
      private function finishTweenOn(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-rO§ = new Timer(3000,1);
         _loc3_;
         _loc3_;
         this.§_-rO§.addEventListener(TimerEvent.TIMER_COMPLETE,this.tweenOff,false,0,true);
         _loc3_;
         _loc3_;
         this.§_-rO§.start();
      }
      
      private function tweenOff(param1:TimerEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-rO§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.tweenOff);
         _loc3_;
         this.§_-rO§ = null;
         _loc2_;
         _loc2_;
         this.tween = new Tween(this,"y",Strong.easeOut,this.§_-jw§,this.§_-3s§,1,true);
         _loc2_;
         _loc2_;
         _loc2_;
         this.tween.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOff,false,0,true);
         _loc3_;
         this.tween.start();
      }
      
      private function finishTweenOff(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         visible = false;
         _loc3_;
         this.§_-Qk§ = false;
         _loc2_;
         _loc2_;
         this.§_-BN§();
      }
   }
}
