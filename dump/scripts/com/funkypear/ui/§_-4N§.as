package com.funkypear.ui
{
   import flash.text.TextField;
   import §_-ZN§.§_-7v§;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   import flash.display.Sprite;
   
   public class §_-4N§ extends §_-A3§
   {
      
      public function §_-4N§(param1:Sprite)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         super(param1);
         _loc2_;
         _loc2_;
         x = 1500;
         _loc3_;
         y = 138;
      }
      
      public var version_text:TextField;
      
      public var §_-pV§:§_-7v§;
      
      public function update(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.version_text.text = String("THIS VERSION: " + TimelineGlobal.version_number + "     NEW VERSION: " + param1);
      }
      
      override public function doClose() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         var _loc1_:Boolean = Global.lobby_display.getVCShadowTween();
         _loc3_;
         tweenOut(_loc1_);
      }
      
      public function clickOk() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.doClose();
      }
      
      override public function tweenIn(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(!§_-HF§)
         {
            _loc2_;
            _loc2_;
            tweenInExtras();
            §_-hW§ = new Tween(this,"x",Strong.easeOut,x,130,1,true);
            _loc2_;
            _loc2_;
            §_-hW§.start();
            if(param1)
            {
               _loc2_;
               shadow_mc.alpha = 0;
               shadow_mc.visible = true;
               fade_in = new Tween(shadow_mc,"alpha",Strong.easeOut,0,0.5,1,true);
               fade_in.start();
               _loc2_;
               _loc2_;
            }
            §_-HF§ = true;
         }
      }
   }
}
