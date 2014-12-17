package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import §_-ZN§.§_-du§;
   import §_-ZN§.§_-PF§;
   import §_-ZN§.SubmitLoginButton;
   import §_-ZN§.§_-dY§;
   import flash.events.Event;
   import flash.net.SharedObject;
   import flash.events.KeyboardEvent;
   
   public class §_-AP§ extends Sprite
   {
      
      public function §_-AP§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
         _loc1_;
         _loc1_;
         addEventListener(Event.ADDED_TO_STAGE,this.init,false,0,true);
      }
      
      public var response_text:TextField;
      
      public var §_-sS§:TextField;
      
      public var §_-0W§:§_-du§;
      
      public var §_-5P§:§_-PF§;
      
      public var §_-Eh§:SubmitLoginButton;
      
      public var §_-zm§:TextField;
      
      public var name_text:TextField;
      
      public var §_-0N§:§_-dY§;
      
      public function init(param1:Event) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         removeEventListener(Event.ADDED_TO_STAGE,this.init);
         var _loc2_:SharedObject = SharedObject.getLocal("LoginPrefs");
         var _loc3_:* = "";
         if(_loc2_.data.username != null)
         {
            _loc4_;
            _loc3_ = _loc2_.data.username;
         }
         if(_loc3_ != "")
         {
            this.name_text.text = _loc3_;
            stage.focus = this.§_-zm§;
            this.§_-zm§.setSelection(this.§_-zm§.text.length,this.§_-zm§.text.length);
         }
         else
         {
            stage.focus = this.name_text;
            this.name_text.setSelection(this.name_text.text.length,this.name_text.text.length);
         }
         this.name_text.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-mC§,false,0,true);
         this.§_-zm§.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-T§,false,0,true);
         _loc4_;
         _loc4_;
         this.response_text.mouseEnabled = false;
      }
      
      public function §_-mC§(param1:KeyboardEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         if(param1.charCode == 13)
         {
            _loc2_;
            stage.focus = this.§_-zm§;
         }
      }
      
      public function §_-T§(param1:KeyboardEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(param1.charCode == 13)
         {
            _loc2_;
            this.§_-Eh§.onClick(null);
         }
      }
   }
}
