package com.funkypear.ui
{
   import flash.display.Sprite;
   import fl.transitions.Tween;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import fl.transitions.easing.Strong;
   
   public class §_-nK§ extends Sprite
   {
      
      public function §_-nK§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         x = 0;
         _loc2_;
         _loc2_;
         y = 620;
         addEventListener(MouseEvent.CLICK,this.§_-rS§,false,0,true);
         mouseEnabled = true;
         mouseChildren = false;
         buttonMode = true;
      }
      
      private var y_tween:Tween;
      
      private var §_-39§:Boolean = false;
      
      private function §_-rS§(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         var me:MouseEvent = param1;
         _loc4_;
         _loc4_;
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
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         if(!this.§_-39§)
         {
            _loc1_;
            _loc1_;
            this.y_tween = new Tween(this,"y",Strong.easeOut,y,557,1,true);
            _loc2_;
            _loc2_;
            this.y_tween.start();
            _loc1_;
            this.§_-39§ = true;
         }
      }
      
      public function tweenOff() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(this.§_-39§ == true)
         {
            _loc2_;
            this.y_tween = new Tween(this,"y",Strong.easeOut,y,620,1,true);
            _loc2_;
            this.y_tween.start();
            _loc2_;
            _loc2_;
            this.§_-39§ = false;
         }
      }
   }
}
