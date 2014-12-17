package §_-ZN§
{
   import flash.text.TextField;
   import flash.text.TextFormat;
   import §_-Cv§.ItemsData;
   import flash.events.MouseEvent;
   
   public class ButtonBuyShopItem extends SimpleButton
   {
      
      public function ButtonBuyShopItem()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         super();
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      public var g_text:TextField;
      
      public var §_-gn§:§_-Bb§;
      
      public var buy_text:TextField;
      
      public function §_-Gv§(param1:String) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc5_:* = NaN;
         _loc6_;
         _loc6_;
         var _loc2_:String = param1.substr(0,1);
         var _loc3_:int = parseInt(param1.substr(1));
         var _loc4_:TextFormat = new TextFormat();
         _loc4_.letterSpacing = 0;
         _loc6_;
         _loc6_;
         this.buy_text.defaultTextFormat = _loc4_;
         _loc6_;
         this.buy_text.text = this.formatNumber(String(ItemsData.§_-Lz§(_loc2_,_loc3_)));
         _loc5_ = this.buy_text.textWidth;
         this.buy_text.text = String("BUY FOR      " + this.formatNumber(String(ItemsData.§_-Lz§(_loc2_,_loc3_))));
         this.g_text.x = 106 + this.buy_text.textWidth * 0.5;
         _loc6_;
         _loc6_;
         _loc7_;
         this.§_-gn§.x = 106 + this.buy_text.textWidth * 0.5 - _loc5_ - 15;
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc2_:String = param1.target.parent.itemID;
         _loc6_;
         var _loc3_:String = _loc2_.substr(0,1);
         var _loc4_:int = parseInt(_loc2_.substr(1));
         var _loc5_:String = String(_loc2_ + "," + ItemsData.§_-Lz§(_loc3_,_loc4_));
         _loc6_;
         Global.lobby_display.displayBuyItem(_loc5_);
      }
      
      public function hideMe() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         visible = false;
         _loc2_;
         mouseEnabled = false;
      }
      
      public function showMe() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         visible = true;
         _loc2_;
         mouseEnabled = true;
      }
      
      private function formatNumber(param1:String) : String
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:String = null;
         _loc6_;
         var _loc2_:String = param1;
         var _loc3_:* = "";
         while(_loc2_.length > 3)
         {
            _loc5_;
            _loc4_ = _loc2_.substr(-3);
            _loc5_;
            _loc5_;
            _loc2_ = _loc2_.substr(0,_loc2_.length - 3);
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc3_ = "," + _loc4_ + _loc3_;
            _loc6_;
         }
         _loc5_;
         _loc6_;
         _loc3_ = _loc2_ + _loc3_;
         return _loc3_;
      }
      
      function frame1() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         stop();
      }
   }
}
