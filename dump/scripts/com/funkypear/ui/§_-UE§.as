package com.funkypear.ui
{
   import flash.text.TextField;
   import flash.display.Sprite;
   import flash.text.TextFormat;
   import §_-Cv§.ItemsData;
   
   public class §_-UE§ extends §_-PR§
   {
      
      public function §_-UE§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
      }
      
      public var §_-ZY§:TextField;
      
      public var desc_text:TextField;
      
      public var name_text:TextField;
      
      override public function displayItemDetails(param1:String, param2:int) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:Class = null;
         var _loc5_:Sprite = null;
         var _loc3_:TextFormat = new TextFormat();
         _loc7_;
         _loc3_.letterSpacing = -0.7;
         this.name_text.text = ItemsData.§_-u2§(param1,param2).toUpperCase();
         this.desc_text.text = ItemsData.§_-7e§(param1,param2).toUpperCase();
         _loc7_;
         _loc7_;
         this.§_-ZY§.text = ItemsData.§_-9F§(param1,param2).toUpperCase();
         this.name_text.setTextFormat(_loc3_);
         this.desc_text.setTextFormat(_loc3_);
         this.§_-ZY§.setTextFormat(_loc3_);
         _loc7_;
         if(§_-Jm§.numChildren > 0)
         {
            while(§_-Jm§.numChildren > 0)
            {
               §_-Jm§.removeChildAt(0);
               _loc6_;
            }
         }
         _loc5_ = new §_-r7§(param2) as Sprite;
         _loc5_.scaleX = 1;
         _loc7_;
         _loc5_.scaleY = 1;
         _loc6_;
         §_-Jm§.addChild(_loc5_);
      }
   }
}
