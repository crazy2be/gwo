package §_-ZN§
{
   import fl.transitions.Tween;
   import flash.events.MouseEvent;
   import fl.transitions.easing.Strong;
   import fl.transitions.TweenEvent;
   
   public class §_-r4§ extends SimpleButton
   {
      
      public function §_-r4§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         super();
         _loc2_;
         addFrameScript(0,this.frame1,4,this.frame5);
      }
      
      private var §_-Hk§:Tween;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         SafeGlobal.TIMELINE.skipTutorial();
         _loc2_;
         _loc2_;
         SafeGlobal.§_-zK§.§_-U3§();
      }
      
      public function tweenOn() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-Hk§ = new Tween(this,"x",Strong.easeOut,x,0,1,true);
         _loc1_;
         this.§_-Hk§.start();
      }
      
      public function tweenOff() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-Hk§ = new Tween(this,"x",Strong.easeOut,x,-300,1,true);
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         this.§_-Hk§.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOff,false,0,true);
         _loc2_;
         _loc2_;
         this.§_-Hk§.start();
      }
      
      public function finishTweenOff(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         SafeGlobal.TIMELINE.finishHideTutorialSkipButton();
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         stop();
      }
      
      function frame5() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         stop();
      }
   }
}
