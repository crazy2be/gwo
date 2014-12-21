package §_-bY§
{
   import fl.transitions.Tween;
   import flash.events.MouseEvent;
   import fl.transitions.easing.Strong;
   import fl.transitions.TweenEvent;
   
   public class §_-4m§ extends SimpleButton
   {
      
      public function §_-4m§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         super();
         _loc2_;
         addFrameScript(0,this.frame1,4,this.frame5);
         _loc1_;
         _loc1_;
         x = 805;
         _loc2_;
         y = 510;
      }
      
      private var §_-xM§:Boolean = true;
      
      private var §_-h4§:Tween;
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(this.§_-xM§)
         {
            _loc3_;
            _loc3_;
            SafeGlobal.game_client.playerQuitsGame();
         }
      }
      
      public function tweenOn() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-h4§ = new Tween(this,"x",Strong.easeOut,x,484,10,false);
         _loc2_;
         _loc2_;
         this.§_-h4§.start();
      }
      
      public function tweenOff() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-xM§ = false;
         _loc1_;
         _loc1_;
         this.§_-h4§ = new Tween(this,"x",Strong.easeOut,x,805,10,false);
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.§_-h4§.addEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOff,false,0,true);
         _loc2_;
         _loc2_;
         this.§_-h4§.start();
      }
      
      public function finishTweenOff(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-h4§.removeEventListener(TweenEvent.MOTION_FINISH,this.finishTweenOff);
         _loc2_;
         _loc2_;
         this.§_-h4§ = null;
         _loc3_;
         _loc3_;
         visible = false;
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         stop();
      }
      
      function frame5() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         stop();
      }
   }
}
