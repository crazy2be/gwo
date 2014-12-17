package com.funkypear.ui
{
   import §_-ZN§.§_-eB§;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   import flash.display.Sprite;
   
   public class §_-HZ§ extends §_-A3§
   {
      
      public function §_-HZ§(param1:Sprite)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         super(param1);
         _loc2_;
         _loc2_;
         x = 1500;
         _loc2_;
         y = 138;
      }
      
      public var §_-Y1§:§_-eB§;
      
      public var slot_id:int;
      
      public function getOnScreen() : Boolean
      {
         return §_-HF§;
      }
      
      override public function doClose() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         tweenOut(true);
      }
      
      public function §_-N9§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         Global.lobby_client.deleteEditorSlot(this.slot_id);
         _loc2_;
         _loc2_;
         tweenOut(true);
      }
      
      public function §_-4u§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.doClose();
      }
      
      override public function tweenIn(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(!§_-HF§)
         {
            _loc2_;
            tweenInExtras();
            _loc3_;
            §_-hW§ = new Tween(this,"x",Strong.easeOut,x,130,1,true);
            _loc3_;
            _loc3_;
            §_-hW§.start();
            _loc2_;
            if(param1)
            {
               shadow_mc.alpha = 0;
               _loc2_;
               shadow_mc.visible = true;
               fade_in = new Tween(shadow_mc,"alpha",Strong.easeOut,0,0.5,1,true);
               _loc2_;
               fade_in.start();
               _loc3_;
               _loc3_;
            }
            §_-HF§ = true;
         }
      }
   }
}
