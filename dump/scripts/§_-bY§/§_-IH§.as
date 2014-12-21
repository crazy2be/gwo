package §_-bY§
{
   import fl.transitions.Tween;
   import flash.events.MouseEvent;
   import fl.transitions.easing.Strong;
   import fl.transitions.TweenEvent;
   
   public class §_-IH§ extends SimpleButton
   {
      
      public function §_-IH§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         super();
         _loc1_;
         _loc1_;
         addFrameScript(0,this.frame1,4,this.frame5);
      }
      
      private var §_-h4§:Tween;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         SafeGlobal.TIMELINE.skipTutorial();
         _loc3_;
         _loc3_;
         SafeGlobal.§_-8m§.§_-A4§();
      }
      
      public function tweenOn() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.§_-h4§ = new Tween(this,"x",Strong.easeOut,x,0,1,true);
         _loc1_;
         _loc1_;
         this.§_-h4§.start();
      }
      
      public function tweenOff() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-h4§ = new Tween(this,"x",Strong.easeOut,x,-300,1,true);
         _loc1_;
         _loc1_;
         _loc2_;
         this.§_-h4§.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOff,false,0,true);
         _loc2_;
         _loc2_;
         this.§_-h4§.start();
      }
      
      public function finishTweenOff(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         SafeGlobal.TIMELINE.finishHideTutorialSkipButton();
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         stop();
      }
      
      function frame5() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         stop();
      }
   }
}
