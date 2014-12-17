package com.funkypear.ui
{
   import flash.text.TextField;
   import §_-ZN§.§_-Oz§;
   import §_-ZN§.§_-qZ§;
   import flash.text.TextFormat;
   import flash.utils.getTimer;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   import flash.display.Sprite;
   
   public class §_-Rc§ extends §_-A3§
   {
      
      public function §_-Rc§(param1:Sprite)
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         super(param1);
         _loc2_;
         x = 1500;
         _loc3_;
         y = 138;
      }
      
      public var §_-li§:TextField;
      
      public var §_-0W§:§_-Oz§;
      
      public var §_-OY§:§_-qZ§;
      
      public var §_-vL§:TextField;
      
      private var §_-WF§:int = 0;
      
      public function update(param1:int) : void
      {
         var _loc13_:* = false;
         var _loc14_:* = true;
         _loc14_;
         this.§_-WF§ = param1;
         var _loc2_:TextFormat = new TextFormat();
         _loc14_;
         _loc14_;
         _loc2_.letterSpacing = -1;
         _loc13_;
         this.§_-li§.defaultTextFormat = _loc2_;
         var _loc3_:TextFormat = new TextFormat();
         _loc13_;
         _loc13_;
         _loc3_.letterSpacing = -1;
         _loc14_;
         _loc14_;
         this.§_-vL§.defaultTextFormat = _loc3_;
         var _loc4_:TextFormat = new TextFormat();
         _loc4_.letterSpacing = -2;
         _loc14_;
         this.§_-OY§.§_-yA§.defaultTextFormat = _loc4_;
         var _loc5_:Number = 5400;
         var _loc6_:int = getTimer() - SafeGlobal.§_-Wv§;
         var _loc7_:Number = Math.floor(_loc6_ / 1000);
         _loc13_;
         _loc13_;
         var _loc8_:Number = 5400 - _loc7_;
         _loc13_;
         _loc13_;
         _loc13_;
         var _loc9_:Number = _loc8_ % 60;
         var _loc10_:Number = Math.floor(_loc8_ % 3600 / 60);
         var _loc11_:Number = Math.floor(_loc8_ / (60 * 60));
         var _loc12_:* = "";
         if(_loc11_ > 0)
         {
            _loc13_;
            _loc13_;
            _loc13_;
            _loc13_;
            _loc13_;
            _loc12_ = _loc12_ + String(_loc11_);
            _loc13_;
            _loc13_;
            _loc14_;
            _loc14_;
            _loc13_;
            _loc12_ = _loc12_ + String(_loc11_) + "H ";
         }
         _loc13_;
         _loc13_;
         if(_loc10_ > 0)
         {
            _loc13_;
            _loc13_;
            _loc13_;
            _loc13_;
            _loc14_;
            _loc14_;
            _loc12_ = _loc12_ + String(_loc10_);
            _loc12_ = _loc12_ + "M";
         }
         _loc14_;
         _loc14_;
         _loc13_;
         _loc13_;
         _loc13_;
         _loc13_;
         _loc14_;
         _loc14_;
         if(_loc7_ >= _loc5_ || _loc11_ == 0 && _loc10_ == 0)
         {
            this.§_-WF§ = 2;
            this.§_-li§.text = "TIME REMAINING: NONE";
         }
         else
         {
            this.§_-li§.text = "TIME REMAINING: " + _loc12_;
            _loc14_;
            _loc14_;
         }
         _loc13_;
         _loc13_;
         _loc13_;
         _loc13_;
         if(param1 == 0)
         {
            _loc13_;
            _loc13_;
            _loc13_;
            _loc13_;
            if(_loc7_ >= _loc5_ || _loc11_ == 0 && _loc10_ == 0)
            {
               _loc13_;
               _loc13_;
               this.§_-vL§.text = "THIS GUEST ACCOUNT HAS EXPIRED\n\nREGISTER NOW TO SPEND YOUR GRAVITONS AND TO SAVE YOUR PROGRESS IN THE GAME";
               _loc14_;
               _loc14_;
               _loc14_;
               this.§_-OY§.§_-yA§.text = "QUIT GAME";
            }
            else
            {
               this.§_-vL§.text = "YOU ARE PLAYING ON A GUEST ACCOUNT\n\nREGISTER NOW TO SPEND YOUR GRAVITONS AND TO SAVE YOUR PROGRESS IN THE GAME";
               _loc13_;
               _loc13_;
               this.§_-OY§.§_-yA§.text = "NO THANKS";
               _loc14_;
            }
         }
         else if(param1 == 1)
         {
            _loc13_;
            _loc13_;
            _loc13_;
            _loc14_;
            if(_loc7_ >= _loc5_ || _loc11_ == 0 && _loc10_ == 0)
            {
               this.§_-vL§.text = "THIS GUEST ACCOUNT HAS EXPIRED\n\nREGISTER NOW TO UPGRADE YOUR ACCOUNT AND ENSURE YOU DON\'T LOSE YOUR PROGRESS";
               _loc13_;
               this.§_-OY§.§_-yA§.text = "QUIT GAME";
               _loc13_;
               _loc13_;
            }
            else
            {
               this.§_-vL§.text = "YOU ARE PLAYING ON A GUEST ACCOUNT\n\nREGISTER NOW TO UPGRADE YOUR ACCOUNT AND ENSURE YOU DON\'T LOSE YOUR PROGRESS";
               _loc13_;
               this.§_-OY§.§_-yA§.text = "NO THANKS";
            }
         }
         
      }
      
      public function getOnScreen() : Boolean
      {
         return §_-HF§;
      }
      
      override public function doClose() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         tweenOut(true);
         _loc1_;
         if(this.§_-WF§ == 2)
         {
            _loc1_;
            _loc1_;
            Global.lobby_client.§_-O2§();
            _loc1_;
            _loc1_;
            Global.lobby_display.displayLobbyScreen(Global.SCREEN_ERROR);
         }
      }
      
      public function clickCancel() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.doClose();
      }
      
      public function §_-6E§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         Global.lobby_display.§_-9-§();
         _loc1_;
         tweenOut(true);
         _loc1_;
         SafeGlobal.§_-zK§.§_-rF§(this.§_-WF§);
      }
      
      override public function tweenIn(param1:Boolean = true) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(!§_-HF§)
         {
            tweenInExtras();
            §_-hW§ = new Tween(this,"x",Strong.easeOut,x,130,1,true);
            §_-hW§.start();
            _loc2_;
            if(param1)
            {
               _loc2_;
               shadow_mc.alpha = 0;
               shadow_mc.visible = true;
               fade_in = new Tween(shadow_mc,"alpha",Strong.easeOut,0,0.5,1,true);
               _loc2_;
               _loc2_;
               fade_in.start();
            }
            §_-HF§ = true;
         }
      }
   }
}
