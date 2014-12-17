package §_-WX§
{
   public class §_-rQ§ extends Object
   {
      
      public function §_-rQ§(param1:String, param2:int, param3:String, param4:String, param5:String = "", param6:String = "", param7:String = "")
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         _loc8_;
         _loc8_;
         super();
         _loc9_;
         this.§_-8Z§ = param1;
         _loc9_;
         this.itemID = param2;
         this.itemName = param3;
         this.itemShopDesc = param4;
         this.itemExtraDesc = param5;
         _loc8_;
         _loc8_;
         this.itemGameDesc = param6;
         this.itemWepDesc = param7;
      }
      
      public var §_-8Z§:String;
      
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
