package §_-ZN§
{
   import fl.transitions.Tween;
   import flash.events.MouseEvent;
   import fl.transitions.easing.Strong;
   import fl.transitions.TweenEvent;
   
   public class EditorGameQuitButton extends SimpleButton
   {
      
      public function EditorGameQuitButton()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
         _loc1_;
         _loc1_;
         addFrameScript(0,this.frame1,4,this.frame5);
      }
      
      private var §_-Hk§:Tween;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         SafeGlobal.GAME.gameOver();
      }
      
      public function tweenOn() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-Hk§ = new Tween(this,"x",Strong.easeOut,x,0,10,false);
         _loc2_;
         _loc2_;
         this.§_-Hk§.start();
      }
      
      public function tweenOff() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-Hk§ = new Tween(this,"x",Strong.easeOut,x,-318,10,false);
         _loc2_;
         _loc1_;
         _loc1_;
         this.§_-Hk§.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOff,false,0,true);
         _loc1_;
         _loc1_;
         this.§_-Hk§.start();
      }
      
      public function finishTweenOff(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         this.§_-Hk§.removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOff);
         _loc3_;
         this.§_-Hk§ = null;
         _loc2_;
         parent.removeChild(this);
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         stop();
      }
      
      function frame5() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         stop();
      }
   }
}
