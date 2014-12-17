package §_-zO§
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
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc6_;
         _loc6_;
         this.letters = new Array();
         _loc5_;
         _loc5_;
         this.msg = new Sprite();
         _loc6_;
         _loc6_;
         super();
         _loc5_;
         this.colour = param2;
         _loc5_;
         this.messageText = param1;
         var _loc4_:§_-K-§ = new §_-K-§();
         _loc4_.message.text = this.messageText;
         _loc6_;
         _loc4_.§_-4e§.text = this.messageText;
         _loc6_;
         _loc4_.message.textColor = this.colour;
         _loc5_;
         _loc4_.cacheAsBitmap = true;
         this.msg.addChild(_loc4_);
         _loc6_;
         if((SafeGlobal.GAME.statusBar) && !SafeGlobal.GAME.statusBar.visible)
         {
            this.msg.y = 10;
         }
         else
         {
            this.msg.y = 55;
            _loc5_;
            _loc5_;
         }
         this.msg.x = 850;
         addChild(this.msg);
         _loc5_;
         this.tweenIn();
      }
      
      public var colour:uint = 16711680;
      
      public var messageText:String = "";
      
      public var letters:Array;
      
      public var myTween:Tween;
      
      public var msg:Sprite;
      
      public var §_-W4§:int;
      
      public function tweenIn() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.myTween = new Tween(this.msg,"x",Strong.easeIn,850,(800 - this.msg.width) / 2,0.5,true);
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         this.myTween.stop();
         _loc2_;
         this.myTween.addEventListener(TweenEvent.MOTION_FINISH,this.§_-p6§);
      }
      
      public function §_-p6§(param1:TweenEvent) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-W4§ = getTimer();
         _loc2_;
         this.myTween.removeEventListener(TweenEvent.MOTION_FINISH,this.§_-p6§);
         _loc2_;
         _loc2_;
         addEventListener(Event.ENTER_FRAME,this.§_-Pg§);
      }
      
      public function §_-Pg§(param1:Event) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = getTimer() - this.§_-W4§;
         _loc3_;
         if(_loc2_ > 2000)
         {
            _loc4_;
            this.tweenOut();
            _loc4_;
            removeEventListener(Event.ENTER_FRAME,this.§_-Pg§);
         }
      }
      
      public function tweenOut() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.myTween = new Tween(this.msg,"x",Strong.easeOut,this.msg.x,0 - (this.msg.width + 50),0.5,true);
         _loc2_;
         this.myTween.addEventListener(TweenEvent.MOTION_FINISH,this.§_-ee§);
      }
      
      public function §_-ee§(param1:TweenEvent) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.myTween.removeEventListener(TweenEvent.MOTION_FINISH,this.§_-ee§);
         _loc3_;
         if(SafeGlobal.GAME != null)
         {
            _loc3_;
            SafeGlobal.GAME.showNextMessage();
         }
      }
   }
}
