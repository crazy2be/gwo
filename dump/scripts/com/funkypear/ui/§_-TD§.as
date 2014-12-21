package com.funkypear.ui
{
   import flash.text.TextField;
   import flash.display.Sprite;
   import flash.text.TextFormat;
   import §_-Ff§.ItemsData;
   import flash.utils.getDefinitionByName;
   
   public class §_-TD§ extends §_-C3§
   {
      
      public function §_-TD§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         super();
      }
      
      public var desc_text:TextField;
      
      public var name_text:TextField;
      
      override public function displayItemDetails(param1:String, param2:int) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:Class = null;
         var _loc5_:Sprite = null;
         var _loc3_:TextFormat = new TextFormat();
         _loc3_.letterSpacing = -0.7;
         this.name_text.text = ItemsData.§_-7L§(param1,param2).toUpperCase();
         _loc7_;
         _loc7_;
         this.desc_text.text = ItemsData.§_-up§(param1,param2).toUpperCase();
         _loc6_;
         this.name_text.setTextFormat(_loc3_);
         _loc7_;
         _loc7_;
         this.desc_text.setTextFormat(_loc3_);
         if(§_-hE§.numChildren > 0)
         {
            while(§_-hE§.numChildren > 0)
            {
               §_-hE§.removeChildAt(0);
               _loc6_;
            }
            _loc6_;
         }
         _loc6_;
         _loc6_;
         _loc7_;
         _loc6_;
         _loc7_;
         if(param2 == 0 || param2 == 1 || param2 == 2)
         {
            _loc4_ = getDefinitionByName("BoosterIcon1") as Class;
         }
         else
         {
            _loc4_ = getDefinitionByName("BoosterIcon2") as Class;
         }
         _loc5_ = new _loc4_() as Sprite;
         _loc5_.scaleX = 1.2;
         _loc6_;
         _loc6_;
         _loc5_.scaleY = 1.2;
         _loc7_;
         §_-hE§.addChild(_loc5_);
      }
   }
}
