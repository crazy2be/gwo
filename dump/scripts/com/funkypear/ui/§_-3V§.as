package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import §_-ZN§.§_-f4§;
   import §_-ZN§.RetrievePasswordButton;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   
   public class §_-3V§ extends Sprite
   {
      
      public function §_-3V§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
         _loc2_;
         addEventListener(Event.ADDED_TO_STAGE,this.init,false,0,true);
      }
      
      public var response_text:TextField;
      
      public var §_-v5§:TextField;
      
      public var back_button:§_-f4§;
      
      public var §_-cX§:RetrievePasswordButton;
      
      public function init(param1:Event) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         removeEventListener(Event.ADDED_TO_STAGE,this.init);
         _loc2_;
         this.§_-v5§.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-f7§,false,0,true);
      }
      
      private function §_-f7§(param1:KeyboardEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(param1.charCode == 13)
         {
            _loc2_;
            this.§_-cX§.onClick(null);
         }
      }
   }
}
