package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import fl.transitions.Tween;
   import flash.utils.Timer;
   import flash.text.TextFormat;
   import §_-Cv§.§_-x3§;
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
         super();
         this.§_-Ap§ = new Array();
         this.§_-39§ = false;
         x = 12;
         y = this.§_-Rv§;
         _loc1_;
         visible = false;
         Global.award_panel = this;
      }
      
      public var number_holder:MovieClip;
      
      public var gravitons_text:TextField;
      
      public var name_text:TextField;
      
      private var §_-Ap§:Array;
      
      private var tween:Tween;
      
      private var §_-39§:Boolean = false;
      
      private var §_-I0§:Number = 517;
      
      private var §_-Rv§:Number = 610;
      
      private var §_-wV§:Timer;
      
      public function §_-5D§(param1:int, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         this.§_-Ap§.push({
            "award_id":param1,
            "grav":param2,
            "endgame":false
         });
         _loc3_;
         _loc3_;
         this.§_-2k§();
      }
      
      public function §_-e-§(param1:Array) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc3_:Array = null;
         var _loc2_:* = 0;
         while(_loc2_ < param1.length)
         {
            _loc3_ = param1[_loc2_].split(",");
            _loc5_;
            this.§_-Ap§.push({
               "award_id":int(_loc3_[0]),
               "grav":int(_loc3_[1]),
               "endgame":true
            });
            _loc4_;
            _loc4_;
            _loc2_++;
         }
         _loc4_;
         this.§_-2k§();
      }
      
      public function §_-2k§() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:Object = null;
         var _loc2_:TextFormat = null;
         var _loc3_:TextFormat = null;
         _loc5_;
         _loc5_;
         if(!this.§_-39§)
         {
            _loc4_;
            _loc4_;
            _loc5_;
            if(this.§_-Ap§.length > 0)
            {
               _loc1_ = this.§_-Ap§[0];
               _loc4_;
               _loc4_;
               this.§_-Ap§.shift();
               _loc2_ = new TextFormat();
               _loc5_;
               _loc5_;
               _loc2_.letterSpacing = -1;
               _loc4_;
               _loc4_;
               this.name_text.defaultTextFormat = _loc2_;
               _loc4_;
               this.name_text.text = §_-x3§.awards[_loc1_.award_id].award_name;
               _loc3_ = new TextFormat();
               _loc5_;
               _loc5_;
               _loc3_.letterSpacing = -2;
               _loc4_;
               _loc4_;
               this.gravitons_text.defaultTextFormat = _loc3_;
               this.gravitons_text.text = §_-x3§.awards[_loc1_.award_id].gravitons;
               this.displayAwardNumber(_loc1_.award_id + 1);
               if(_loc1_.endgame)
               {
                  Global.coins.setInt(Global.coins.getInt() + _loc1_.grav);
                  _loc5_;
                  _loc5_;
                  _loc5_;
                  Global.lobby_display.lobby_stats.§_-zB§();
                  _loc5_;
                  §_-x3§.awards[_loc1_.award_id].award_complete = 1;
                  _loc4_;
                  §_-x3§.awards[_loc1_.award_id].new_award = true;
                  _loc5_;
                  Global.lobby_display.panel_awards.updateEndGameAward(_loc1_.award_id);
               }
               Global.lobby_display.lobby_menu.updateButtons();
               this.tweenOn();
               this.§_-39§ = true;
               _loc5_;
               if(_loc1_.award_id == 96)
               {
                  _loc4_;
                  _loc4_;
                  SafeGlobal.§_-zK§.§_-bf§();
               }
               if(_loc1_.award_id == 99)
               {
                  _loc4_;
                  SafeGlobal.§_-zK§.§_-Ti§();
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
         _loc2_;
         visible = true;
         _loc2_;
         _loc2_;
         this.tween = new Tween(this,"y",Strong.easeOut,this.§_-Rv§,this.§_-I0§,1,true);
         _loc2_;
         _loc1_;
         this.tween.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOn,false,0,true);
         _loc1_;
         _loc1_;
         this.tween.start();
      }
      
      private function finishTweenOn(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-wV§ = new Timer(3000,1);
         _loc3_;
         _loc3_;
         this.§_-wV§.addEventListener(TimerEvent.TIMER_COMPLETE,this.tweenOff,false,0,true);
         _loc3_;
         this.§_-wV§.start();
      }
      
      private function tweenOff(param1:TimerEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-wV§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.tweenOff);
         _loc3_;
         this.§_-wV§ = null;
         _loc2_;
         _loc2_;
         this.tween = new Tween(this,"y",Strong.easeOut,this.§_-I0§,this.§_-Rv§,1,true);
         _loc2_;
         _loc3_;
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
         this.§_-39§ = false;
         _loc3_;
         this.§_-2k§();
      }
   }
}
