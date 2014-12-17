package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.events.Event;
   
   public class LS_LoadingMaps extends LobbyScreen
   {
      
      public function LS_LoadingMaps()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         super();
      }
      
      private var §_-rk§:Number;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc2_;
         if(Global.page_dir_clicked == 1)
         {
            x = 800;
            y = 0;
         }
         else if(Global.page_dir_clicked == 2)
         {
            x = -800;
            y = 0;
         }
         else
         {
            x = 800;
            _loc2_;
            _loc2_;
            y = 0;
         }
         
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sprite = new §_-Ww§();
         _loc4_;
         _loc4_;
         _loc2_.name = "lls";
         _loc4_;
         _loc4_;
         addChild(_loc2_);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc3_;
         if(Global.page_dir_clicked == 1)
         {
            §_-QO§(true);
            _loc2_;
            _loc2_;
            this.§_-rk§ = x;
            _loc3_;
            addEventListener(Event.ENTER_FRAME,this.§_-a§,false,0,true);
            _loc3_;
            _loc3_;
         }
         else if(Global.page_dir_clicked == 2)
         {
            §_-1I§(true);
            _loc2_;
            _loc2_;
            this.§_-rk§ = x;
            addEventListener(Event.ENTER_FRAME,this.§_-fF§,false,0,true);
         }
         else
         {
            §_-QO§(true);
            this.§_-rk§ = x;
            _loc3_;
            _loc3_;
            addEventListener(Event.ENTER_FRAME,this.§_-a§,false,0,true);
         }
         
      }
      
      private function §_-a§(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc2_;
         this.§_-rk§ = this.§_-rk§ + 26.67;
         _loc2_;
         SafeGlobal.TIMELINE.timeline.starMap.moveTo(this.§_-rk§,y);
      }
      
      private function §_-fF§(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc3_;
         this.§_-rk§ = this.§_-rk§ - 26.67;
         _loc2_;
         SafeGlobal.TIMELINE.timeline.starMap.moveTo(this.§_-rk§,y);
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(Global.page_dir_clicked == 1)
         {
            _loc2_;
            removeEventListener(Event.ENTER_FRAME,this.§_-a§);
            _loc2_;
            §_-j6§();
            _loc3_;
            _loc3_;
         }
         else if(Global.page_dir_clicked == 2)
         {
            _loc2_;
            removeEventListener(Event.ENTER_FRAME,this.§_-fF§);
            _loc2_;
            _loc2_;
            §_-hf§();
         }
         else
         {
            removeEventListener(Event.ENTER_FRAME,this.§_-a§);
            §_-j6§();
         }
         
      }
   }
}
