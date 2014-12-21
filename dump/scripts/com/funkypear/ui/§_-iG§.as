package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import §_-bY§.§_-xx§;
   import §_-bY§.§_-9M§;
   import §_-bY§.SubmitLoginButton;
   import §_-bY§.§_-Wj§;
   import flash.events.Event;
   import flash.net.SharedObject;
   import flash.events.KeyboardEvent;
   
   public class §_-iG§ extends Sprite
   {
      
      public function §_-iG§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
         _loc2_;
         addEventListener(Event.ADDED_TO_STAGE,this.init,false,0,true);
      }
      
      public var response_text:TextField;
      
      public var §_-eP§:TextField;
      
      public var §_-cv§:§_-xx§;
      
      public var §_-ln§:§_-9M§;
      
      public var §_-s7§:SubmitLoginButton;
      
      public var §_-92§:TextField;
      
      public var name_text:TextField;
      
      public var §_-T2§:§_-Wj§;
      
      public function init(param1:Event) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         removeEventListener(Event.ADDED_TO_STAGE,this.init);
         var _loc2_:SharedObject = SharedObject.getLocal("LoginPrefs");
         var _loc3_:* = "";
         _loc4_;
         if(_loc2_.data.username == null)
         {
            _loc5_;
            _loc5_;
         }
         else
         {
            _loc5_;
            _loc5_;
            _loc3_ = _loc2_.data.username;
         }
         if(_loc3_ != "")
         {
            _loc4_;
            this.name_text.text = _loc3_;
            _loc4_;
            stage.focus = this.§_-92§;
            this.§_-92§.setSelection(this.§_-92§.text.length,this.§_-92§.text.length);
         }
         else
         {
            stage.focus = this.name_text;
            this.name_text.setSelection(this.name_text.text.length,this.name_text.text.length);
         }
         this.name_text.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-WQ§,false,0,true);
         _loc4_;
         _loc4_;
         this.§_-92§.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-Tv§,false,0,true);
         _loc4_;
         _loc4_;
         this.response_text.mouseEnabled = false;
      }
      
      public function §_-WQ§(param1:KeyboardEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(param1.charCode == 13)
         {
            _loc2_;
            _loc2_;
            stage.focus = this.§_-92§;
         }
      }
      
      public function §_-Tv§(param1:KeyboardEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(param1.charCode == 13)
         {
            _loc3_;
            _loc3_;
            this.§_-s7§.onClick(null);
         }
      }
   }
}
