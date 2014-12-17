package com.funkypear.ui
{
   import flash.text.TextField;
   import §_-Cv§.§_-tL§;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   import flash.display.Sprite;
   import flash.text.TextFormat;
   
   public class LP_WeeklyChallenge extends §_-A3§
   {
      
      public function LP_WeeklyChallenge(param1:Sprite)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         super(param1);
         _loc3_;
         _loc3_;
         x = 1500;
         _loc4_;
         _loc4_;
         y = 148;
         var _loc2_:TextFormat = new TextFormat();
         _loc3_;
         _loc2_.letterSpacing = -1;
         _loc3_;
         _loc3_;
         this.award_desc_text.defaultTextFormat = _loc2_;
      }
      
      public var award_desc_text:TextField;
      
      public function getOnScreen() : Boolean
      {
         return §_-HF§;
      }
      
      override public function doClose() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         tweenOut(true);
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
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:String = §_-tL§.§_-up§[SafeGlobal.§_-q5§];
         var _loc2_:Array = _loc1_.split("X");
         _loc5_;
         _loc5_;
         var _loc3_:int = SafeGlobal.§_-5Z§;
         _loc5_;
         _loc6_;
         _loc5_;
         if(SafeGlobal.§_-q5§ == 18)
         {
            _loc5_;
            _loc6_;
            _loc6_;
            _loc3_ = SafeGlobal.§_-5Z§ / 60;
         }
         var _loc4_:String = String(_loc2_[0] + _loc3_ + _loc2_[1]);
         _loc6_;
         _loc6_;
         this.award_desc_text.text = _loc4_;
      }
      
      override public function tweenIn(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!§_-HF§)
         {
            tweenInExtras();
            §_-hW§ = new Tween(this,"x",Strong.easeOut,x,130,1,true);
            _loc2_;
            _loc2_;
            §_-hW§.start();
            _loc3_;
            _loc3_;
            if(param1)
            {
               shadow_mc.alpha = 0;
               shadow_mc.visible = true;
               fade_in = new Tween(shadow_mc,"alpha",Strong.easeOut,0,0.5,1,true);
               fade_in.start();
            }
            §_-HF§ = true;
         }
      }
      
      private function formatNumber(param1:String) : String
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:String = null;
         _loc6_;
         var _loc2_:String = param1;
         var _loc3_:* = "";
         while(true)
         {
            _loc5_;
            if(_loc2_.length <= 3)
            {
               break;
            }
            _loc6_;
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
            _loc5_;
            _loc6_;
            _loc6_;
            _loc3_ = "," + _loc4_ + _loc3_;
            _loc6_;
            _loc6_;
         }
         _loc5_;
         _loc5_;
         _loc3_ = _loc2_ + _loc3_;
         return _loc3_;
      }
   }
}
