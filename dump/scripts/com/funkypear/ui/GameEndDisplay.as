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
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc7_:* = NaN;
         super();
         _loc8_;
         _loc8_;
         this.end_screen = param1;
         this.§_-Td§ = param3;
         if(this.§_-Td§)
         {
            _loc8_;
            _loc8_;
            this.campaign_id = param4;
            _loc9_;
            this.level_id = param5;
            this.§_-k5§();
            _loc8_;
            _loc8_;
         }
         this.§_-Og§ = new Sprite();
         this.§_-Og§.x = 0;
         this.§_-Og§.y = 0;
         _loc9_;
         this.§_-6K§ = new Array();
         _loc8_;
         _loc8_;
         var _loc6_:String = SafeGlobal.selected_level.thumbnail;
         _loc9_;
         _loc8_;
         if(_loc6_ != "")
         {
            _loc9_;
            this.§_-Ls§ = new ThumbnailDisplay(_loc6_);
            _loc8_;
            _loc8_;
            _loc8_;
            this.§_-Ls§.scaleX = this.§_-kX§;
            _loc8_;
            _loc8_;
            _loc9_;
            _loc9_;
            this.§_-Ls§.scaleY = this.§_-kX§;
            _loc8_;
            _loc8_;
            _loc9_;
            _loc9_;
            _loc7_ = 0 - 600 * this.§_-kX§;
            _loc8_;
            _loc8_;
            _loc9_;
            this.§_-Ls§.x = _loc7_;
            _loc8_;
            _loc8_;
            this.§_-Ls§.y = _loc7_;
            _loc8_;
            _loc8_;
            _loc9_;
            this.§_-2D§ = this.§_-Ls§.radius * this.§_-kX§;
            _loc9_;
            this.full_radius = this.§_-Ls§.radius;
            _loc9_;
         }
         else
         {
            this.§_-2D§ = 182;
            this.full_radius = param2;
         }
         this.§_-Og§.addChild(this.§_-Ls§);
         this.§_-Ls§.visible = false;
         this.circle_border = new CircleBorder(this.full_radius);
         _loc9_;
         _loc9_;
         _loc8_;
         _loc8_;
         this.circle_border.scaleX = this.§_-kX§;
         _loc8_;
         this.circle_border.scaleY = this.§_-kX§;
         _loc8_;
         _loc9_;
         _loc9_;
         this.§_-jG§ = this.§_-90§ / this.§_-2D§;
         this.§_-Og§.addChild(this.circle_border);
         _loc8_;
         _loc9_;
         _loc8_;
         _loc8_;
         this.circle_border.cacheAsBitmap = true;
         this.circle_border.visible = false;
         _loc8_;
         this.§_-Yl§ = SafeGlobal.game_over_data.§_-Ht§;
         _loc9_;
         _loc9_;
         this.§_-6I§();
         if(SafeGlobal.selected_level.mods != "")
         {
            _loc9_;
            this.§_-DW§(null,SafeGlobal.selected_level.mods);
            _loc9_;
         }
         addChild(this.§_-Og§);
      }
      
      private var §_-kX§:Number = 0.16;
      
      private var §_-jG§:Number = 2.8;
      
      private var §_-xn§:Number = 1;
      
      private var §_-90§:Number = 182;
      
      private var §_-Ls§:ThumbnailDisplay;
      
      private var §_-Og§:Sprite;
      
      private var circle_border:CircleBorder;
      
      private var §_-ox§:CircleText;
      
      private var §_-bC§:§_-Tu§;
      
      private var §_-2D§:Number;
      
      private var full_radius:Number;
      
      private var §_-Kq§:Number = 1000;
      
      private var §_-6K§:Array;
      
      private var §_-Td§:Boolean = false;
      
      private var campaign_id:int;
      
      private var level_id:int;
      
      private var §_-Yl§:int = 100;
      
      private var §_-Mu§:Array;
      
      private var §_-a6§:§_-ug§;
      
      private var tween_x:Tween;
      
      private var tween_y:Tween;
      
      private var end_screen:LS_GameEnd;
      
      private var §_-3q§:Number = 121;
      
      private var §_-1Z§:Number = 117;
      
      private var §_-MR§:Number = 53;
      
      private var §_-zo§:Number = 51;
      
      private var §_-g7§:Number = 60;
      
      private var § case§:Number = 60;
      
      private var §_-f3§:Tween;
      
      public function §_-0-e§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         if(param1 == Global.SCREEN_BROWSE_CAMPAIGN)
         {
            _loc3_;
            _loc3_;
            this.§_-6x§(SafeGlobal.selected_level.campaign_id,SafeGlobal.selected_level.level_id);
         }
         else
         {
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            if(param1 == Global.SCREEN_BROWSE_YOUR_CUSTOM)
            {
               this.§_-7z§(SafeGlobal.selected_level.slot_id);
            }
            else
            {
               _loc2_;
               _loc2_;
               if(param1 == Global.SCREEN_BROWSE_CAMPAIGN_CUSTOM)
               {
                  _loc3_;
                  _loc3_;
                  this.§_-6x§(SafeGlobal.selected_level.campaign_id,SafeGlobal.selected_level.level_id);
               }
               else if(param1 == Global.SCREEN_BROWSE_LATEST_CUSTOM)
               {
                  this.§_-Sn§(SafeGlobal.selected_level.created_by);
                  _loc2_;
               }
               
            }
         }
         if(this.§_-bC§ != null)
         {
            this.§_-f3§ = new Tween(this.§_-bC§,"alpha",Strong.easeOut,0,1,1,true);
            _loc2_;
            this.§_-f3§.start();
         }
      }
      
      public function §_-6x§(param1:int, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         this.§_-bC§ = new §_-xu§();
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         this.§_-bC§.setNumberText(param1 + 1,param2 + 1);
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         this.§_-bC§.x = 0;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-bC§.y = 0 - this.§_-2D§;
         this.§_-bC§.alpha = 0;
         this.§_-Og§.addChild(this.§_-bC§);
      }
      
      public function §_-mo§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-bC§ = new §_-3p§();
         _loc2_;
         _loc2_;
         this.§_-bC§.setMainText("CUSTOM GAME");
         _loc1_;
         _loc1_;
         _loc1_;
         this.§_-bC§.x = 0;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc1_;
         this.§_-bC§.y = 0 - this.§_-2D§;
         this.§_-bC§.alpha = 0;
         _loc1_;
         this.§_-Og§.addChild(this.§_-bC§);
      }
      
      public function §_-Sn§(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.§_-bC§ = new §_-3p§();
         _loc2_;
         _loc2_;
         this.§_-bC§.setCreatorText(param1);
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         this.§_-bC§.x = 30;
         _loc3_;
         this.§_-bC§.y = this.§_-2D§;
         this.§_-bC§.alpha = 0;
         _loc2_;
         this.§_-Og§.addChild(this.§_-bC§);
      }
      
      public function §_-7z§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         this.§_-bC§ = new §_-gl§();
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc2_;
         this.§_-bC§.setSlotText(param1 + 1);
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-bC§.x = 0;
         _loc2_;
         _loc3_;
         this.§_-bC§.y = 0 - this.§_-2D§;
         _loc3_;
         this.§_-bC§.alpha = 0;
         this.§_-Og§.addChild(this.§_-bC§);
      }
      
      private function §_-k5§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-kX§ = SafeGlobal.campaigns[this.campaign_id].small_scale;
      }
      
      private function §_-6I§() : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         var _loc1_:Number = 33 * Math.PI / 180;
         _loc4_;
         _loc4_;
         _loc4_;
         var _loc2_:Number = this.§_-2D§ * Math.cos(_loc1_);
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         var _loc3_:Number = this.§_-2D§ * Math.sin(_loc1_);
         _loc4_;
         _loc4_;
         this.§_-a6§ = new §_-ug§(this.§_-Yl§);
         _loc4_;
         _loc5_;
         this.§_-a6§.x = _loc2_;
         _loc5_;
         _loc4_;
         _loc4_;
         _loc4_;
         this.§_-a6§.y = _loc3_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         this.§_-a6§.width = this.§_-3q§ * this.§_-2D§ / this.§_-90§;
         _loc5_;
         _loc5_;
         this.§_-a6§.height = this.§_-1Z§ * this.§_-2D§ / this.§_-90§;
         _loc4_;
         _loc4_;
         this.§_-Og§.addChild(this.§_-a6§);
      }
      
      public function §_-fH§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         scaleX = this.§_-jG§;
         _loc2_;
         _loc2_;
         scaleY = this.§_-jG§;
      }
      
      public function §_-yq§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-Ls§.visible = true;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         this.circle_border.visible = true;
         _loc2_;
         this.circle_border.cacheAsBitmap = false;
         this.tween_x = new Tween(this,"scaleX",Strong.easeOut,scaleX,1,1,true);
         _loc2_;
         _loc2_;
         this.tween_y = new Tween(this,"scaleY",Strong.easeOut,scaleY,1,1,true);
         _loc2_;
         _loc2_;
         _loc1_;
         this.tween_x.addEventListener(TweenEvent.MOTION_FINISH,this.§_-0-9§,false,0,true);
         this.tween_x.start();
         _loc2_;
         this.tween_y.start();
      }
      
      public function §_-0-9§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.circle_border.cacheAsBitmap = true;
      }
      
      public function §_-DW§(param1:Array, param2:String = "") : void
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         _loc10_;
         if(param1 == null)
         {
            _loc10_;
            _loc10_;
            _loc9_;
            _loc9_;
            if(param2 != "")
            {
               _loc3_ = param2.split(",");
               var param1:Array = new Array();
               _loc9_;
               _loc4_ = 0;
               while(_loc4_ < _loc3_.length)
               {
                  param1[_loc4_] = parseInt(_loc3_[_loc4_]);
                  _loc10_;
                  _loc10_;
                  _loc4_++;
                  _loc10_;
                  _loc10_;
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
            _loc10_;
            _loc10_;
            _loc5_ = 0;
            while(_loc5_ < param1.length)
            {
               _loc9_;
               _loc9_;
               _loc10_;
               _loc6_ = (155 - _loc5_ * 23) * Math.PI / 180;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc7_ = this.§_-2D§ * Math.cos(_loc6_);
               _loc10_;
               _loc10_;
               _loc10_;
               _loc8_ = this.§_-2D§ * Math.sin(_loc6_);
               _loc9_;
               _loc9_;
               _loc10_;
               _loc10_;
               this.§_-6K§.push(new §_-Rx§(param1[_loc5_]));
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               this.§_-6K§[this.§_-6K§.length - 1].x = _loc7_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc9_;
               _loc9_;
               this.§_-6K§[this.§_-6K§.length - 1].y = _loc8_;
               _loc9_;
               _loc10_;
               _loc10_;
               _loc10_;
               this.§_-6K§[this.§_-6K§.length - 1].width = this.§_-g7§ * this.§_-2D§ / this.§_-90§;
               this.§_-6K§[this.§_-6K§.length - 1].height = this.§ case§ * this.§_-2D§ / this.§_-90§;
               _loc9_;
               _loc9_;
               this.§_-Og§.addChild(this.§_-6K§[this.§_-6K§.length - 1]);
               _loc9_;
               _loc9_;
               _loc5_++;
               _loc9_;
            }
         }
      }
   }
}
