package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.utils.getDefinitionByName;
   
   public class §_-TS§ extends §_-8X§
   {
      
      public function §_-TS§(param1:int)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         super();
         _loc4_;
         _loc4_;
         this.medal_id = param1;
         var _loc2_:Class = getDefinitionByName("Medal" + param1) as Class;
         _loc4_;
         this.§_-Hb§ = new _loc2_() as Sprite;
         _loc3_;
         _loc3_;
         addChild(this.§_-Hb§);
      }
      
      private var medal_id:int;
      
      private var §_-Hb§:Sprite;
      
      private var §_-4k§:Sprite;
   }
}
