package §_-bY§
{
   import flash.events.MouseEvent;
   import flash.system.System;
   
   public class §_-U1§ extends SimpleButton
   {
      
      public function §_-U1§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
         _loc2_;
         addFrameScript(0,this.frame1,9,this.frame10);
      }
      
      override public function onClick(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         System.setClipboard(String(Global.§_-r-§ + Global.save_replay_response));
      }
      
      function frame1() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         stop();
      }
      
      function frame10() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         stop();
      }
   }
}
