package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §_-02§ extends Sprite
   {
      
      public function §_-02§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         super();
         _loc2_;
         addEventListener(Event.ADDED_TO_STAGE,this.init,false,0,true);
      }
      
      public var §_-bp§:MovieClip;
      
      public var response_text:TextField;
      
      public var §_-v5§:TextField;
      
      public var §_-wI§:TextField;
      
      public var §_-zm§:TextField;
      
      public var name_text:TextField;
      
      public var §_-Cd§:MovieClip;
      
      public function init(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         removeEventListener(Event.ADDED_TO_STAGE,this.init);
         stage.focus = this.name_text;
         _loc3_;
         _loc3_;
         this.name_text.setSelection(this.name_text.text.length,this.name_text.text.length);
         this.name_text.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-mC§,false,0,true);
         this.§_-zm§.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-T§,false,0,true);
         this.§_-wI§.addEventListener(KeyboardEvent.KEY_DOWN,this.checkHitPassword2,false,0,true);
         this.§_-v5§.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-WH§,false,0,true);
         this.§_-bp§.mouseEnabled = true;
         this.§_-bp§.mouseChildren = false;
         _loc2_;
         _loc2_;
         this.§_-bp§.buttonMode = true;
         _loc2_;
         this.§_-bp§.gotoAndStop(1);
         _loc2_;
         this.§_-bp§.addEventListener(MouseEvent.ROLL_OVER,this.§_-6i§,false,0,true);
         this.§_-bp§.addEventListener(MouseEvent.ROLL_OUT,this.§_-9P§,false,0,true);
         _loc3_;
         _loc3_;
         this.§_-bp§.addEventListener(MouseEvent.CLICK,this.§_-bo§,false,0,true);
      }
      
      public function §_-mC§(param1:KeyboardEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(param1.charCode == 13)
         {
            _loc2_;
            _loc2_;
            stage.focus = this.§_-zm§;
         }
      }
      
      public function §_-T§(param1:KeyboardEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         if(param1.charCode == 13)
         {
            _loc3_;
            _loc3_;
            stage.focus = this.§_-wI§;
         }
      }
      
      public function checkHitPassword2(param1:KeyboardEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         if(param1.charCode == 13)
         {
            _loc2_;
            stage.focus = this.§_-v5§;
         }
      }
      
      public function §_-WH§(param1:KeyboardEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         if(param1.charCode == 13)
         {
            _loc3_;
            this.§_-Cd§.onClick(null);
         }
      }
      
      public function §_-6i§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-bp§.gotoAndStop(2);
      }
      
      public function §_-9P§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-bp§.gotoAndStop(1);
      }
      
      public function §_-bo§(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         var me:MouseEvent = param1;
         _loc4_;
         _loc4_;
         var url:URLRequest = new URLRequest("http://www.graviteewarsonline.com/terms.php");
         try
         {
            navigateToURL(url,"_blank");
         }
         catch(e:Error)
         {
         }
      }
   }
}
