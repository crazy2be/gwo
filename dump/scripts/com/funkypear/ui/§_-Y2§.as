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
   
   public class §_-Y2§ extends Sprite
   {
      
      public function §_-Y2§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         super();
         x = 0;
         y = -233;
         _loc1_;
         _loc1_;
         this.logo_button.addEventListener(MouseEvent.CLICK,this.§_-rS§,false,0,true);
         this.logo_button.mouseEnabled = true;
         this.logo_button.mouseChildren = false;
         _loc2_;
         this.logo_button.buttonMode = true;
         _loc2_;
         _loc2_;
         this.version_text.text = TimelineGlobal.version_number;
      }
      
      public var version_text:TextField;
      
      public var logo_button:MovieClip;
      
      private var y_tween:Tween;
      
      private var §_-39§:Boolean = false;
      
      private function §_-rS§(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         var me:MouseEvent = param1;
         _loc5_;
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
         _loc2_;
         _loc2_;
         if(!this.§_-39§)
         {
            _loc1_;
            _loc1_;
            this.y_tween = new Tween(this,"y",Strong.easeOut,y,27,1,true);
            _loc1_;
            this.y_tween.start();
            _loc1_;
            _loc1_;
            this.§_-39§ = true;
         }
      }
      
      public function tweenOff() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         if(this.§_-39§ == true)
         {
            _loc2_;
            _loc2_;
            this.y_tween = new Tween(this,"y",Strong.easeOut,y,-233,1,true);
            _loc2_;
            this.y_tween.start();
            _loc2_;
            _loc2_;
            this.§_-39§ = false;
         }
      }
   }
}
