package com.funkypear.ui.customweapon
{
   import flash.text.TextField;
   import com.funkypear.ui.§_-G-§;
   import §_-c-§.§_-IM§;
   import flash.text.TextFormat;
   
   public class CustomWeaponPayloadMenu extends CustomWeaponMenu
   {
      
      public function CustomWeaponPayloadMenu(param1:Number, param2:Number, param3:*)
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         super(param1,param2,param3);
         _loc5_;
         _loc5_;
         this.§_-KI§();
      }
      
      public var cost_text_1:TextField;
      
      public var desc_text:TextField;
      
      public var slider1:§_-G-§;
      
      public var value_text_1:TextField;
      
      public var value_title_text_1:TextField;
      
      public var cost_title_text_1:TextField;
      
      public var refund_title_text_1:TextField;
      
      public var refund_text_1:TextField;
      
      public var title_text_1:TextField;
      
      public function init(param1:Object) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         this.obj1 = param1;
         _loc5_;
         _loc4_;
         var _loc2_:int = (param1.max_value - param1.min_value) / param1.value_inc + 1;
         _loc4_;
         _loc5_;
         var _loc3_:int = (param1.item_value - param1.min_value) / param1.value_inc + 1;
         _loc5_;
         _loc4_;
         _loc4_;
         this.slider1.init(132,_loc2_,_loc3_,getSliderMax1);
         _loc5_;
         _loc5_;
         _loc5_;
         _loc4_;
         this.slider1.addEventListener(§_-IM§.ON_FINISH_DRAG,finishDragSlider1,false,0,true);
         _loc5_;
         this.slider1.addEventListener(§_-IM§.ON_VALUE_CHANGED,updateValueText1,false,0,true);
         _loc5_;
         _loc5_;
         this.updateText();
      }
      
      public function §_-C5§(param1:int, param2:int) : String
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         if(param2 == 1)
         {
            _loc3_;
            _loc3_;
            return String(param1 + 1);
         }
         return "";
      }
      
      override public function updateText() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         this.title_text_1.text = obj1.title_str;
         _loc3_;
         this.value_title_text_1.text = obj1.value_title_str;
         _loc3_;
         _loc3_;
         this.value_text_1.text = this.§_-C5§(obj1.item_value,1);
         var _loc1_:int = parent_holder.getNextItemCost(1);
         var _loc2_:int = parent_holder.getPrevItemCost(1);
         if(parent_holder.getItemAtMax(1))
         {
            this.cost_text_1.htmlText = "<font size=\'22\'>-</font>";
            this.cost_text_1.x = cost_x_1 - 10;
         }
         else
         {
            this.cost_text_1.htmlText = String("<font size=\'22\'>" + _loc1_ + "</font><font size=\'16\'>PTS</font>");
            this.cost_text_1.x = cost_x_1;
            _loc4_;
         }
         if(_loc2_ == 0)
         {
            _loc4_;
            _loc4_;
            this.refund_text_1.htmlText = "<font size=\'22\'>  -</font>";
         }
         else
         {
            this.refund_text_1.htmlText = String("<font size=\'22\'>" + _loc2_ + "</font><font size=\'16\'>PTS</font>");
         }
      }
      
      private function §_-KI§() : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:TextFormat = new TextFormat();
         _loc5_;
         _loc1_.letterSpacing = -1.5;
         _loc4_;
         this.title_text_1.defaultTextFormat = _loc1_;
         _loc4_;
         this.refund_text_1.defaultTextFormat = _loc1_;
         _loc5_;
         this.cost_text_1.defaultTextFormat = _loc1_;
         _loc4_;
         this.value_title_text_1.defaultTextFormat = _loc1_;
         var _loc2_:TextFormat = new TextFormat();
         _loc5_;
         _loc5_;
         _loc2_.letterSpacing = -1.2;
         _loc5_;
         this.refund_title_text_1.defaultTextFormat = _loc2_;
         _loc4_;
         this.cost_title_text_1.defaultTextFormat = _loc2_;
         _loc4_;
         cost_x_1 = this.cost_text_1.x;
         var _loc3_:TextFormat = new TextFormat();
         _loc4_;
         _loc4_;
         _loc3_.letterSpacing = -2;
         _loc5_;
         _loc5_;
         this.value_text_1.defaultTextFormat = _loc3_;
      }
   }
}
