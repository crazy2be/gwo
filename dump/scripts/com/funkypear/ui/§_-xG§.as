package com.funkypear.ui
{
   import flash.text.TextField;
   import flash.display.Sprite;
   import flash.text.TextFormat;
   import §_-Ff§.ItemsData;
   
   public class §_-xG§ extends §_-C3§
   {
      
      public function §_-xG§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
      }
      
      public var §_-ci§:TextField;
      
      public var desc_text:TextField;
      
      public var name_text:TextField;
      
      override public function displayItemDetails(param1:String, param2:int) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:Class = null;
         var _loc5_:Sprite = null;
         var _loc3_:TextFormat = new TextFormat();
         _loc3_.letterSpacing = -0.7;
         this.name_text.text = ItemsData.§_-7L§(param1,param2).toUpperCase();
         this.desc_text.text = ItemsData.§_-up§(param1,param2).toUpperCase();
         this.§_-ci§.text = ItemsData.§_-FQ§(param1,param2).toUpperCase();
         this.name_text.setTextFormat(_loc3_);
         _loc6_;
         this.desc_text.setTextFormat(_loc3_);
         this.§_-ci§.setTextFormat(_loc3_);
         if(§_-hE§.numChildren > 0)
         {
            while(§_-hE§.numChildren > 0)
            {
               §_-hE§.removeChildAt(0);
               _loc6_;
               _loc6_;
            }
         }
         _loc5_ = new §_-Rx§(param2) as Sprite;
         _loc5_.scaleX = 1;
         _loc7_;
         _loc5_.scaleY = 1;
         _loc7_;
         §_-hE§.addChild(_loc5_);
      }
   }
}
