package com.funkypear.ui
{
   import flash.text.TextField;
   import §_-Ff§.§_-cq§;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   import flash.display.Sprite;
   import flash.text.TextFormat;
   
   public class LP_DailyChallenge extends §_-uw§
   {
      
      public function LP_DailyChallenge(param1:Sprite)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         super(param1);
         _loc3_;
         _loc3_;
         x = 1500;
         _loc4_;
         y = 148;
         var _loc2_:TextFormat = new TextFormat();
         _loc3_;
         _loc3_;
         _loc2_.letterSpacing = -1;
         _loc4_;
         this.award_desc_text.defaultTextFormat = _loc2_;
      }
      
      public var award_desc_text:TextField;
      
      public function getOnScreen() : Boolean
      {
         return §_-0B§;
      }
      
      override public function doClose() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(SafeGlobal.§_-Hr§ == false)
         {
            _loc2_;
            _loc2_;
            Global.lobby_display.§_-aH§();
            _loc1_;
            tweenOut(false);
            _loc1_;
         }
         else
         {
            tweenOut(true);
         }
      }
      
      public function clickOK() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.doClose();
      }
      
      public function update() : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:String = §_-cq§.§_-Cp§[SafeGlobal.§_-dW§];
         var _loc2_:Array = _loc1_.split("X");
         _loc6_;
         var _loc3_:int = SafeGlobal.§_-mh§;
         _loc6_;
         _loc6_;
         _loc5_;
         if(SafeGlobal.§_-dW§ == 18)
         {
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc3_ = SafeGlobal.§_-mh§ / 60;
         }
         var _loc4_:String = String(_loc2_[0] + _loc3_ + _loc2_[1]);
         _loc6_;
         this.award_desc_text.text = _loc4_;
      }
      
      override public function tweenIn(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!§_-0B§)
         {
            tweenInExtras();
            _loc2_;
            §_-hH§ = new Tween(this,"x",Strong.easeOut,x,130,1,true);
            §_-hH§.start();
            if(param1)
            {
               _loc3_;
               shadow_mc.alpha = 0;
               shadow_mc.visible = true;
               fade_in = new Tween(shadow_mc,"alpha",Strong.easeOut,0,0.5,1,true);
               fade_in.start();
            }
            §_-0B§ = true;
         }
      }
      
      private function formatNumber(param1:String) : String
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc4_:String = null;
         _loc5_;
         var _loc2_:String = param1;
         var _loc3_:* = "";
         while(_loc2_.length > 3)
         {
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc4_ = _loc2_.substr(-3);
            _loc6_;
            _loc6_;
            _loc5_;
            _loc5_;
            _loc2_ = _loc2_.substr(0,_loc2_.length - 3);
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc5_;
            _loc3_ = "," + _loc4_ + _loc3_;
            _loc6_;
         }
         _loc6_;
         _loc6_;
         _loc3_ = _loc2_ + _loc3_;
         return _loc3_;
      }
   }
}
