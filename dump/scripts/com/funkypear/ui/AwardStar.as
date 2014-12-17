package com.funkypear.ui
{
   import flash.display.MovieClip;
   import fl.transitions.Tween;
   import flash.events.MouseEvent;
   import fl.transitions.easing.Strong;
   import §_-Cv§.§_-x3§;
   
   public class AwardStar extends MovieClip
   {
      
      public function AwardStar(param1:int, param2:LP_Awards)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         super();
         addFrameScript(0,this.frame1);
         _loc4_;
         this.award_id = param1;
         _loc4_;
         _loc4_;
         this.award_panel = param2;
         addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         mouseEnabled = true;
         mouseChildren = false;
         _loc4_;
         _loc4_;
         buttonMode = true;
      }
      
      public var §_-ci§:MovieClip;
      
      public var award_id:int;
      
      private var award_panel:LP_Awards;
      
      private var tween_x:Tween;
      
      private var tween_y:Tween;
      
      public function displayAwardUnlocked(param1:Boolean) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(param1 == true)
         {
            _loc2_;
            _loc2_;
            gotoAndStop(2);
            _loc3_;
         }
         else
         {
            gotoAndStop(1);
         }
      }
      
      public function displayNew(param1:Boolean) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(param1)
         {
            _loc3_;
            this.§_-ci§.visible = true;
            _loc2_;
         }
         else
         {
            this.§_-ci§.visible = false;
         }
      }
      
      public function doRollOver(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.award_panel.displayAwardDetails(this.award_id);
         _loc2_;
         _loc2_;
         this.tween_x = new Tween(this,"scaleX",Strong.easeOut,1,1.2,16,false);
         _loc3_;
         this.tween_y = new Tween(this,"scaleY",Strong.easeOut,1,1.2,16,false);
         _loc2_;
         this.tween_x.start();
         _loc3_;
         this.tween_y.start();
      }
      
      public function doRollOut(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(this.award_panel.inRollOutZone(this))
         {
            _loc2_;
            _loc2_;
         }
         else
         {
            this.award_panel.hideAwardDetails();
            §_-x3§.awards[this.award_id].new_award = false;
            _loc2_;
            this.§_-ci§.visible = false;
            this.tween_x = new Tween(this,"scaleX",Strong.easeOut,1.2,1,16,false);
            this.tween_y = new Tween(this,"scaleY",Strong.easeOut,1.2,1,16,false);
            this.tween_x.start();
            this.tween_y.start();
         }
      }
      
      public function §_-Mw§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.award_panel.hideAwardDetails();
         §_-x3§.awards[this.award_id].new_award = false;
         this.§_-ci§.visible = false;
         _loc1_;
         _loc1_;
         this.tween_x = new Tween(this,"scaleX",Strong.easeOut,1.2,1,16,false);
         this.tween_y = new Tween(this,"scaleY",Strong.easeOut,1.2,1,16,false);
         _loc1_;
         this.tween_x.start();
         this.tween_y.start();
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         stop();
      }
   }
}
