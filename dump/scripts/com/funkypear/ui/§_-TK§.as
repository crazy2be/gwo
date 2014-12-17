package com.funkypear.ui
{
   import flash.events.MouseEvent;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class §_-TK§ extends LobbyScreen
   {
      
      public function §_-TK§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         super();
      }
      
      private var anim:§_-DT§;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         x = 800;
         _loc2_;
         _loc2_;
         y = 0;
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.anim = new §_-DT§();
         _loc2_;
         _loc2_;
         addChild(this.anim);
         _loc3_;
         _loc3_;
         buttonMode = true;
         _loc3_;
         mouseEnabled = true;
         _loc2_;
         addEventListener(MouseEvent.CLICK,this.§_-rS§,false,0,true);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         §_-QO§();
      }
      
      public function §_-89§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         Global.lobby_display.displayNextIntroAnim();
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         removeEventListener(MouseEvent.CLICK,this.§_-rS§);
         _loc2_;
         §_-j6§();
      }
      
      private function §_-rS§(param1:MouseEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         var me:MouseEvent = param1;
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
