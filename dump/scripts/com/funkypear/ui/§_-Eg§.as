package com.funkypear.ui
{
   import §_-bY§.§_-sF§;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   import flash.display.Sprite;
   
   public class §_-Eg§ extends §_-uw§
   {
      
      public function §_-Eg§(param1:Sprite)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         super(param1);
         _loc2_;
         _loc2_;
         x = 1500;
         _loc2_;
         y = 138;
      }
      
      public var §_-ek§:§_-sF§;
      
      public var slot_id:int;
      
      public function getOnScreen() : Boolean
      {
         return §_-0B§;
      }
      
      override public function doClose() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         tweenOut(true);
      }
      
      public function §_-O3§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         Global.lobby_client.deleteEditorSlot(this.slot_id);
         _loc2_;
         _loc2_;
         tweenOut(true);
      }
      
      public function §_-pv§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.doClose();
      }
      
      override public function tweenIn(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!§_-0B§)
         {
            _loc2_;
            _loc2_;
            tweenInExtras();
            _loc2_;
            §_-hH§ = new Tween(this,"x",Strong.easeOut,x,130,1,true);
            _loc2_;
            _loc2_;
            §_-hH§.start();
            if(param1)
            {
               _loc2_;
               shadow_mc.alpha = 0;
               shadow_mc.visible = true;
               _loc3_;
               fade_in = new Tween(shadow_mc,"alpha",Strong.easeOut,0,0.5,1,true);
               _loc3_;
               fade_in.start();
            }
            §_-0B§ = true;
         }
      }
   }
}
