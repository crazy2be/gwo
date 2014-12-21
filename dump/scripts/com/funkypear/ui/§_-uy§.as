package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.events.MouseEvent;
   
   public class §_-uy§ extends Sprite
   {
      
      public function §_-uy§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         super();
         this.§_-Ar§();
         this.refresh_button.mouseEnabled = true;
         this.refresh_button.mouseChildren = false;
         this.refresh_button.buttonMode = true;
         this.refresh_button.addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
         this.refresh_button.addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         _loc2_;
         _loc2_;
         this.refresh_button.addEventListener(MouseEvent.CLICK,this.§_-jm§,false,0,true);
         _loc1_;
         _loc1_;
         this.refresh_button.gotoAndStop("up");
      }
      
      public var refresh_button:MovieClip;
      
      public var §_-cb§:MovieClip;
      
      public var §_-Zf§:TextField;
      
      public var §_-98§:MovieClip;
      
      private var §_-3G§:Boolean = false;
      
      public function §_-Ar§() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc1_:* = "players";
         var _loc2_:* = "games";
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         if(Global.§_-hx§ == 1)
         {
            _loc4_;
            _loc4_;
            _loc1_ = "player";
         }
         if(Global.§_-60§ == 1)
         {
            _loc3_;
            _loc3_;
            _loc2_ = "game";
         }
         this.§_-Zf§.text = String(Global.§_-hx§ + " " + _loc1_ + " in " + Global.§_-60§ + " " + _loc2_);
         this.§_-3G§ = false;
         _loc3_;
         this.refresh_button.mouseEnabled = true;
         _loc4_;
         this.refresh_button.buttonMode = true;
         _loc3_;
         this.refresh_button.gotoAndStop("up");
      }
      
      public function §_-jm§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(!this.§_-3G§)
         {
            _loc2_;
            _loc2_;
            Global.lobby_client.refreshCurrentStats();
            _loc3_;
            this.refresh_button.mouseEnabled = false;
            _loc3_;
            _loc3_;
            this.refresh_button.buttonMode = false;
            this.refresh_button.gotoAndStop("off");
            this.§_-3G§ = true;
         }
      }
      
      public function doRollOver(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         if(this.§_-3G§)
         {
            _loc2_;
            this.refresh_button.gotoAndStop("off");
            _loc2_;
         }
         else
         {
            this.refresh_button.gotoAndStop("over");
         }
      }
      
      public function doRollOut(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         if(this.§_-3G§)
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
