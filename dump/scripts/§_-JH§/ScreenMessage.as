package §_-JH§
{
   import flash.display.Sprite;
   import fl.transitions.Tween;
   import fl.transitions.TweenEvent;
   import flash.utils.getTimer;
   import flash.events.Event;
   import fl.transitions.easing.*;
   
   public class ScreenMessage extends Sprite
   {
      
      public function ScreenMessage(param1:String, param2:uint, param3:Boolean)
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         _loc5_;
         this.letters = new Array();
         _loc6_;
         _loc6_;
         this.msg = new Sprite();
         _loc5_;
         _loc5_;
         super();
         _loc5_;
         _loc5_;
         this.colour = param2;
         _loc5_;
         this.messageText = param1;
         var _loc4_:§_-WV§ = new §_-WV§();
         _loc4_.message.text = this.messageText;
         _loc4_.§_-7Z§.text = this.messageText;
         _loc6_;
         _loc4_.message.textColor = this.colour;
         _loc4_.cacheAsBitmap = true;
         _loc6_;
         this.msg.addChild(_loc4_);
         _loc6_;
         _loc6_;
         if((SafeGlobal.GAME.statusBar) && !SafeGlobal.GAME.statusBar.visible)
         {
            _loc5_;
            _loc5_;
            this.msg.y = 10;
         }
         else
         {
            this.msg.y = 55;
         }
         this.msg.x = 850;
         addChild(this.msg);
         _loc6_;
         _loc6_;
         this.tweenIn();
      }
      
      public var colour:uint = 16711680;
      
      public var messageText:String = "";
      
      public var letters:Array;
      
      public var myTween:Tween;
      
      public var msg:Sprite;
      
      public var §_-hU§:int;
      
      public function tweenIn() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.myTween = new Tween(this.msg,"x",Strong.easeIn,850,(800 - this.msg.width) / 2,0.5,true);
         _loc1_;
         _loc1_;
         _loc1_;
         this.myTween.stop();
         _loc1_;
         _loc1_;
         this.myTween.addEventListener(TweenEvent.MOTION_FINISH,this.§_-NV§);
      }
      
      public function §_-NV§(param1:TweenEvent) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-hU§ = getTimer();
         _loc2_;
         _loc2_;
         this.myTween.removeEventListener(TweenEvent.MOTION_FINISH,this.§_-NV§);
         _loc2_;
         _loc2_;
         addEventListener(Event.ENTER_FRAME,this.§_-ll§);
      }
      
      public function §_-ll§(param1:Event) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = getTimer() - this.§_-hU§;
         _loc4_;
         _loc4_;
         if(_loc2_ > 2000)
         {
            _loc4_;
            this.tweenOut();
            _loc4_;
            removeEventListener(Event.ENTER_FRAME,this.§_-ll§);
         }
      }
      
      public function tweenOut() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.myTween = new Tween(this.msg,"x",Strong.easeOut,this.msg.x,0 - (this.msg.width + 50),0.5,true);
         _loc1_;
         this.myTween.addEventListener(TweenEvent.MOTION_FINISH,this.§_-tB§);
      }
      
      public function §_-tB§(param1:TweenEvent) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.myTween.removeEventListener(TweenEvent.MOTION_FINISH,this.§_-tB§);
         _loc2_;
         _loc2_;
         if(SafeGlobal.GAME != null)
         {
            _loc2_;
            SafeGlobal.GAME.showNextMessage();
         }
      }
   }
}
