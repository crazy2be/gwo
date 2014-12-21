package com.funkypear.ui
{
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §_-xR§ extends LobbyScreen
   {
      
      public function §_-xR§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         super();
      }
      
      private var anim:§_-j0§;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         x = 800;
         _loc2_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.anim = new §_-j0§();
         _loc3_;
         addChild(this.anim);
         _loc2_;
         _loc2_;
         buttonMode = true;
         _loc3_;
         _loc3_;
         mouseEnabled = true;
         _loc2_;
         addEventListener(MouseEvent.CLICK,this.§_-Fm§,false,0,true);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         §_-L0§();
      }
      
      public function §_-ud§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         Global.lobby_display.displayNextIntroAnim();
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         removeEventListener(MouseEvent.CLICK,this.§_-Fm§);
         _loc3_;
         _loc3_;
         §_-4y§();
      }
      
      private function §_-Fm§(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         var me:MouseEvent = param1;
         _loc5_;
         _loc5_;
         var url:URLRequest = new URLRequest("http://www.funkypear.com?ref=gwointroanim");
         try
         {
            navigateToURL(url,"_blank");
         }
         catch(e:Error)
         {
         }
      }
   }
}
