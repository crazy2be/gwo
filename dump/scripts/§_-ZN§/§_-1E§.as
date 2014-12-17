package §_-ZN§
{
   import fl.transitions.Tween;
   import flash.events.MouseEvent;
   import fl.transitions.easing.Strong;
   import fl.transitions.TweenEvent;
   
   public class §_-1E§ extends SimpleButton
   {
      
      public function §_-1E§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         super();
         _loc2_;
         addFrameScript(0,this.frame1,4,this.frame5);
         _loc2_;
         _loc2_;
         x = 805;
         _loc2_;
         y = 510;
      }
      
      private var §_-wQ§:Boolean = true;
      
      private var §_-Hk§:Tween;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(this.§_-wQ§)
         {
            _loc3_;
            SafeGlobal.game_client.playerQuitsGame();
         }
      }
      
      public function tweenOn() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-Hk§ = new Tween(this,"x",Strong.easeOut,x,484,10,false);
         _loc1_;
         _loc1_;
         this.§_-Hk§.start();
      }
      
      public function tweenOff() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-wQ§ = false;
         _loc1_;
         this.§_-Hk§ = new Tween(this,"x",Strong.easeOut,x,805,10,false);
         _loc1_;
         _loc1_;
         _loc1_;
         this.§_-Hk§.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOff,false,0,true);
         _loc1_;
         _loc1_;
         this.§_-Hk§.start();
      }
      
      public function finishTweenOff(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Hk§.removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOff);
         _loc3_;
         _loc3_;
         this.§_-Hk§ = null;
         _loc2_;
         _loc2_;
         visible = false;
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
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
