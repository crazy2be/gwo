package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.display.MovieClip;
   import fl.transitions.Tween;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   import fl.transitions.easing.Strong;
   
   public class §_-va§ extends Sprite
   {
      
      public function §_-va§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         super();
         x = 0;
         y = -233;
         _loc1_;
         _loc1_;
         this.logo_button.addEventListener(MouseEvent.CLICK,this.§_-Fm§,false,0,true);
         this.logo_button.mouseEnabled = true;
         _loc1_;
         _loc1_;
         this.logo_button.mouseChildren = false;
         this.logo_button.buttonMode = true;
         this.version_text.text = TimelineGlobal.version_number;
      }
      
      public var version_text:TextField;
      
      public var logo_button:MovieClip;
      
      private var y_tween:Tween;
      
      private var §_-Qk§:Boolean = false;
      
      private function §_-Fm§(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         var me:MouseEvent = param1;
         _loc4_;
         var url:URLRequest = new URLRequest("http://www.funkypear.com?ref=gwologinlogo");
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
         _loc1_;
         if(!this.§_-Qk§)
         {
            _loc1_;
            _loc1_;
            this.y_tween = new Tween(this,"y",Strong.easeOut,y,27,1,true);
            _loc1_;
            _loc1_;
            this.y_tween.start();
            _loc2_;
            this.§_-Qk§ = true;
         }
      }
      
      public function tweenOff() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(this.§_-Qk§ == true)
         {
            _loc1_;
            _loc1_;
            this.y_tween = new Tween(this,"y",Strong.easeOut,y,-233,1,true);
            _loc1_;
            _loc1_;
            this.y_tween.start();
            _loc2_;
            this.§_-Qk§ = false;
         }
      }
   }
}
