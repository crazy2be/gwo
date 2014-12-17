package com.funkypear.ui
{
   import flash.text.TextField;
   import flash.display.Sprite;
   import flash.text.TextFormat;
   import §_-Cv§.ItemsData;
   import flash.utils.getDefinitionByName;
   
   public class ShopInfoCampaign extends §_-PR§
   {
      
      public function ShopInfoCampaign()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
      }
      
      public var desc_text:TextField;
      
      public var strip_text_6:TextField;
      
      public var strip_text_7:TextField;
      
      public var strip_text_4:TextField;
      
      public var strip_text_5:TextField;
      
      public var strip_text_2:TextField;
      
      public var strip_text_3:TextField;
      
      public var strip_text_1:TextField;
      
      public var name_text:TextField;
      
      override public function displayItemDetails(param1:String, param2:int) : void
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc6_:Class = null;
         var _loc7_:Sprite = null;
         var _loc3_:TextFormat = new TextFormat();
         _loc9_;
         _loc9_;
         _loc3_.letterSpacing = -0.7;
         _loc8_;
         this.name_text.text = ItemsData.§_-u2§(param1,param2).toUpperCase();
         _loc9_;
         _loc9_;
         var _loc4_:String = ItemsData.§_-9F§(param1,param2);
         var _loc5_:Array = _loc4_.split("|");
         _loc9_;
         this.strip_text_1.text = _loc5_[0];
         _loc9_;
         this.strip_text_2.text = _loc5_[1];
         this.strip_text_3.text = _loc5_[2];
         this.strip_text_4.text = _loc5_[3];
         this.strip_text_5.text = _loc5_[4];
         _loc9_;
         this.strip_text_6.text = _loc5_[5];
         this.strip_text_7.text = _loc5_[6];
         this.name_text.setTextFormat(_loc3_);
         this.desc_text.setTextFormat(_loc3_);
         this.strip_text_1.setTextFormat(_loc3_);
         this.strip_text_2.setTextFormat(_loc3_);
         _loc8_;
         this.strip_text_3.setTextFormat(_loc3_);
         _loc9_;
         _loc9_;
         this.strip_text_4.setTextFormat(_loc3_);
         this.strip_text_5.setTextFormat(_loc3_);
         this.strip_text_6.setTextFormat(_loc3_);
         this.strip_text_7.setTextFormat(_loc3_);
         _loc8_;
         _loc8_;
         if(§_-Jm§.numChildren > 0)
         {
            while(§_-Jm§.numChildren > 0)
            {
               §_-Jm§.removeChildAt(0);
               _loc9_;
               _loc9_;
            }
         }
         _loc6_ = getDefinitionByName("CampaignIcon" + (param2 - 1)) as Class;
         _loc7_ = new _loc6_() as Sprite;
         _loc7_.scaleX = 0.4;
         _loc8_;
         _loc7_.scaleY = 0.4;
         _loc8_;
         _loc8_;
         §_-Jm§.addChild(_loc7_);
      }
   }
}
