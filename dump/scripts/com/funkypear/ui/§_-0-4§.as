package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import §_-bY§.§_-AJ§;
   import §_-bY§.RetrievePasswordButton;
   import flash.events.Event;
   import flash.events.KeyboardEvent;
   
   public class §_-0-4§ extends Sprite
   {
      
      public function §_-0-4§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
         _loc2_;
         addEventListener(Event.ADDED_TO_STAGE,this.init,false,0,true);
      }
      
      public var response_text:TextField;
      
      public var §_-FI§:TextField;
      
      public var back_button:§_-AJ§;
      
      public var §_-BR§:RetrievePasswordButton;
      
      public function init(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         removeEventListener(Event.ADDED_TO_STAGE,this.init);
         _loc3_;
         _loc3_;
         this.§_-FI§.addEventListener(KeyboardEvent.KEY_DOWN,this.§_-8U§,false,0,true);
      }
      
      private function §_-8U§(param1:KeyboardEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(param1.charCode == 13)
         {
            _loc3_;
            _loc3_;
            this.§_-BR§.onClick(null);
         }
      }
   }
}
