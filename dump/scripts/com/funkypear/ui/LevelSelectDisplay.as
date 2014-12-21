package com.funkypear.ui
{
   import flash.display.Sprite;
   import fl.transitions.Tween;
   import §_-bY§.§_-bf§;
   import fl.transitions.TweenEvent;
   import fl.transitions.easing.*;
   import fl.motion.Color;
   import flash.events.MouseEvent;
   
   public class LevelSelectDisplay extends Sprite
   {
      
      public function LevelSelectDisplay(param1:String, param2:int, param3:Boolean = false, param4:Boolean = true, param5:Boolean = true)
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc6_:* = NaN;
         super();
         this.§_-6K§ = new Array();
         _loc7_;
         this.details_visible = param4;
         this.thumbnail_visible = param5;
         this.thumbnail_string = param1;
         this.id = param2;
         _loc8_;
         this.§_-2r§ = param3;
         this.§_-Og§ = new Sprite();
         this.§_-Og§.x = 0;
         this.§_-Og§.y = 0;
         if(this.thumbnail_string != "")
         {
            this.§_-Ls§ = new ThumbnailDisplay(this.thumbnail_string);
            _loc7_;
            _loc7_;
            this.§_-Ls§.scaleX = this.§_-kX§;
            _loc8_;
            _loc7_;
            this.§_-Ls§.scaleY = this.§_-kX§;
            _loc8_;
            _loc8_;
            _loc6_ = 0 - 600 * this.§_-kX§;
            _loc8_;
            _loc8_;
            _loc8_;
            this.§_-Ls§.x = _loc6_;
            this.§_-Ls§.y = _loc6_;
            _loc8_;
            _loc7_;
            this.§_-2D§ = this.§_-Ls§.radius * this.§_-kX§;
            this.full_radius = this.§_-Ls§.radius;
         }
         else
         {
            this.§_-2D§ = 75;
            _loc8_;
            _loc8_;
            this.full_radius = 535;
            _loc8_;
            _loc8_;
         }
         this.circle_border = new CircleBorder(this.full_radius);
         _loc8_;
         _loc8_;
         _loc8_;
         this.circle_border.scaleX = this.§_-kX§;
         _loc8_;
         _loc7_;
         this.circle_border.scaleY = this.§_-kX§;
         _loc8_;
         _loc8_;
         this.§_-jG§ = this.§_-90§ / this.§_-2D§;
         _loc7_;
         _loc7_;
         this.§_-9L§ = new Sprite();
         _loc7_;
         _loc7_;
         this.§_-9L§.graphics.lineStyle(1,0,0);
         _loc8_;
         this.§_-9L§.graphics.beginFill(0,0.01);
         _loc7_;
         _loc7_;
         this.§_-9L§.graphics.drawCircle(0,0,this.§_-2D§);
         _loc8_;
         this.§_-9L§.graphics.endFill();
         addChild(this.§_-9L§);
         _loc7_;
         _loc7_;
         if(this.§_-Ls§ != null)
         {
            addChild(this.§_-Ls§);
            _loc7_;
            _loc7_;
         }
         this.§_-Og§.addChild(this.circle_border);
         _loc8_;
         _loc8_;
         this.circle_border.cacheAsBitmap = true;
         _loc8_;
         addChild(this.§_-Og§);
         _loc8_;
         _loc8_;
         if(!this.details_visible)
         {
            this.§_-Og§.alpha = 0;
         }
         _loc7_;
         _loc7_;
         _loc8_;
         if(!this.thumbnail_visible && !(this.§_-Ls§ == null))
         {
            this.§_-Ls§.alpha = 0;
         }
      }
      
      private var §_-kX§:Number = 0.14;
      
      private var §_-jG§:Number = 2.8;
      
      private var §_-xn§:Number = 7.14285;
      
      private var §_-90§:Number = 182;
      
      private var §_-Og§:Sprite;
      
      private var §_-jF§:Tween;
      
      private var §_-jb§:Tween;
      
      public var §_-Ls§:ThumbnailDisplay;
      
      private var circle_border:CircleBorder;
      
      private var §_-9L§:Sprite;
      
      private var §_-bC§:§_-Tu§;
      
      public var id:int;
      
      public var thumbnail_string:String = "";
      
      private var level_name:String;
      
      private var locked:Boolean = false;
      
      private var §_-Td§:Boolean = false;
      
      private var §_-Yl§:int = -1;
      
      private var max_players:int = 4;
      
      private var §_-hx§:int = 0;
      
      private var §_-kZ§:int = 2;
      
      private var §_-i6§:Boolean = false;
      
      private var campaign_key:int = 0;
      
      private var §_-2D§:Number;
      
      private var full_radius:Number;
      
      private var §_-Kq§:Number = 1000;
      
      private var tween_x:Tween;
      
      private var tween_y:Tween;
      
      private var §_-F4§:Tween;
      
      private var §_-8a§:§_-yw§;
      
      private var §_-a6§:§_-ug§;
      
      private var §_-6K§:Array;
      
      private var §_-Vh§:§_-vu§;
      
      private var details_visible:Boolean = true;
      
      private var thumbnail_visible:Boolean = true;
      
      private var §_-4J§:Boolean = false;
      
      private var §_-3q§:Number = 121;
      
      private var §_-1Z§:Number = 117;
      
      private var §_-MR§:Number = 53;
      
      private var §_-zo§:Number = 51;
      
      private var §_-g7§:Number = 60;
      
      private var § case§:Number = 60;
      
      private var §_-pm§:Boolean = false;
      
      private var §_-2r§:Boolean = false;
      
      private var §_-f3§:Tween;
      
      private var §_-Du§:Tween;
      
      private var §_-ef§:§_-bf§;
      
      public function §_-t9§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.§_-bC§ != null)
         {
            this.§_-f3§ = new Tween(this.§_-bC§,"alpha",Strong.easeOut,1,0,1,true);
            this.§_-f3§.start();
         }
         if(this.§_-Vh§ != null)
         {
            this.§_-Du§ = new Tween(this.§_-Vh§,"alpha",Strong.easeOut,1,0,1,true);
            _loc1_;
            this.§_-Du§.start();
         }
      }
      
      public function §_-0-e§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.§_-bC§ != null)
         {
            this.§_-f3§ = new Tween(this.§_-bC§,"alpha",Strong.easeOut,0,1,1,true);
            this.§_-f3§.start();
            _loc1_;
         }
         if(this.§_-Vh§ != null)
         {
            this.§_-Du§ = new Tween(this.§_-Vh§,"alpha",Strong.easeOut,0,1,1,true);
            _loc1_;
            _loc1_;
            this.§_-Du§.start();
         }
      }
      
      private function §_-MZ§(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Og§.removeChild(this.§_-bC§);
      }
      
      public function §_-6x§(param1:int, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         this.§_-bC§ = new §_-xu§();
         _loc3_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         this.§_-bC§.setNumberText(param1 + 1,param2 + 1);
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         this.§_-bC§.x = 0;
         _loc4_;
         _loc4_;
         this.§_-bC§.y = 0 - this.§_-2D§;
         _loc3_;
         _loc3_;
         this.§_-Og§.addChild(this.§_-bC§);
      }
      
      public function §_-mo§(param1:String = "", param2:String = "") : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         this.§_-bC§ = new §_-3p§();
         _loc4_;
         _loc3_;
         this.§_-bC§.setMainText("CUSTOM GAME");
         _loc3_;
         _loc3_;
         _loc4_;
         _loc3_;
         if(!(param1 == "") && !(param1 == "-1"))
         {
            _loc4_;
            _loc3_;
            this.§_-bC§.setLimitText(param1);
         }
         if(param2 != "")
         {
            _loc3_;
            _loc3_;
            this.§_-bC§.setCreatorText(param2,true);
            _loc3_;
         }
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         this.§_-bC§.x = 0;
         this.§_-bC§.y = 0 - this.§_-2D§;
         _loc3_;
         _loc3_;
         this.§_-Og§.addChild(this.§_-bC§);
      }
      
      public function §_-7W§(param1:String = "", param2:int = -1, param3:int = -1) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         this.§_-bC§ = new §_-3p§();
         _loc4_;
         _loc5_;
         _loc5_;
         this.§_-bC§.setMainText("CUSTOM GAME");
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc4_;
         if(!(param1 == "") && !(param1 == "-1"))
         {
            _loc4_;
            _loc4_;
            this.§_-bC§.setLimitText(param1);
            _loc5_;
            _loc5_;
         }
         _loc5_;
         _loc5_;
         _loc5_;
         _loc4_;
         if(!(param2 == -1) && !(param3 == -1))
         {
            _loc5_;
            _loc5_;
            _loc4_;
            this.§_-bC§.setMissionText(param2,param3);
         }
         _loc5_;
         _loc4_;
         _loc4_;
         this.§_-bC§.x = 0;
         _loc4_;
         this.§_-bC§.y = 0 - this.§_-2D§;
         this.§_-Og§.addChild(this.§_-bC§);
      }
      
      public function §_-Sn§(param1:String) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-bC§ = new §_-3p§();
         _loc3_;
         _loc3_;
         _loc2_;
         _loc2_;
         this.§_-bC§.setCreatorText(param1);
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         this.§_-bC§.x = 30;
         _loc2_;
         _loc2_;
         this.§_-bC§.y = this.§_-2D§;
         _loc2_;
         _loc2_;
         this.§_-Og§.addChild(this.§_-bC§);
      }
      
      public function §_-7z§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc7_;
         _loc7_;
         this.§_-bC§ = new §_-gl§();
         _loc7_;
         _loc7_;
         _loc6_;
         _loc6_;
         this.§_-bC§.setSlotText(param1 + 1);
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         this.§_-bC§.x = 0;
         this.§_-bC§.y = 0 - this.§_-2D§;
         this.§_-Og§.addChild(this.§_-bC§);
         _loc7_;
         if(param2)
         {
            this.§_-ef§ = new §_-bf§();
            _loc7_;
            this.§_-ef§.slot_id = param1;
            _loc3_ = 315 * Math.PI / 180;
            _loc7_;
            _loc6_;
            _loc6_;
            _loc4_ = this.§_-2D§ * Math.cos(_loc3_);
            _loc7_;
            _loc7_;
            _loc6_;
            _loc5_ = this.§_-2D§ * Math.sin(_loc3_);
            _loc7_;
            _loc6_;
            this.§_-ef§.x = _loc4_;
            this.§_-ef§.y = _loc5_;
            _loc6_;
            this.§_-Og§.addChild(this.§_-ef§);
         }
      }
      
      public function §_-Mb§(param1:String) : void
      {
         var _loc18_:* = false;
         var _loc19_:* = true;
         var _loc3_:* = 0;
         var _loc4_:String = null;
         var _loc5_:String = null;
         var _loc6_:String = null;
         var _loc7_:Date = null;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         var _loc10_:Date = null;
         var _loc11_:* = NaN;
         var _loc12_:Date = null;
         var _loc13_:* = 0;
         var _loc14_:String = null;
         var _loc15_:String = null;
         var _loc16_:String = null;
         var _loc17_:Array = null;
         var _loc2_:* = "UNKNOWN";
         _loc19_;
         _loc19_;
         if(param1 != "")
         {
            _loc18_;
            _loc3_ = int(param1.slice(4,6));
            _loc19_;
            _loc19_;
            _loc4_ = param1.slice(6,8);
            _loc19_;
            _loc5_ = param1.slice(8,10);
            _loc6_ = param1.slice(10);
            _loc7_ = new Date();
            _loc18_;
            _loc8_ = _loc7_.getTimezoneOffset();
            _loc19_;
            _loc19_;
            _loc9_ = _loc7_.getFullYear();
            _loc10_ = new Date(_loc9_,_loc3_ - 1,_loc4_,_loc5_,_loc6_);
            _loc18_;
            _loc11_ = 60000;
            _loc12_ = new Date(_loc10_.valueOf() - _loc8_ * _loc11_);
            _loc13_ = int(_loc12_.getMonth());
            _loc14_ = String(_loc12_.getDate());
            _loc15_ = String(_loc12_.getHours());
            _loc18_;
            _loc18_;
            _loc16_ = String(_loc12_.getMinutes());
            if(_loc15_.length == 1)
            {
               _loc19_;
               _loc19_;
               _loc19_;
               _loc19_;
               _loc18_;
               _loc18_;
               _loc18_;
               _loc18_;
               _loc19_;
               _loc19_;
               _loc15_ = "0" + _loc15_;
            }
            if(_loc16_.length == 1)
            {
               _loc18_;
               _loc18_;
               _loc18_;
               _loc18_;
               _loc16_ = "0" + _loc16_;
            }
            _loc17_ = ["JAN","FEB","MAR","APR","MAY","JUN","JUL","AUG","SEP","OCT","NOV","DEC"];
            _loc19_;
            _loc19_;
            _loc2_ = String(_loc14_ + " " + _loc17_[_loc13_] + " " + _loc15_ + ":" + _loc16_);
         }
         this.§_-bC§ = new §_-3p§();
         _loc18_;
         _loc18_;
         this.§_-bC§.setMainText(_loc2_);
         _loc18_;
         _loc19_;
         this.§_-bC§.x = 0;
         this.§_-bC§.y = 0 - this.§_-2D§;
         this.§_-Og§.addChild(this.§_-bC§);
      }
      
      public function §_-Lx§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-4J§ = true;
         var _loc1_:§_-cr§ = new §_-cr§();
         _loc3_;
         _loc3_;
         this.§_-Og§.addChild(_loc1_);
      }
      
      public function §_-BG§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-Ls§.alpha = 1;
         _loc2_;
         this.§_-jF§ = new Tween(this.§_-Og§,"alpha",Strong.easeOut,0,1,1,true);
         _loc1_;
         this.§_-jF§.start();
      }
      
      public function §_-F3§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-jF§ = new Tween(this.§_-Og§,"alpha",Strong.easeOut,1,0,1,true);
         _loc2_;
         _loc2_;
         this.§_-jF§.start();
      }
      
      public function §_-oP§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-jF§ = new Tween(this.§_-Og§,"alpha",Strong.easeOut,0,1,1,true);
         _loc1_;
         _loc1_;
         this.§_-jb§ = new Tween(this.§_-Ls§,"alpha",Strong.easeOut,0,1,1,true);
         _loc2_;
         this.§_-jF§.start();
         _loc2_;
         this.§_-jb§.start();
      }
      
      public function §_-En§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(this.§_-Og§ != null)
         {
            _loc1_;
            _loc1_;
            this.§_-Og§.alpha = 1;
            _loc1_;
         }
         _loc1_;
         if(this.§_-Ls§ != null)
         {
            _loc1_;
            _loc1_;
            this.§_-Ls§.alpha = 1;
         }
      }
      
      public function §_-My§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         if(this.§_-Og§ != null)
         {
            _loc2_;
            _loc2_;
            this.§_-Og§.alpha = 0;
            _loc1_;
            _loc1_;
         }
         _loc2_;
         if(this.§_-Ls§ != null)
         {
            _loc1_;
            _loc1_;
            this.§_-Ls§.alpha = 0;
         }
      }
      
      private function §_-R1§() : void
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc1_:* = NaN;
         var _loc2_:* = NaN;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:Color = null;
         if(this.locked)
         {
            _loc6_ = new Color();
            _loc6_.setTint(66345,0.9);
            _loc7_;
            _loc7_;
            _loc7_;
            this.§_-Ls§.transform.colorTransform = _loc6_;
            _loc7_;
            _loc7_;
            this.§_-Ls§.alpha = 0.4;
            _loc8_;
            _loc8_;
            this.§_-8a§ = new §_-yw§();
            _loc7_;
            addChild(this.§_-8a§);
         }
         _loc8_;
         _loc8_;
         if(this.§_-Yl§ != -1)
         {
            this.§_-a6§ = new §_-ug§(this.§_-Yl§);
            _loc7_;
            _loc7_;
            _loc1_ = 33 * Math.PI / 180;
            _loc8_;
            _loc8_;
            _loc7_;
            _loc2_ = this.§_-2D§ * Math.cos(_loc1_);
            _loc3_ = this.§_-2D§ * Math.sin(_loc1_);
            _loc7_;
            _loc7_;
            _loc8_;
            this.§_-a6§.x = _loc2_;
            _loc7_;
            _loc7_;
            _loc8_;
            _loc8_;
            this.§_-a6§.y = _loc3_;
            _loc7_;
            _loc7_;
            _loc8_;
            _loc7_;
            _loc7_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            this.§_-a6§.width = this.§_-3q§ * this.§_-2D§ / this.§_-90§;
            _loc8_;
            _loc8_;
            _loc7_;
            _loc7_;
            this.§_-a6§.height = this.§_-1Z§ * this.§_-2D§ / this.§_-90§;
            this.§_-Og§.addChild(this.§_-a6§);
         }
      }
      
      public function §_-DW§(param1:Array, param2:String = "") : void
      {
         var _loc10_:* = true;
         var _loc11_:* = false;
         var _loc3_:Array = null;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         var _loc7_:* = NaN;
         var _loc8_:* = NaN;
         var _loc9_:* = NaN;
         _loc10_;
         if(param1 == null)
         {
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            _loc10_;
            if(param2 != "")
            {
               _loc3_ = param2.split(",");
               var param1:Array = new Array();
               _loc11_;
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
         _loc10_;
         _loc10_;
         if(this.§_-6K§.length > 0)
         {
            _loc10_;
            _loc10_;
            _loc5_ = this.§_-6K§.length - 1;
            _loc10_;
            while(true)
            {
               _loc11_;
               _loc11_;
               if(_loc5_ < 0)
               {
                  break;
               }
               this.§_-Og§.removeChild(this.§_-6K§[_loc5_]);
               this.§_-6K§.splice(_loc5_,1);
               _loc11_;
               _loc11_;
               _loc11_;
               _loc5_--;
            }
         }
         _loc10_;
         _loc10_;
         if(param1.length > 0)
         {
            _loc10_;
            _loc10_;
            _loc6_ = 0;
            _loc11_;
            _loc11_;
            while(_loc6_ < param1.length)
            {
               _loc11_;
               _loc11_;
               _loc11_;
               _loc7_ = (155 - _loc6_ * 23) * Math.PI / 180;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc8_ = this.§_-2D§ * Math.cos(_loc7_);
               _loc11_;
               _loc9_ = this.§_-2D§ * Math.sin(_loc7_);
               if(this.locked)
               {
                  _loc11_;
                  _loc11_;
                  this.§_-6K§.push(new §_-Rx§(param1[_loc6_],false));
                  _loc11_;
                  _loc11_;
               }
               else
               {
                  this.§_-6K§.push(new §_-Rx§(param1[_loc6_],true));
                  _loc10_;
               }
               _loc10_;
               _loc11_;
               this.§_-6K§[this.§_-6K§.length - 1].x = _loc8_;
               _loc11_;
               _loc10_;
               _loc10_;
               this.§_-6K§[this.§_-6K§.length - 1].y = _loc9_;
               _loc10_;
               _loc10_;
               _loc11_;
               _loc11_;
               this.§_-6K§[this.§_-6K§.length - 1].scaleX = this.§_-2D§ / this.§_-90§;
               _loc11_;
               _loc11_;
               _loc10_;
               _loc10_;
               this.§_-6K§[this.§_-6K§.length - 1].scaleY = this.§_-2D§ / this.§_-90§;
               this.§_-6K§[this.§_-6K§.length - 1].setNormalScale(this.§_-2D§ / this.§_-90§);
               this.§_-Og§.addChild(this.§_-6K§[this.§_-6K§.length - 1]);
               _loc10_;
               _loc10_;
               _loc6_++;
            }
         }
      }
      
      public function §_-sG§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(this.§_-2r§)
         {
            _loc1_;
            buttonMode = true;
            _loc2_;
            mouseEnabled = true;
            _loc1_;
            addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
            _loc2_;
            _loc2_;
            addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         }
      }
      
      public function §_-Kv§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(this.§_-2r§)
         {
            _loc1_;
            buttonMode = true;
            _loc1_;
            mouseEnabled = true;
            _loc2_;
            _loc2_;
            addEventListener(MouseEvent.CLICK,this.§_-jm§,false,0,true);
         }
      }
      
      private function §_-lO§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         buttonMode = false;
         mouseEnabled = false;
         _loc2_;
         if(hasEventListener(MouseEvent.ROLL_OVER))
         {
            removeEventListener(MouseEvent.ROLL_OVER,this.doRollOver);
         }
         if(hasEventListener(MouseEvent.ROLL_OUT))
         {
            removeEventListener(MouseEvent.ROLL_OUT,this.doRollOut);
         }
         if(hasEventListener(MouseEvent.CLICK))
         {
            _loc2_;
            removeEventListener(MouseEvent.CLICK,this.§_-jm§);
         }
      }
      
      public function §_-jm§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         if(this.§_-4J§ == true)
         {
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            Global.lobby_display.selectLevel(this.id);
            _loc2_;
         }
         else
         {
            Global.lobby_display.selectLevel(this.id);
         }
      }
      
      private var §_-qP§:Tween;
      
      private var §_-GY§:Tween;
      
      private var §_-4n§:Tween;
      
      public function doRollOver(param1:MouseEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         var _loc2_:Number = 1.1;
         var _loc3_:* = 0.9;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         if(!(this.§_-qP§ == null) && !(this.§_-GY§ == null))
         {
            _loc5_;
            _loc5_;
            if((this.§_-qP§.isPlaying) || (this.§_-GY§.isPlaying))
            {
               _loc4_;
               this.§_-qP§.stop();
               _loc4_;
               this.§_-GY§.stop();
            }
            this.§_-qP§ = null;
            this.§_-GY§ = null;
            _loc5_;
         }
         this.§_-qP§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         _loc4_;
         this.§_-GY§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         _loc5_;
         _loc5_;
         _loc5_;
         this.§_-qP§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-0-9§,false,0,true);
         this.circle_border.cacheAsBitmap = false;
         _loc4_;
         _loc4_;
         this.§_-qP§.start();
         this.§_-GY§.start();
      }
      
      public function doRollOut(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:Number = 1;
         _loc5_;
         var _loc3_:Number = 0.7;
         _loc5_;
         _loc5_;
         _loc4_;
         _loc4_;
         _loc5_;
         if(!(this.§_-qP§ == null) && !(this.§_-GY§ == null))
         {
            _loc5_;
            _loc4_;
            _loc5_;
            _loc5_;
            if((this.§_-qP§.isPlaying) || (this.§_-GY§.isPlaying))
            {
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               this.§_-qP§.stop();
               _loc5_;
               _loc5_;
               _loc5_;
               this.§_-GY§.stop();
               _loc5_;
            }
            this.§_-qP§ = null;
            this.§_-GY§ = null;
            _loc5_;
         }
         this.§_-qP§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         this.§_-GY§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         _loc5_;
         _loc5_;
         this.§_-qP§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-0-9§,false,0,true);
         this.circle_border.cacheAsBitmap = false;
         this.§_-qP§.start();
         _loc5_;
         this.§_-GY§.start();
      }
      
      public function §_-0-9§(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.circle_border.cacheAsBitmap = true;
      }
      
      public function §_-JZ§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.locked = true;
         _loc1_;
         _loc1_;
         this.§_-R1§();
      }
      
      public function §_-RU§(param1:Boolean) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-i6§ = param1;
         _loc2_;
         this.§_-R1§();
      }
      
      public function §_-rS§() : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:* = NaN;
         _loc4_;
         this.§_-pm§ = true;
         _loc4_;
         var _loc1_:Number = 0.12;
         _loc4_;
         if(_loc1_ != this.§_-kX§)
         {
            _loc4_;
            _loc4_;
            this.§_-Ls§.scaleX = _loc1_;
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-Ls§.scaleY = _loc1_;
            _loc4_;
            _loc2_ = 0 - 600 * _loc1_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc4_;
            this.§_-Ls§.x = _loc2_;
            this.§_-Ls§.y = _loc2_;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            this.§_-2D§ = this.§_-Ls§.radius * _loc1_;
            this.full_radius = this.§_-Ls§.radius;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc3_;
            this.circle_border.scaleX = _loc1_;
            _loc3_;
            this.circle_border.scaleY = _loc1_;
            _loc3_;
            if(this.§_-bC§ != null)
            {
               this.§_-bC§.y = 0 - this.§_-2D§;
               _loc3_;
               _loc3_;
            }
            _loc3_;
            this.§_-jG§ = this.§_-90§ / this.§_-2D§;
         }
      }
      
      public function §_-66§(param1:int, param2:int = -1, param3:int = -1) : void
      {
         var _loc8_:* = false;
         var _loc9_:* = true;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         _loc9_;
         this.§_-Td§ = true;
         _loc9_;
         _loc9_;
         this.campaign_key = param1;
         _loc8_;
         _loc8_;
         var _loc4_:int = SafeGlobal.§_-Py§(this.campaign_key);
         _loc9_;
         var _loc5_:int = SafeGlobal.§_-xg§(this.campaign_key);
         _loc9_;
         _loc9_;
         _loc8_;
         if(param2 == -1)
         {
            this.locked = false;
            _loc9_;
            _loc9_;
            this.§_-Yl§ = SafeGlobal.campaigns[_loc4_].medals[_loc5_];
            _loc9_;
            _loc9_;
         }
         else
         {
            _loc8_;
            _loc8_;
            _loc8_;
            if(param2 == 0)
            {
               this.locked = true;
               _loc9_;
               this.§_-2r§ = false;
               _loc9_;
               _loc9_;
               this.§_-lO§();
            }
            else
            {
               _loc9_;
               _loc8_;
               if(param2 == 1)
               {
                  _loc9_;
                  _loc9_;
                  this.locked = false;
               }
            }
            this.§_-Yl§ = param3;
         }
         if(!this.§_-pm§)
         {
            _loc9_;
            _loc9_;
            _loc9_;
            _loc6_ = SafeGlobal.campaigns[_loc4_].small_scale;
            _loc8_;
            _loc8_;
            if((SafeGlobal.campaigns[_loc4_].small_scale) != this.§_-kX§)
            {
               _loc8_;
               _loc8_;
               _loc9_;
               _loc9_;
               this.§_-Ls§.scaleX = _loc6_;
               _loc9_;
               _loc9_;
               _loc8_;
               this.§_-Ls§.scaleY = _loc6_;
               _loc9_;
               _loc7_ = 0 - 600 * _loc6_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               this.§_-Ls§.x = _loc7_;
               _loc8_;
               _loc8_;
               this.§_-Ls§.y = _loc7_;
               _loc9_;
               _loc9_;
               this.§_-2D§ = this.§_-Ls§.radius * _loc6_;
               _loc9_;
               this.full_radius = this.§_-Ls§.radius;
               _loc9_;
               _loc9_;
               _loc9_;
               this.circle_border.scaleX = _loc6_;
               this.circle_border.scaleY = _loc6_;
               _loc8_;
               _loc9_;
               _loc9_;
               if(this.§_-bC§ != null)
               {
                  this.§_-bC§.y = 0 - this.§_-2D§;
                  _loc8_;
               }
               _loc9_;
               _loc9_;
               this.§_-jG§ = this.§_-90§ / this.§_-2D§;
            }
         }
         this.§_-R1§();
      }
      
      public function §_-Ap§(param1:int, param2:int, param3:int) : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         _loc7_;
         _loc7_;
         this.§_-hx§ = param1 % param2;
         _loc8_;
         _loc8_;
         this.max_players = param2;
         _loc7_;
         _loc7_;
         _loc7_;
         if(this.§_-hx§ == 0)
         {
            this.§_-hx§ = 1;
            _loc8_;
            _loc8_;
         }
         _loc8_;
         _loc8_;
         if(this.§_-Vh§ == null)
         {
            _loc7_;
            _loc7_;
            _loc7_;
            _loc8_;
            if(this.§_-Td§ == true)
            {
               if(this.locked == false)
               {
                  if(this.§_-6K§.length > 0)
                  {
                     _loc7_;
                     _loc7_;
                     _loc8_;
                     _loc8_;
                     _loc4_ = 90 * Math.PI / 180;
                     _loc8_;
                  }
                  else
                  {
                     _loc7_;
                     _loc7_;
                     _loc8_;
                     _loc8_;
                     _loc7_;
                     _loc4_ = 147 * Math.PI / 180;
                  }
               }
               else
               {
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc8_;
                  _loc8_;
                  _loc8_;
                  _loc4_ = 33 * Math.PI / 180;
               }
            }
            else
            {
               _loc7_;
               _loc4_ = 33 * Math.PI / 180;
            }
            _loc7_;
            _loc8_;
            _loc5_ = this.§_-2D§ * Math.cos(_loc4_);
            _loc7_;
            _loc7_;
            _loc6_ = this.§_-2D§ * Math.sin(_loc4_);
            _loc8_;
            _loc8_;
            this.§_-Vh§ = new §_-vu§(this.§_-hx§,this.max_players,param3);
            _loc7_;
            _loc8_;
            _loc8_;
            this.§_-Vh§.x = _loc5_;
            _loc8_;
            this.§_-Vh§.y = _loc6_;
            _loc7_;
            this.§_-Og§.addChild(this.§_-Vh§);
         }
         else
         {
            this.§_-Vh§.updatePlayers(this.§_-hx§,this.max_players,param3);
         }
      }
      
      public function §_-fH§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         scaleX = this.§_-jG§;
         _loc1_;
         _loc1_;
         scaleY = this.§_-jG§;
      }
      
      public function §_-bA§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.tween_x = new Tween(this,"scaleX",Strong.easeOut,scaleX,this.§_-jG§,1,true);
         this.tween_y = new Tween(this,"scaleY",Strong.easeOut,scaleY,this.§_-jG§,1,true);
         _loc1_;
         _loc1_;
         _loc1_;
         this.tween_x.addEventListener(TweenEvent.MOTION_FINISH,this.§_-0-9§,false,0,true);
         _loc2_;
         _loc2_;
         this.circle_border.cacheAsBitmap = false;
         _loc2_;
         _loc2_;
         this.tween_x.start();
         this.tween_y.start();
      }
      
      public function §_-yq§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.tween_x = new Tween(this,"scaleX",Strong.easeOut,scaleX,1,1,true);
         _loc1_;
         _loc1_;
         this.tween_y = new Tween(this,"scaleY",Strong.easeOut,scaleY,1,1,true);
         _loc1_;
         _loc1_;
         this.tween_x.addEventListener(TweenEvent.MOTION_FINISH,this.§_-0-9§,false,0,true);
         this.circle_border.cacheAsBitmap = false;
         this.tween_x.start();
         _loc1_;
         this.tween_y.start();
      }
      
      public function §_-Ak§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tween_x = new Tween(this,"scaleX",Strong.easeOut,scaleX,this.§_-xn§,1,true);
         _loc1_;
         _loc1_;
         this.tween_y = new Tween(this,"scaleY",Strong.easeOut,scaleY,this.§_-xn§,1,true);
         _loc2_;
         this.tween_x.addEventListener(TweenEvent.MOTION_FINISH,this.§_-0-9§,false,0,true);
         this.circle_border.cacheAsBitmap = false;
         _loc2_;
         _loc2_;
         this.tween_x.start();
         _loc1_;
         _loc1_;
         this.tween_y.start();
      }
      
      public function tweenIntoGame() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-Ls§.visible = false;
         _loc1_;
         this.§_-F4§ = new Tween(this,"alpha",Strong.easeOut,1,0,1,true);
         _loc2_;
         _loc1_;
         _loc1_;
         this.§_-F4§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-0k§,false,0,true);
         _loc2_;
         _loc2_;
         this.§_-F4§.start();
      }
      
      public function §_-0k§(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-F4§.removeEventListener(TweenEvent.MOTION_FINISH,this.§_-0k§);
         _loc2_;
         _loc2_;
         parent.removeChild(this);
      }
      
      public function §_-0-a§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc9_:* = false;
         var _loc10_:* = true;
         _loc9_;
         _loc9_;
         _loc10_;
         _loc10_;
         var _loc5_:Number = param1 - param3;
         _loc10_;
         _loc10_;
         _loc10_;
         var _loc6_:Number = param2 - param4;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc10_;
         var _loc7_:Number = param1 + _loc5_ * 2.5;
         _loc9_;
         _loc10_;
         _loc10_;
         _loc10_;
         var _loc8_:Number = param2 + _loc6_ * 2.5;
         _loc10_;
         _loc10_;
         x = _loc7_;
         _loc9_;
         y = _loc8_;
      }
      
      public function §_-mH§(param1:Number, param2:Number) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         alpha = 1;
         _loc4_;
         if(this.§_-Og§ != null)
         {
            _loc3_;
            _loc3_;
            this.§_-Og§.alpha = 1;
         }
         _loc3_;
         _loc3_;
         if(this.§_-Ls§ != null)
         {
            _loc4_;
            this.§_-Ls§.alpha = 1;
         }
         this.tween_x = new Tween(this,"x",Strong.easeOut,x,param1,1,true);
         this.tween_y = new Tween(this,"y",Strong.easeOut,y,param2,1,true);
         _loc4_;
         _loc4_;
         this.tween_x.addEventListener(TweenEvent.MOTION_FINISH,this.§_-0-9§,false,0,true);
         this.circle_border.cacheAsBitmap = false;
         this.tween_x.start();
         this.tween_y.start();
      }
      
      public function moveAway(param1:Number, param2:Number) : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         _loc7_;
         _loc7_;
         var _loc3_:Number = x - param1;
         _loc7_;
         var _loc4_:Number = y - param2;
         var _loc5_:Number = x + _loc3_ * 2.5;
         var _loc6_:Number = y + _loc4_ * 2.5;
         this.tween_x = new Tween(this,"x",Strong.easeOut,x,_loc5_,1,true);
         this.tween_y = new Tween(this,"y",Strong.easeOut,y,_loc6_,1,true);
         this.circle_border.cacheAsBitmap = false;
         _loc7_;
         _loc7_;
         this.tween_x.addEventListener(TweenEvent.MOTION_FINISH,this.§_-Wm§,false,0,true);
         this.tween_x.start();
         this.tween_y.start();
      }
      
      public function §_-Wm§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.circle_border.cacheAsBitmap = true;
         _loc3_;
         (parent as LobbyScreen).§_-Wm§();
         _loc3_;
         this.tween_x.removeEventListener(TweenEvent.MOTION_FINISH,this.§_-Wm§);
         _loc2_;
         _loc2_;
         parent.removeChild(this);
      }
   }
}
