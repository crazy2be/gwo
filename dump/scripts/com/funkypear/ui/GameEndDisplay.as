package com.funkypear.ui
{
   import flash.display.Sprite;
   import fl.transitions.Tween;
   import fl.transitions.easing.*;
   import fl.transitions.TweenEvent;
   
   public class GameEndDisplay extends Sprite
   {
      
      public function GameEndDisplay(param1:LS_GameEnd, param2:Number, param3:Boolean, param4:int = -1, param5:int = -1)
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc7_:* = NaN;
         super();
         this.end_screen = param1;
         this.§_-L6§ = param3;
         if(this.§_-L6§)
         {
            _loc9_;
            _loc9_;
            this.campaign_id = param4;
            _loc8_;
            this.level_id = param5;
            this.§_-D5§();
            _loc8_;
            _loc8_;
         }
         this.§_-E0§ = new Sprite();
         this.§_-E0§.x = 0;
         _loc9_;
         this.§_-E0§.y = 0;
         this.§_-c3§ = new Array();
         _loc8_;
         _loc8_;
         var _loc6_:String = SafeGlobal.selected_level.thumbnail;
         _loc9_;
         _loc8_;
         if(_loc6_ != "")
         {
            this.§_-iH§ = new ThumbnailDisplay(_loc6_);
            _loc9_;
            _loc9_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            this.§_-iH§.scaleX = this.§_-wY§;
            _loc8_;
            _loc9_;
            this.§_-iH§.scaleY = this.§_-wY§;
            _loc9_;
            _loc7_ = 0 - 600 * this.§_-wY§;
            _loc8_;
            _loc9_;
            _loc9_;
            _loc8_;
            this.§_-iH§.x = _loc7_;
            _loc9_;
            _loc8_;
            this.§_-iH§.y = _loc7_;
            _loc9_;
            this.§_-mO§ = this.§_-iH§.radius * this.§_-wY§;
            this.full_radius = this.§_-iH§.radius;
         }
         else
         {
            this.§_-mO§ = 182;
            this.full_radius = param2;
            _loc8_;
            _loc8_;
         }
         this.§_-E0§.addChild(this.§_-iH§);
         _loc8_;
         _loc8_;
         this.§_-iH§.visible = false;
         _loc8_;
         this.circle_border = new CircleBorder(this.full_radius);
         _loc9_;
         _loc9_;
         this.circle_border.scaleX = this.§_-wY§;
         _loc8_;
         _loc8_;
         this.circle_border.scaleY = this.§_-wY§;
         _loc9_;
         _loc9_;
         this.§ set§ = this.§_-VJ§ / this.§_-mO§;
         _loc9_;
         this.§_-E0§.addChild(this.circle_border);
         _loc9_;
         _loc8_;
         this.circle_border.cacheAsBitmap = true;
         this.circle_border.visible = false;
         this.§_-yK§ = SafeGlobal.game_over_data.§_-a4§;
         this.§_-uf§();
         if(SafeGlobal.selected_level.mods != "")
         {
            this.§_-zu§(null,SafeGlobal.selected_level.mods);
         }
         addChild(this.§_-E0§);
      }
      
      private var §_-wY§:Number = 0.16;
      
      private var § set§:Number = 2.8;
      
      private var §_-U5§:Number = 1;
      
      private var §_-VJ§:Number = 182;
      
      private var §_-iH§:ThumbnailDisplay;
      
      private var §_-E0§:Sprite;
      
      private var circle_border:CircleBorder;
      
      private var §_-ib§:CircleText;
      
      private var §_-KF§:§_-Sf§;
      
      private var §_-mO§:Number;
      
      private var full_radius:Number;
      
      private var §_-bc§:Number = 1000;
      
      private var §_-c3§:Array;
      
      private var §_-L6§:Boolean = false;
      
      private var campaign_id:int;
      
      private var level_id:int;
      
      private var §_-yK§:int = 100;
      
      private var §_-lZ§:Array;
      
      private var §_-Ab§:§_-TS§;
      
      private var tween_x:Tween;
      
      private var tween_y:Tween;
      
      private var end_screen:LS_GameEnd;
      
      private var §_-FT§:Number = 121;
      
      private var §_-ZR§:Number = 117;
      
      private var §_-mS§:Number = 53;
      
      private var §_-jU§:Number = 51;
      
      private var §_-Mt§:Number = 60;
      
      private var §_-5S§:Number = 60;
      
      private var §_-t7§:Tween;
      
      public function §_-Wa§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(param1 == Global.SCREEN_BROWSE_CAMPAIGN)
         {
            _loc3_;
            _loc3_;
            this.§_-Di§(SafeGlobal.selected_level.campaign_id,SafeGlobal.selected_level.level_id);
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc3_;
            if(param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM)
            {
               this.§_-xL§(SafeGlobal.selected_level.slot_id);
               _loc2_;
               _loc2_;
            }
            else
            {
               _loc3_;
               _loc3_;
               if(param1 == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
               {
                  this.§_-Di§(SafeGlobal.selected_level.campaign_id,SafeGlobal.selected_level.level_id);
               }
               else if(param1 == Global.SCREEN_BROWSE_LATEST_CUSTOM)
               {
                  _loc2_;
                  _loc2_;
                  this.§_-qr§(SafeGlobal.selected_level.created_by);
               }
               
            }
         }
         if(this.§_-KF§ != null)
         {
            _loc2_;
            this.§_-t7§ = new Tween(this.§_-KF§,"alpha",Strong.easeOut,0,1,1,true);
            _loc2_;
            _loc2_;
            this.§_-t7§.start();
         }
      }
      
      public function §_-Di§(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         this.§_-KF§ = new §_-u6§();
         _loc4_;
         _loc4_;
         _loc3_;
         _loc4_;
         _loc4_;
         this.§_-KF§.setNumberText(param1 + 1,param2 + 1);
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         this.§_-KF§.x = 0;
         _loc4_;
         _loc3_;
         this.§_-KF§.y = 0 - this.§_-mO§;
         this.§_-KF§.alpha = 0;
         _loc4_;
         this.§_-E0§.addChild(this.§_-KF§);
      }
      
      public function §_-Nk§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.§_-KF§ = new §_-Dp§();
         _loc2_;
         _loc1_;
         _loc1_;
         this.§_-KF§.setMainText("CUSTOM GAME");
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         this.§_-KF§.x = 0;
         _loc1_;
         _loc1_;
         this.§_-KF§.y = 0 - this.§_-mO§;
         _loc2_;
         this.§_-KF§.alpha = 0;
         _loc1_;
         _loc1_;
         this.§_-E0§.addChild(this.§_-KF§);
      }
      
      public function §_-qr§(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.§_-KF§ = new §_-Dp§();
         _loc3_;
         this.§_-KF§.setCreatorText(param1);
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         this.§_-KF§.x = 30;
         _loc3_;
         _loc3_;
         this.§_-KF§.y = this.§_-mO§;
         this.§_-KF§.alpha = 0;
         this.§_-E0§.addChild(this.§_-KF§);
      }
      
      public function §_-xL§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-KF§ = new §_-Jl§();
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         this.§_-KF§.setSlotText(param1 + 1);
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-KF§.x = 0;
         _loc3_;
         _loc2_;
         _loc3_;
         _loc3_;
         this.§_-KF§.y = 0 - this.§_-mO§;
         this.§_-KF§.alpha = 0;
         _loc3_;
         _loc3_;
         this.§_-E0§.addChild(this.§_-KF§);
      }
      
      private function §_-D5§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-wY§ = SafeGlobal.campaigns[this.campaign_id].small_scale;
      }
      
      private function §_-uf§() : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         var _loc1_:Number = 33 * Math.PI / 180;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         var _loc2_:Number = this.§_-mO§ * Math.cos(_loc1_);
         _loc4_;
         _loc4_;
         _loc5_;
         var _loc3_:Number = this.§_-mO§ * Math.sin(_loc1_);
         _loc4_;
         this.§_-Ab§ = new §_-TS§(this.§_-yK§);
         _loc4_;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         this.§_-Ab§.x = _loc2_;
         _loc4_;
         _loc4_;
         _loc4_;
         this.§_-Ab§.y = _loc3_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         this.§_-Ab§.width = this.§_-FT§ * this.§_-mO§ / this.§_-VJ§;
         _loc5_;
         _loc4_;
         _loc4_;
         this.§_-Ab§.height = this.§_-ZR§ * this.§_-mO§ / this.§_-VJ§;
         _loc5_;
         _loc5_;
         this.§_-E0§.addChild(this.§_-Ab§);
      }
      
      public function §_-hZ§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         scaleX = this.§ set§;
         _loc1_;
         _loc1_;
         scaleY = this.§ set§;
      }
      
      public function §_-dX§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-iH§.visible = true;
         _loc2_;
         _loc2_;
         this.circle_border.visible = true;
         _loc2_;
         _loc2_;
         this.circle_border.cacheAsBitmap = false;
         this.tween_x = new Tween(this,"scaleX",Strong.easeOut,scaleX,1,1,true);
         _loc1_;
         _loc1_;
         this.tween_y = new Tween(this,"scaleY",Strong.easeOut,scaleY,1,1,true);
         _loc2_;
         _loc2_;
         _loc2_;
         this.tween_x.addEventListener(TweenEvent.MOTION_FINISH,this.§_-I§,false,0,true);
         _loc1_;
         this.tween_x.start();
         _loc1_;
         this.tween_y.start();
      }
      
      public function §_-I§(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.circle_border.cacheAsBitmap = true;
      }
      
      public function §_-zu§(param1:Array, param2:String = "") : void
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         _loc9_;
         if(param1 == null)
         {
            _loc9_;
            _loc9_;
            _loc9_;
            _loc9_;
            _loc9_;
            if(param2 != "")
            {
               _loc3_ = param2.split(",");
               var param1:Array = new Array();
               _loc9_;
               _loc9_;
               _loc4_ = 0;
               while(_loc4_ < _loc3_.length)
               {
                  param1[_loc4_] = parseInt(_loc3_[_loc4_]);
                  _loc9_;
                  _loc9_;
                  _loc4_++;
                  _loc9_;
               }
            }
            else
            {
               param1 = new Array();
            }
         }
         _loc9_;
         if(param1.length > 0)
         {
            _loc9_;
            _loc9_;
            _loc9_;
            _loc5_ = 0;
            _loc10_;
            while(_loc5_ < param1.length)
            {
               _loc10_;
               _loc10_;
               _loc9_;
               _loc6_ = (155 - _loc5_ * 23) * Math.PI / 180;
               _loc9_;
               _loc9_;
               _loc7_ = this.§_-mO§ * Math.cos(_loc6_);
               _loc9_;
               _loc8_ = this.§_-mO§ * Math.sin(_loc6_);
               _loc9_;
               this.§_-c3§.push(new §_-r7§(param1[_loc5_]));
               _loc10_;
               _loc10_;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               this.§_-c3§[this.§_-c3§.length - 1].x = _loc7_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               this.§_-c3§[this.§_-c3§.length - 1].y = _loc8_;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc10_;
               _loc10_;
               _loc10_;
               this.§_-c3§[this.§_-c3§.length - 1].width = this.§_-Mt§ * this.§_-mO§ / this.§_-VJ§;
               _loc9_;
               this.§_-c3§[this.§_-c3§.length - 1].height = this.§_-5S§ * this.§_-mO§ / this.§_-VJ§;
               this.§_-E0§.addChild(this.§_-c3§[this.§_-c3§.length - 1]);
               _loc5_++;
               _loc10_;
            }
         }
      }
   }
}
