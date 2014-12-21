package com.funkypear.ui
{
   import flash.text.TextField;
   import flash.display.MovieClip;
   import §_-bY§.§_-Lw§;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   import flash.display.Sprite;
   
   public class §_-W4§ extends §_-uw§
   {
      
      public function §_-W4§(param1:Sprite)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         super(param1);
         _loc2_;
         _loc2_;
         x = 1500;
         _loc3_;
         y = 138;
      }
      
      public var §_-uu§:TextField;
      
      public var waiting_bg:MovieClip;
      
      public var §_-Ah§:TextField;
      
      public var update_button:§_-Lw§;
      
      private var §_-g-§:String = "";
      
      private var §_-Xf§:String = "";
      
      public function getOnScreen() : Boolean
      {
         return §_-0B§;
      }
      
      override public function doClose() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         tweenOut(true);
      }
      
      public function clickOK() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.doClose();
      }
      
      public function update(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-g-§ = param1.split("|")[0];
         _loc2_;
         _loc2_;
         this.§_-Xf§ = param1.split("|")[1];
         _loc3_;
         this.§_-Ah§.text = this.§_-g-§;
         _loc2_;
         this.§_-uu§.text = this.§_-Xf§;
      }
      
      override public function tweenIn(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!§_-0B§)
         {
            _loc3_;
            tweenInExtras();
            §_-hH§ = new Tween(this,"x",Strong.easeOut,x,130,1,true);
            §_-hH§.start();
            _loc2_;
            if(param1)
            {
               shadow_mc.alpha = 0;
               shadow_mc.visible = true;
               _loc3_;
               _loc3_;
               fade_in = new Tween(shadow_mc,"alpha",Strong.easeOut,0,0.5,1,true);
               fade_in.start();
            }
            §_-0B§ = true;
         }
      }
      
      private function formatNumber(param1:String) : String
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc4_:String = null;
         _loc5_;
         _loc5_;
         var _loc2_:String = param1;
         var _loc3_:* = "";
         while(_loc2_.length > 3)
         {
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc4_ = _loc2_.substr(-3);
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc2_ = _loc2_.substr(0,_loc2_.length - 3);
            _loc6_;
            _loc6_;
            _loc6_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc3_ = "," + _loc4_ + _loc3_;
            _loc5_;
         }
         _loc5_;
         _loc5_;
         _loc5_;
         _loc3_ = _loc2_ + _loc3_;
         return _loc3_;
      }
   }
}
