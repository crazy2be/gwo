package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   import fl.transitions.TweenEvent;
   
   public class §_-s4§ extends Sprite
   {
      
      public function §_-s4§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
         _loc2_;
         this.version_text.text = TimelineGlobal.version_number;
      }
      
      public var version_text:TextField;
      
      private var §_-yS§:Boolean = false;
      
      private var tween_y:Tween;
      
      public function tweenOut() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(this.§_-yS§)
         {
            _loc1_;
            _loc1_;
            this.tween_y = new Tween(this,"y",Strong.easeOut,517,610,1,true);
            _loc2_;
            _loc1_;
            this.tween_y.addEventListener(TweenEvent.MOTION_FINISH,this.§_-ro§,false,0,true);
            _loc2_;
            this.tween_y.start();
         }
      }
      
      public function tweenIn() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         if(!this.§_-yS§)
         {
            _loc1_;
            visible = true;
            _loc1_;
            this.tween_y = new Tween(this,"y",Strong.easeOut,610,517,1,true);
            _loc2_;
            _loc2_;
            _loc2_;
            this.tween_y.addEventListener(TweenEvent.MOTION_FINISH,this.§_-qZ§,false,0,true);
            _loc1_;
            _loc1_;
            this.tween_y.start();
         }
      }
      
      private function §_-ro§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-yS§ = false;
         _loc3_;
         _loc3_;
         visible = false;
      }
      
      private function §_-qZ§(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-yS§ = true;
      }
   }
}
