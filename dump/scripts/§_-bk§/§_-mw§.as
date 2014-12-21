package §_-bk§
{
   public class §_-mw§ extends Object
   {
      
      public function §_-mw§(param1:String, param2:int, param3:String, param4:String, param5:String = "", param6:String = "", param7:String = "")
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         super();
         _loc9_;
         _loc9_;
         this.§_-vx§ = param1;
         this.itemID = param2;
         _loc9_;
         this.itemName = param3;
         _loc8_;
         _loc8_;
         this.itemShopDesc = param4;
         this.itemExtraDesc = param5;
         _loc9_;
         _loc9_;
         this.itemGameDesc = param6;
         _loc9_;
         this.itemWepDesc = param7;
      }
      
      public var §_-vx§:String;
      
      public var itemID:int;
      
      public var itemName:String;
      
      public var itemPrice:int = 0;
      
      public var itemShopDesc:String;
      
      public var itemExtraDesc:String;
      
      public var itemGameDesc:String;
      
      public var itemWepDesc:String;
      
      public function setItemPrice(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.itemPrice = param1;
      }
   }
}
