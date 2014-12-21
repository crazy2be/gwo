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
   
   public class §_-rM§ extends Sprite
   {
      
      public function §_-rM§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
         _loc2_;
         _loc2_;
         addEventListener(Event.ADDED_TO_STAGE,this.init,false,0,true);
      }
      
      public var §_-px§:MovieClip;
      
      public var response_text:TextField;
      
      public var §_-FI§:TextField;
      
      public var §_-o3§:TextField;
      
      public var §_-92§:TextField;
      
      public var name_text:TextField;
      
      public var §_-G1§:MovieClip;
      
      public function init(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         removeEventListener(Event.ADDED_TO_STAGE,this.init);
         stage.focus = this.name_text;
         _loc3_;
         this.name_text.setSelection(this.name_text.text.length,this.name_text.text.length);
         _loc3_;
         this.name_text.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-WQ§,false,0,true);
         this.§_-92§.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-Tv§,false,0,true);
         _loc3_;
         _loc3_;
         this.§_-o3§.addEventListener(KeyboardEvent.KEY_DOWN,this.checkHitPassword2,false,0,true);
         _loc2_;
         this.§_-FI§.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-Sw§,false,0,true);
         _loc2_;
         this.§_-px§.mouseEnabled = true;
         _loc3_;
         _loc3_;
         this.§_-px§.mouseChildren = false;
         this.§_-px§.buttonMode = true;
         _loc3_;
         this.§_-px§.gotoAndStop(1);
         this.§_-px§.addEventListener(MouseEvent.ROLL_OVER,this.§_-ev§,false,0,true);
         _loc2_;
         this.§_-px§.addEventListener(MouseEvent.ROLL_OUT,this.§_-dV§,false,0,true);
         this.§_-px§.addEventListener(MouseEvent.CLICK,this.§_-dl§,false,0,true);
      }
      
      public function §_-WQ§(param1:KeyboardEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(param1.charCode == 13)
         {
            _loc3_;
            stage.focus = this.§_-92§;
         }
      }
      
      public function §_-Tv§(param1:KeyboardEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         if(param1.charCode == 13)
         {
            _loc3_;
            _loc3_;
            stage.focus = this.§_-o3§;
         }
      }
      
      public function checkHitPassword2(param1:KeyboardEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(param1.charCode == 13)
         {
            _loc3_;
            stage.focus = this.§_-FI§;
         }
      }
      
      public function §_-Sw§(param1:KeyboardEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         if(param1.charCode == 13)
         {
            _loc3_;
            this.§_-G1§.onClick(null);
         }
      }
      
      public function §_-ev§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-px§.gotoAndStop(2);
      }
      
      public function §_-dV§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-px§.gotoAndStop(1);
      }
      
      public function §_-dl§(param1:MouseEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         var me:MouseEvent = param1;
         _loc5_;
         _loc5_;
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
