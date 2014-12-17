package com.funkypear.ui
{
   import §_-ZN§.§_-3f§;
   import flash.text.TextField;
   import flash.display.Sprite;
   import flash.text.TextFormat;
   import §_-Cv§.ItemsData;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   
   public class LP_MoreGravitons extends §_-A3§
   {
      
      public function LP_MoreGravitons(param1:Sprite)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         super(param1);
         x = 1500;
         _loc2_;
         y = 138;
         this.§_-Jm§ = new Sprite();
         this.§_-Jm§.x = 42;
         this.§_-Jm§.y = 170;
         addChild(this.§_-Jm§);
      }
      
      public var §_-Y1§:§_-3f§;
      
      public var buy_text:TextField;
      
      private var shop_id:String;
      
      private var item_type:String;
      
      private var item_id:int;
      
      private var cost:int;
      
      private var §_-Jm§:Sprite;
      
      public var back_to_shop:Boolean = false;
      
      private var §break§:String = "";
      
      public function getOnScreen() : Boolean
      {
         return §_-HF§;
      }
      
      override public function doClose() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         tweenOut(true);
         _loc1_;
         if(this.back_to_shop)
         {
            _loc1_;
            Global.lobby_display.lobby_menu.§_-rh§("MB_Shop");
         }
      }
      
      public function clickOk() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.doClose();
      }
      
      public function clickCancel() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.doClose();
      }
      
      public function update(param1:String) : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc2_:Array = null;
         var _loc3_:String = null;
         var _loc4_:TextFormat = null;
         _loc6_;
         this.§break§ = param1;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc5_;
         _loc5_;
         if(param1 != "")
         {
            _loc5_;
            _loc2_ = param1.split(",");
            this.shop_id = _loc2_[0];
            this.item_type = _loc2_[0].substr(0,1);
            this.item_id = int(_loc2_[0].substr(1));
            _loc5_;
            this.cost = int(_loc2_[1]);
            _loc5_;
            _loc5_;
            _loc6_;
            _loc3_ = "YOU DON\'T HAVE ENOUGH GRAVITONS TO BUY ";
            _loc5_;
            _loc6_;
            _loc5_;
            _loc3_ = _loc3_ + ItemsData.§_-vg§(this.item_type,this.item_id);
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            _loc3_ = _loc3_ + " ";
            _loc5_;
            _loc6_;
            _loc5_;
            _loc5_;
            _loc3_ = _loc3_ + ItemsData.§_-u2§(this.item_type,this.item_id).toUpperCase();
            _loc6_;
            _loc6_;
            _loc3_ = _loc3_ + " ";
            _loc5_;
            _loc3_ = _loc3_ + ItemsData.§_-Ed§(this.item_type,this.item_id);
            _loc4_ = new TextFormat();
            _loc4_.letterSpacing = -1;
            _loc6_;
            this.buy_text.defaultTextFormat = _loc4_;
            _loc5_;
            this.buy_text.text = _loc3_;
         }
         else
         {
            this.buy_text.text = "";
         }
      }
      
      override public function tweenIn(param1:Boolean = true) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         if(!§_-HF§)
         {
            _loc3_;
            _loc3_;
            tweenInExtras();
            _loc2_;
            _loc2_;
            §_-hW§ = new Tween(this,"x",Strong.easeOut,x,130,1,true);
            §_-hW§.start();
            if(param1)
            {
               shadow_mc.alpha = 0;
               _loc2_;
               shadow_mc.visible = true;
               _loc3_;
               _loc3_;
               fade_in = new Tween(shadow_mc,"alpha",Strong.easeOut,0,0.5,1,true);
               fade_in.start();
            }
            §_-HF§ = true;
         }
      }
      
      private function formatNumber(param1:String) : String
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:String = null;
         _loc6_;
         _loc6_;
         var _loc2_:String = param1;
         var _loc3_:* = "";
         while(true)
         {
            _loc6_;
            _loc6_;
            if(_loc2_.length <= 3)
            {
               break;
            }
            _loc5_;
            _loc5_;
            _loc6_;
            _loc4_ = _loc2_.substr(-3);
            _loc5_;
            _loc5_;
            _loc6_;
            _loc2_ = _loc2_.substr(0,_loc2_.length - 3);
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc3_ = "," + _loc4_ + _loc3_;
            _loc6_;
         }
         _loc5_;
         _loc5_;
         _loc6_;
         _loc5_;
         _loc3_ = _loc2_ + _loc3_;
         return _loc3_;
      }
   }
}
