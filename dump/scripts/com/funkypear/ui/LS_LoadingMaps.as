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
         _loc1_;
         super();
      }
      
      private var §_-BB§:Number;
      
      override protected function setStartPosition(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc3_;
         if(Global.page_dir_clicked == 1)
         {
            _loc3_;
            x = 800;
            _loc3_;
            _loc3_;
            y = 0;
            _loc3_;
         }
         else if(Global.page_dir_clicked == 2)
         {
            _loc3_;
            _loc3_;
            x = -800;
            _loc3_;
            y = 0;
            _loc2_;
            _loc2_;
         }
         else
         {
            x = 800;
            _loc2_;
            y = 0;
         }
         
      }
      
      override protected function drawScreen(param1:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Sprite = new §_-SP§();
         _loc4_;
         _loc2_.name = "lls";
         _loc4_;
         _loc4_;
         addChild(_loc2_);
      }
      
      override protected function tweenOn(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc2_;
         if(Global.page_dir_clicked == 1)
         {
            §_-L0§(true);
            this.§_-BB§ = x;
            _loc3_;
            addEventListener(Event.ENTER_FRAME,this.§_-Dr§,false,0,true);
            _loc3_;
            _loc3_;
         }
         else if(Global.page_dir_clicked == 2)
         {
            §_-9U§(true);
            _loc2_;
            _loc2_;
            this.§_-BB§ = x;
            addEventListener(Event.ENTER_FRAME,this.§_-A-§,false,0,true);
            _loc3_;
         }
         else
         {
            §_-L0§(true);
            this.§_-BB§ = x;
            addEventListener(Event.ENTER_FRAME,this.§_-Dr§,false,0,true);
         }
         
      }
      
      private function §_-Dr§(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-BB§ = this.§_-BB§ + 26.67;
         _loc2_;
         SafeGlobal.TIMELINE.timeline.starMap.moveTo(this.§_-BB§,y);
      }
      
      private function §_-A-§(param1:Event) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc3_;
         _loc3_;
         this.§_-BB§ = this.§_-BB§ - 26.67;
         _loc3_;
         SafeGlobal.TIMELINE.timeline.starMap.moveTo(this.§_-BB§,y);
      }
      
      override protected function tweenOff(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(Global.page_dir_clicked == 1)
         {
            removeEventListener(Event.ENTER_FRAME,this.§_-Dr§);
            §_-4y§();
         }
         else if(Global.page_dir_clicked == 2)
         {
            removeEventListener(Event.ENTER_FRAME,this.§_-A-§);
            §_-eY§();
         }
         else
         {
            removeEventListener(Event.ENTER_FRAME,this.§_-Dr§);
            §_-4y§();
         }
         
      }
   }
}
