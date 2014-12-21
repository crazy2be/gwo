package com.funkypear.ui
{
   import flash.display.Sprite;
   import fl.transitions.Tween;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import fl.transitions.easing.Strong;
   
   public class §_-4S§ extends Sprite
   {
      
      public function §_-4S§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
         x = 0;
         y = 620;
         addEventListener(MouseEvent.CLICK,this.§_-Fm§,false,0,true);
         _loc1_;
         mouseEnabled = true;
         mouseChildren = false;
         _loc2_;
         buttonMode = true;
      }
      
      private var y_tween:Tween;
      
      private var §_-Qk§:Boolean = false;
      
      private function §_-Fm§(param1:MouseEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         var me:MouseEvent = param1;
         _loc5_;
         var url:URLRequest = new URLRequest("http://www.funkypear.com?ref=gwocopyright");
         try
         {
            navigateToURL(url,"_blank");
         }
         catch(e:Error)
         {
         }
      }
      
      public function tweenOn() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         if(!this.§_-Qk§)
         {
            _loc1_;
            _loc1_;
            this.y_tween = new Tween(this,"y",Strong.easeOut,y,557,1,true);
            _loc1_;
            this.y_tween.start();
            _loc2_;
            this.§_-Qk§ = true;
         }
      }
      
      public function tweenOff() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         if(this.§_-Qk§ == true)
         {
            _loc1_;
            this.y_tween = new Tween(this,"y",Strong.easeOut,y,620,1,true);
            _loc2_;
            this.y_tween.start();
            _loc1_;
            this.§_-Qk§ = false;
         }
      }
   }
}
