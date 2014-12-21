package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.utils.getDefinitionByName;
   
   public class §_-ug§ extends §_-nd§
   {
      
      public function §_-ug§(param1:int)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         super();
         _loc3_;
         _loc3_;
         this.medal_id = param1;
         var _loc2_:Class = getDefinitionByName("Medal" + param1) as Class;
         _loc4_;
         this.§_-XB§ = new _loc2_() as Sprite;
         _loc3_;
         _loc3_;
         addChild(this.§_-XB§);
      }
      
      private var medal_id:int;
      
      private var §_-XB§:Sprite;
      
      private var §_-nq§:Sprite;
   }
}
