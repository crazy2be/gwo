package com.funkypear.ui
{
   import flash.text.TextField;
   import §_-bY§.§_-wy§;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   import flash.display.Sprite;
   
   public class §_-Xc§ extends §_-uw§
   {
      
      public function §_-Xc§(param1:Sprite)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         super(param1);
         _loc2_;
         _loc2_;
         x = 1500;
         _loc3_;
         y = 138;
      }
      
      public var version_text:TextField;
      
      public var §_-aD§:§_-wy§;
      
      public function update(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.version_text.text = String("THIS VERSION: " + TimelineGlobal.version_number + "     NEW VERSION: " + param1);
      }
      
      override public function doClose() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         var _loc1_:Boolean = Global.lobby_display.getVCShadowTween();
         _loc3_;
         tweenOut(_loc1_);
      }
      
      public function clickOk() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.doClose();
      }
      
      override public function tweenIn(param1:Boolean = true) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(!§_-0B§)
         {
            tweenInExtras();
            §_-hH§ = new Tween(this,"x",Strong.easeOut,x,130,1,true);
            §_-hH§.start();
            if(param1)
            {
               shadow_mc.alpha = 0;
               _loc2_;
               shadow_mc.visible = true;
               _loc3_;
               fade_in = new Tween(shadow_mc,"alpha",Strong.easeOut,0,0.5,1,true);
               fade_in.start();
            }
            §_-0B§ = true;
         }
      }
   }
}
