package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.events.MouseEvent;
   
   public class §_-c§ extends Sprite
   {
      
      public function §_-c§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         this.§_-dc§();
         this.refresh_button.mouseEnabled = true;
         this.refresh_button.mouseChildren = false;
         this.refresh_button.buttonMode = true;
         this.refresh_button.addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         this.refresh_button.addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         _loc1_;
         this.refresh_button.addEventListener(MouseEvent.CLICK,this.§_-h6§,false,0,true);
         this.refresh_button.gotoAndStop("up");
      }
      
      public var refresh_button:MovieClip;
      
      public var §_-d§:MovieClip;
      
      public var §_-GW§:TextField;
      
      public var §_-hc§:MovieClip;
      
      private var §_-cL§:Boolean = false;
      
      public function §_-dc§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:* = "players";
         var _loc2_:* = "games";
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(Global.§_-RP§ == 1)
         {
            _loc4_;
            _loc4_;
            _loc1_ = "player";
         }
         if(Global.§each § == 1)
         {
            _loc4_;
            _loc4_;
            _loc2_ = "game";
            _loc3_;
            _loc3_;
         }
         this.§_-GW§.text = String(Global.§_-RP§ + " " + _loc1_ + " in " + Global.§each § + " " + _loc2_);
         this.§_-cL§ = false;
         this.refresh_button.mouseEnabled = true;
         this.refresh_button.buttonMode = true;
         this.refresh_button.gotoAndStop("up");
      }
      
      public function §_-h6§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(!this.§_-cL§)
         {
            _loc2_;
            Global.lobby_client.refreshCurrentStats();
            this.refresh_button.mouseEnabled = false;
            this.refresh_button.buttonMode = false;
            _loc2_;
            _loc2_;
            this.refresh_button.gotoAndStop("off");
            this.§_-cL§ = true;
         }
      }
      
      public function doRollOver(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         if(this.§_-cL§)
         {
            _loc2_;
            this.refresh_button.gotoAndStop("off");
            _loc3_;
            _loc3_;
         }
         else
         {
            this.refresh_button.gotoAndStop("over");
         }
      }
      
      public function doRollOut(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(this.§_-cL§)
         {
            _loc2_;
            _loc2_;
            this.refresh_button.gotoAndStop("off");
            _loc3_;
         }
         else
         {
            this.refresh_button.gotoAndStop("up");
         }
      }
   }
}
