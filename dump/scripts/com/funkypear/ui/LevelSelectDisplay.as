package com.funkypear.ui
{
   import flash.display.Sprite;
   import fl.transitions.Tween;
   import §_-ZN§.§_-LI§;
   import fl.transitions.TweenEvent;
   import fl.transitions.easing.*;
   import fl.motion.Color;
   import flash.events.MouseEvent;
   
   public class LevelSelectDisplay extends Sprite
   {
      
      public function LevelSelectDisplay(param1:String, param2:int, param3:Boolean = false, param4:Boolean = true, param5:Boolean = true)
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc6_:* = NaN;
         _loc8_;
         super();
         this.§_-c3§ = new Array();
         _loc8_;
         _loc8_;
         this.details_visible = param4;
         _loc8_;
         _loc8_;
         this.thumbnail_visible = param5;
         this.thumbnail_string = param1;
         _loc8_;
         _loc8_;
         this.id = param2;
         _loc7_;
         _loc7_;
         this.§_-3e§ = param3;
         this.§_-E0§ = new Sprite();
         _loc8_;
         this.§_-E0§.x = 0;
         this.§_-E0§.y = 0;
         _loc8_;
         if(this.thumbnail_string != "")
         {
            this.§_-iH§ = new ThumbnailDisplay(this.thumbnail_string);
            _loc8_;
            _loc8_;
            this.§_-iH§.scaleX = this.§_-wY§;
            _loc7_;
            _loc8_;
            _loc8_;
            _loc8_;
            this.§_-iH§.scaleY = this.§_-wY§;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc6_ = 0 - 600 * this.§_-wY§;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            this.§_-iH§.x = _loc6_;
            _loc7_;
            this.§_-iH§.y = _loc6_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            this.§_-mO§ = this.§_-iH§.radius * this.§_-wY§;
            this.full_radius = this.§_-iH§.radius;
         }
         else
         {
            this.§_-mO§ = 75;
            this.full_radius = 535;
            _loc7_;
         }
         this.circle_border = new CircleBorder(this.full_radius);
         _loc7_;
         _loc8_;
         _loc8_;
         this.circle_border.scaleX = this.§_-wY§;
         _loc8_;
         _loc8_;
         _loc7_;
         this.circle_border.scaleY = this.§_-wY§;
         _loc8_;
         _loc8_;
         _loc7_;
         _loc7_;
         this.§ set§ = this.§_-VJ§ / this.§_-mO§;
         this.§_-4d§ = new Sprite();
         this.§_-4d§.graphics.lineStyle(1,0,0);
         _loc7_;
         this.§_-4d§.graphics.beginFill(0,0.01);
         this.§_-4d§.graphics.drawCircle(0,0,this.§_-mO§);
         this.§_-4d§.graphics.endFill();
         addChild(this.§_-4d§);
         _loc8_;
         _loc8_;
         _loc8_;
         if(this.§_-iH§ != null)
         {
            addChild(this.§_-iH§);
         }
         this.§_-E0§.addChild(this.circle_border);
         this.circle_border.cacheAsBitmap = true;
         addChild(this.§_-E0§);
         _loc8_;
         _loc8_;
         _loc8_;
         if(!this.details_visible)
         {
            this.§_-E0§.alpha = 0;
         }
         _loc7_;
         _loc8_;
         if(!this.thumbnail_visible && !(this.§_-iH§ == null))
         {
            _loc7_;
            _loc7_;
            this.§_-iH§.alpha = 0;
         }
      }
      
      private var §_-wY§:Number = 0.14;
      
      private var § set§:Number = 2.8;
      
      private var §_-U5§:Number = 7.14285;
      
      private var §_-VJ§:Number = 182;
      
      private var §_-E0§:Sprite;
      
      private var §_-hH§:Tween;
      
      private var §_-NS§:Tween;
      
      public var §_-iH§:ThumbnailDisplay;
      
      private var circle_border:CircleBorder;
      
      private var §_-4d§:Sprite;
      
      private var §_-KF§:§_-Sf§;
      
      public var id:int;
      
      public var thumbnail_string:String = "";
      
      private var level_name:String;
      
      private var locked:Boolean = false;
      
      private var §_-L6§:Boolean = false;
      
      private var §_-yK§:int = -1;
      
      private var max_players:int = 4;
      
      private var §_-RP§:int = 0;
      
      private var §_-z1§:int = 2;
      
      private var §_-FL§:Boolean = false;
      
      private var campaign_key:int = 0;
      
      private var §_-mO§:Number;
      
      private var full_radius:Number;
      
      private var §_-bc§:Number = 1000;
      
      private var tween_x:Tween;
      
      private var tween_y:Tween;
      
      private var §_-VD§:Tween;
      
      private var §_-k§:§_-YY§;
      
      private var §_-Ab§:§_-TS§;
      
      private var §_-c3§:Array;
      
      private var §_-FR§:§_-HS§;
      
      private var details_visible:Boolean = true;
      
      private var thumbnail_visible:Boolean = true;
      
      private var §_-CR§:Boolean = false;
      
      private var §_-FT§:Number = 121;
      
      private var §_-ZR§:Number = 117;
      
      private var §_-mS§:Number = 53;
      
      private var §_-jU§:Number = 51;
      
      private var §_-Mt§:Number = 60;
      
      private var §_-5S§:Number = 60;
      
      private var §_-2P§:Boolean = false;
      
      private var §_-3e§:Boolean = false;
      
      private var §_-t7§:Tween;
      
      private var §_-Pe§:Tween;
      
      private var §_-uX§:§_-LI§;
      
      public function §_-Nb§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.§_-KF§ != null)
         {
            _loc2_;
            this.§_-t7§ = new Tween(this.§_-KF§,"alpha",Strong.easeOut,1,0,1,true);
            this.§_-t7§.start();
            _loc2_;
         }
         if(this.§_-FR§ != null)
         {
            this.§_-Pe§ = new Tween(this.§_-FR§,"alpha",Strong.easeOut,1,0,1,true);
            this.§_-Pe§.start();
         }
      }
      
      public function §_-Wa§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         if(this.§_-KF§ != null)
         {
            this.§_-t7§ = new Tween(this.§_-KF§,"alpha",Strong.easeOut,0,1,1,true);
            this.§_-t7§.start();
         }
         if(this.§_-FR§ != null)
         {
            this.§_-Pe§ = new Tween(this.§_-FR§,"alpha",Strong.easeOut,0,1,1,true);
            this.§_-Pe§.start();
         }
      }
      
      private function §_-Kx§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-E0§.removeChild(this.§_-KF§);
      }
      
      public function §_-Di§(param1:int, param2:int) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         this.§_-KF§ = new §_-u6§();
         _loc3_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         this.§_-KF§.setNumberText(param1 + 1,param2 + 1);
         _loc3_;
         _loc4_;
         _loc3_;
         _loc3_;
         this.§_-KF§.x = 0;
         _loc3_;
         this.§_-KF§.y = 0 - this.§_-mO§;
         _loc4_;
         this.§_-E0§.addChild(this.§_-KF§);
      }
      
      public function §_-Nk§(param1:String = "", param2:String = "") : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.§_-KF§ = new §_-Dp§();
         _loc3_;
         _loc3_;
         this.§_-KF§.setMainText("CUSTOM GAME");
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc4_;
         if(!(param1 == "") && !(param1 == "-1"))
         {
            _loc3_;
            _loc3_;
            _loc4_;
            _loc4_;
            this.§_-KF§.setLimitText(param1);
         }
         if(param2 != "")
         {
            _loc4_;
            this.§_-KF§.setCreatorText(param2,true);
            _loc4_;
            _loc4_;
         }
         _loc3_;
         _loc4_;
         this.§_-KF§.x = 0;
         _loc3_;
         _loc3_;
         this.§_-KF§.y = 0 - this.§_-mO§;
         this.§_-E0§.addChild(this.§_-KF§);
      }
      
      public function §_-sa§(param1:String = "", param2:int = -1, param3:int = -1) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         _loc5_;
         this.§_-KF§ = new §_-Dp§();
         _loc4_;
         _loc4_;
         this.§_-KF§.setMainText("CUSTOM GAME");
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc5_;
         if(!(param1 == "") && !(param1 == "-1"))
         {
            _loc4_;
            _loc4_;
            this.§_-KF§.setLimitText(param1);
         }
         _loc4_;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(!(param2 == -1) && !(param3 == -1))
         {
            _loc4_;
            _loc5_;
            this.§_-KF§.setMissionText(param2,param3);
            _loc4_;
         }
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         this.§_-KF§.x = 0;
         this.§_-KF§.y = 0 - this.§_-mO§;
         _loc4_;
         _loc4_;
         this.§_-E0§.addChild(this.§_-KF§);
      }
      
      public function §_-qr§(param1:String) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-KF§ = new §_-Dp§();
         _loc2_;
         _loc2_;
         this.§_-KF§.setCreatorText(param1);
         _loc2_;
         _loc2_;
         _loc3_;
         this.§_-KF§.x = 30;
         _loc2_;
         this.§_-KF§.y = this.§_-mO§;
         _loc2_;
         _loc2_;
         this.§_-E0§.addChild(this.§_-KF§);
      }
      
      public function §_-xL§(param1:int, param2:Boolean = false) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         _loc7_;
         _loc7_;
         this.§_-KF§ = new §_-Jl§();
         _loc6_;
         _loc6_;
         _loc6_;
         _loc7_;
         _loc7_;
         _loc7_;
         _loc7_;
         this.§_-KF§.setSlotText(param1 + 1);
         _loc6_;
         _loc6_;
         _loc7_;
         this.§_-KF§.x = 0;
         _loc7_;
         _loc7_;
         this.§_-KF§.y = 0 - this.§_-mO§;
         _loc6_;
         this.§_-E0§.addChild(this.§_-KF§);
         _loc6_;
         _loc6_;
         if(param2)
         {
            this.§_-uX§ = new §_-LI§();
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            this.§_-uX§.slot_id = param1;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc3_ = 315 * Math.PI / 180;
            _loc6_;
            _loc6_;
            _loc4_ = this.§_-mO§ * Math.cos(_loc3_);
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc5_ = this.§_-mO§ * Math.sin(_loc3_);
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            this.§_-uX§.x = _loc4_;
            this.§_-uX§.y = _loc5_;
            this.§_-E0§.addChild(this.§_-uX§);
         }
      }
      
      public function §_-Zy§(param1:String) : void
      {
         var _loc18_:* = true;
         var _loc19_:* = false;
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
         if(param1 != "")
         {
            _loc3_ = int(param1.slice(4,6));
            _loc19_;
            _loc19_;
            _loc19_;
            _loc19_;
            _loc19_;
            _loc4_ = param1.slice(6,8);
            _loc19_;
            _loc19_;
            _loc19_;
            _loc19_;
            _loc19_;
            _loc5_ = param1.slice(8,10);
            _loc19_;
            _loc19_;
            _loc6_ = param1.slice(10);
            _loc7_ = new Date();
            _loc18_;
            _loc8_ = _loc7_.getTimezoneOffset();
            _loc19_;
            _loc19_;
            _loc9_ = _loc7_.getFullYear();
            _loc10_ = new Date(_loc9_,_loc3_,_loc4_,_loc5_,_loc6_);
            _loc18_;
            _loc11_ = 60000;
            _loc12_ = new Date(_loc10_.valueOf() - _loc8_ * _loc11_);
            _loc19_;
            _loc13_ = int(_loc12_.getMonth());
            _loc19_;
            _loc19_;
            _loc18_;
            _loc18_;
            _loc14_ = String(_loc12_.getDate());
            _loc19_;
            _loc19_;
            _loc15_ = String(_loc12_.getHours());
            _loc16_ = String(_loc12_.getMinutes());
            _loc18_;
            if(_loc15_.length == 1)
            {
               _loc19_;
               _loc19_;
               _loc18_;
               _loc19_;
               _loc19_;
               _loc15_ = "0" + _loc15_;
               _loc18_;
            }
            if(_loc16_.length == 1)
            {
               _loc18_;
               _loc19_;
               _loc19_;
               _loc19_;
               _loc16_ = "0" + _loc16_;
            }
            _loc17_ = ["JAN","FEB","MAR","APR","MAY","JUN","JUL","AUG","SEP","OCT","NOV","DEC"];
            _loc18_;
            _loc2_ = String(_loc14_ + " " + _loc17_[_loc13_ - 1] + " " + _loc15_ + ":" + _loc16_);
         }
         this.§_-KF§ = new §_-Dp§();
         _loc18_;
         this.§_-KF§.setMainText(_loc2_);
         _loc18_;
         _loc19_;
         _loc19_;
         _loc18_;
         _loc18_;
         this.§_-KF§.x = 0;
         this.§_-KF§.y = 0 - this.§_-mO§;
         this.§_-E0§.addChild(this.§_-KF§);
      }
      
      public function §_-rE§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-CR§ = true;
         var _loc1_:§_-51§ = new §_-51§();
         _loc2_;
         this.§_-E0§.addChild(_loc1_);
      }
      
      public function §_-UY§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-iH§.alpha = 1;
         _loc2_;
         _loc2_;
         this.§_-hH§ = new Tween(this.§_-E0§,"alpha",Strong.easeOut,0,1,1,true);
         _loc2_;
         _loc2_;
         this.§_-hH§.start();
      }
      
      public function §_-yj§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-hH§ = new Tween(this.§_-E0§,"alpha",Strong.easeOut,1,0,1,true);
         _loc1_;
         this.§_-hH§.start();
      }
      
      public function §_-Gs§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         this.§_-hH§ = new Tween(this.§_-E0§,"alpha",Strong.easeOut,0,1,1,true);
         _loc1_;
         _loc1_;
         this.§_-NS§ = new Tween(this.§_-iH§,"alpha",Strong.easeOut,0,1,1,true);
         _loc2_;
         this.§_-hH§.start();
         _loc1_;
         _loc1_;
         this.§_-NS§.start();
      }
      
      public function §_-HQ§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(this.§_-E0§ != null)
         {
            _loc1_;
            this.§_-E0§.alpha = 1;
            _loc2_;
            _loc2_;
         }
         _loc2_;
         if(this.§_-iH§ != null)
         {
            _loc1_;
            _loc1_;
            this.§_-iH§.alpha = 1;
         }
      }
      
      public function §_-Vy§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         if(this.§_-E0§ != null)
         {
            _loc1_;
            _loc1_;
            this.§_-E0§.alpha = 0;
            _loc1_;
            _loc1_;
         }
         _loc1_;
         if(this.§_-iH§ != null)
         {
            _loc2_;
            _loc2_;
            this.§_-iH§.alpha = 0;
         }
      }
      
      private function §_-pI§() : void
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
            _loc8_;
            _loc8_;
            _loc8_;
            this.§_-iH§.transform.colorTransform = _loc6_;
            _loc7_;
            _loc7_;
            this.§_-iH§.alpha = 0.4;
            _loc7_;
            _loc7_;
            this.§_-k§ = new §_-YY§();
            _loc8_;
            addChild(this.§_-k§);
         }
         _loc8_;
         _loc8_;
         if(this.§_-yK§ != -1)
         {
            this.§_-Ab§ = new §_-TS§(this.§_-yK§);
            _loc7_;
            _loc8_;
            _loc8_;
            _loc1_ = 33 * Math.PI / 180;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc7_;
            _loc7_;
            _loc2_ = this.§_-mO§ * Math.cos(_loc1_);
            _loc7_;
            _loc7_;
            _loc3_ = this.§_-mO§ * Math.sin(_loc1_);
            _loc7_;
            _loc7_;
            _loc7_;
            this.§_-Ab§.x = _loc2_;
            _loc8_;
            _loc8_;
            _loc7_;
            _loc7_;
            this.§_-Ab§.y = _loc3_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc7_;
            _loc7_;
            _loc7_;
            _loc7_;
            this.§_-Ab§.width = this.§_-FT§ * this.§_-mO§ / this.§_-VJ§;
            _loc7_;
            _loc8_;
            _loc7_;
            this.§_-Ab§.height = this.§_-ZR§ * this.§_-mO§ / this.§_-VJ§;
            this.§_-E0§.addChild(this.§_-Ab§);
         }
      }
      
      public function §_-zu§(param1:Array, param2:String = "") : void
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
            _loc11_;
            _loc11_;
            _loc10_;
            if(param2 != "")
            {
               _loc3_ = param2.split(",");
               var param1:Array = new Array();
               _loc10_;
               _loc10_;
               _loc4_ = 0;
               while(_loc4_ < _loc3_.length)
               {
                  param1[_loc4_] = parseInt(_loc3_[_loc4_]);
                  _loc11_;
                  _loc4_++;
                  _loc11_;
                  _loc11_;
               }
            }
            else
            {
               param1 = new Array();
            }
         }
         if(this.§_-c3§.length > 0)
         {
            _loc10_;
            _loc10_;
            _loc5_ = this.§_-c3§.length - 1;
            _loc10_;
            while(true)
            {
               _loc11_;
               _loc11_;
               if(_loc5_ < 0)
               {
                  break;
               }
               this.§_-E0§.removeChild(this.§_-c3§[_loc5_]);
               this.§_-c3§.splice(_loc5_,1);
               _loc10_;
               _loc10_;
               _loc5_--;
            }
         }
         _loc11_;
         if(param1.length > 0)
         {
            _loc11_;
            _loc11_;
            _loc6_ = 0;
            _loc10_;
            _loc10_;
            while(_loc6_ < param1.length)
            {
               _loc10_;
               _loc11_;
               _loc7_ = (155 - _loc6_ * 23) * Math.PI / 180;
               _loc10_;
               _loc10_;
               _loc11_;
               _loc8_ = this.§_-mO§ * Math.cos(_loc7_);
               _loc10_;
               _loc10_;
               _loc9_ = this.§_-mO§ * Math.sin(_loc7_);
               if(this.locked)
               {
                  this.§_-c3§.push(new §_-r7§(param1[_loc6_],false));
               }
               else
               {
                  _loc11_;
                  this.§_-c3§.push(new §_-r7§(param1[_loc6_],true));
               }
               _loc10_;
               _loc10_;
               _loc11_;
               _loc11_;
               this.§_-c3§[this.§_-c3§.length - 1].x = _loc8_;
               _loc11_;
               _loc11_;
               _loc11_;
               _loc11_;
               this.§_-c3§[this.§_-c3§.length - 1].y = _loc9_;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc10_;
               this.§_-c3§[this.§_-c3§.length - 1].scaleX = this.§_-mO§ / this.§_-VJ§;
               _loc10_;
               _loc10_;
               _loc10_;
               _loc11_;
               _loc10_;
               _loc10_;
               this.§_-c3§[this.§_-c3§.length - 1].scaleY = this.§_-mO§ / this.§_-VJ§;
               _loc10_;
               this.§_-c3§[this.§_-c3§.length - 1].setNormalScale(this.§_-mO§ / this.§_-VJ§);
               this.§_-E0§.addChild(this.§_-c3§[this.§_-c3§.length - 1]);
               _loc11_;
               _loc6_++;
               _loc10_;
               _loc10_;
            }
         }
      }
      
      public function §_-Ua§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(this.§_-3e§)
         {
            _loc1_;
            buttonMode = true;
            _loc1_;
            mouseEnabled = true;
            _loc1_;
            addEventListener(MouseEvent.ROLL_OVER,this.doRollOver,false,0,true);
            _loc1_;
            addEventListener(MouseEvent.ROLL_OUT,this.doRollOut,false,0,true);
         }
      }
      
      public function §_-QE§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         if(this.§_-3e§)
         {
            _loc2_;
            buttonMode = true;
            _loc1_;
            mouseEnabled = true;
            _loc2_;
            _loc2_;
            addEventListener(MouseEvent.CLICK,this.§_-h6§,false,0,true);
         }
      }
      
      private function §_-b-§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         buttonMode = false;
         mouseEnabled = false;
         if(hasEventListener(MouseEvent.ROLL_OVER))
         {
            removeEventListener(MouseEvent.ROLL_OVER,this.doRollOver);
            _loc2_;
         }
         if(hasEventListener(MouseEvent.ROLL_OUT))
         {
            _loc2_;
            removeEventListener(MouseEvent.ROLL_OUT,this.doRollOut);
         }
         if(hasEventListener(MouseEvent.CLICK))
         {
            removeEventListener(MouseEvent.CLICK,this.§_-h6§);
         }
      }
      
      public function §_-h6§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         if(this.§_-CR§ == true)
         {
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            _loc2_;
            Global.lobby_display.selectLevel(this.id);
            _loc2_;
            _loc2_;
         }
         else
         {
            Global.lobby_display.selectLevel(this.id);
         }
      }
      
      private var §_-nh§:Tween;
      
      private var §_-Vs§:Tween;
      
      private var §_-1N§:Tween;
      
      public function doRollOver(param1:MouseEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         var _loc2_:Number = 1.1;
         var _loc3_:* = 0.9;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(!(this.§_-nh§ == null) && !(this.§_-Vs§ == null))
         {
            _loc4_;
            _loc4_;
            if((this.§_-nh§.isPlaying) || (this.§_-Vs§.isPlaying))
            {
               _loc4_;
               _loc4_;
               this.§_-nh§.stop();
               _loc4_;
               _loc4_;
               this.§_-Vs§.stop();
            }
            this.§_-nh§ = null;
            this.§_-Vs§ = null;
            _loc4_;
            _loc4_;
         }
         this.§_-nh§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         this.§_-Vs§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         _loc5_;
         _loc5_;
         this.§_-nh§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-I§,false,0,true);
         _loc5_;
         this.circle_border.cacheAsBitmap = false;
         this.§_-nh§.start();
         this.§_-Vs§.start();
      }
      
      public function doRollOut(param1:MouseEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:Number = 1;
         _loc4_;
         _loc4_;
         var _loc3_:Number = 0.7;
         _loc5_;
         _loc5_;
         _loc5_;
         _loc5_;
         if(!(this.§_-nh§ == null) && !(this.§_-Vs§ == null))
         {
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            if((this.§_-nh§.isPlaying) || (this.§_-Vs§.isPlaying))
            {
               _loc4_;
               _loc4_;
               this.§_-nh§.stop();
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               this.§_-Vs§.stop();
            }
            this.§_-nh§ = null;
            _loc5_;
            _loc5_;
            this.§_-Vs§ = null;
            _loc4_;
            _loc4_;
         }
         this.§_-nh§ = new Tween(this,"scaleX",Strong.easeOut,scaleX,_loc2_,10,false);
         this.§_-Vs§ = new Tween(this,"scaleY",Strong.easeOut,scaleY,_loc2_,10,false);
         _loc5_;
         _loc5_;
         this.§_-nh§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-I§,false,0,true);
         _loc5_;
         _loc5_;
         this.circle_border.cacheAsBitmap = false;
         this.§_-nh§.start();
         this.§_-Vs§.start();
      }
      
      public function §_-I§(param1:TweenEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.circle_border.cacheAsBitmap = true;
      }
      
      public function §_-E9§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.locked = true;
         _loc1_;
         _loc1_;
         this.§_-pI§();
      }
      
      public function §_-xr§(param1:Boolean) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-FL§ = param1;
         _loc2_;
         _loc2_;
         this.§_-pI§();
      }
      
      public function §_-C4§() : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:* = NaN;
         _loc4_;
         this.§_-2P§ = true;
         _loc4_;
         var _loc1_:Number = 0.12;
         _loc3_;
         _loc3_;
         if(_loc1_ != this.§_-wY§)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-iH§.scaleX = _loc1_;
            _loc3_;
            _loc4_;
            _loc4_;
            this.§_-iH§.scaleY = _loc1_;
            _loc4_;
            _loc4_;
            _loc3_;
            _loc2_ = 0 - 600 * _loc1_;
            _loc3_;
            _loc3_;
            this.§_-iH§.x = _loc2_;
            this.§_-iH§.y = _loc2_;
            _loc3_;
            this.§_-mO§ = this.§_-iH§.radius * _loc1_;
            this.full_radius = this.§_-iH§.radius;
            _loc3_;
            _loc3_;
            this.circle_border.scaleX = _loc1_;
            _loc3_;
            _loc3_;
            this.circle_border.scaleY = _loc1_;
            _loc4_;
            if(this.§_-KF§ != null)
            {
               _loc4_;
               this.§_-KF§.y = 0 - this.§_-mO§;
            }
            _loc4_;
            _loc4_;
            this.§ set§ = this.§_-VJ§ / this.§_-mO§;
         }
      }
      
      public function §_-9z§(param1:int, param2:int = -1, param3:int = -1) : void
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc6_:* = NaN;
         var _loc7_:* = NaN;
         _loc8_;
         this.§_-L6§ = true;
         _loc9_;
         _loc9_;
         this.campaign_key = param1;
         _loc9_;
         _loc9_;
         var _loc4_:int = SafeGlobal.§_-QS§(this.campaign_key);
         _loc9_;
         var _loc5_:int = SafeGlobal.§_-9c§(this.campaign_key);
         _loc9_;
         _loc8_;
         _loc8_;
         _loc8_;
         _loc8_;
         if(param2 == -1)
         {
            this.locked = false;
            _loc8_;
            this.§_-yK§ = SafeGlobal.campaigns[_loc4_].medals[_loc5_];
            _loc8_;
            _loc8_;
         }
         else
         {
            _loc9_;
            _loc9_;
            _loc8_;
            if(param2 == 0)
            {
               this.locked = true;
               this.§_-3e§ = false;
               this.§_-b-§();
               _loc8_;
            }
            else
            {
               _loc9_;
               _loc8_;
               _loc8_;
               if(param2 == 1)
               {
                  this.locked = false;
               }
            }
            this.§_-yK§ = param3;
            _loc9_;
            _loc9_;
         }
         if(!this.§_-2P§)
         {
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc6_ = SafeGlobal.campaigns[_loc4_].small_scale;
            _loc8_;
            _loc8_;
            if((SafeGlobal.campaigns[_loc4_].small_scale) != this.§_-wY§)
            {
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               this.§_-iH§.scaleX = _loc6_;
               _loc8_;
               _loc9_;
               _loc9_;
               _loc9_;
               this.§_-iH§.scaleY = _loc6_;
               _loc9_;
               _loc7_ = 0 - 600 * _loc6_;
               _loc9_;
               _loc9_;
               _loc9_;
               _loc9_;
               this.§_-iH§.x = _loc7_;
               this.§_-iH§.y = _loc7_;
               _loc8_;
               _loc8_;
               _loc9_;
               this.§_-mO§ = this.§_-iH§.radius * _loc6_;
               _loc9_;
               _loc9_;
               this.full_radius = this.§_-iH§.radius;
               _loc9_;
               _loc9_;
               _loc9_;
               this.circle_border.scaleX = _loc6_;
               this.circle_border.scaleY = _loc6_;
               _loc9_;
               if(this.§_-KF§ != null)
               {
                  this.§_-KF§.y = 0 - this.§_-mO§;
                  _loc9_;
                  _loc9_;
               }
               _loc9_;
               this.§ set§ = this.§_-VJ§ / this.§_-mO§;
               _loc9_;
            }
         }
         this.§_-pI§();
      }
      
      public function §_-1-§(param1:int, param2:int, param3:int) : void
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc4_:* = NaN;
         var _loc5_:* = NaN;
         var _loc6_:* = NaN;
         this.§_-RP§ = param1 % param2;
         this.max_players = param2;
         _loc8_;
         _loc8_;
         if(this.§_-RP§ == 0)
         {
            this.§_-RP§ = 1;
         }
         _loc8_;
         if(this.§_-FR§ == null)
         {
            _loc7_;
            _loc8_;
            if(this.§_-L6§ == true)
            {
               if(this.locked == false)
               {
                  if(this.§_-c3§.length > 0)
                  {
                     _loc7_;
                     _loc7_;
                     _loc8_;
                     _loc7_;
                     _loc7_;
                     _loc4_ = 90 * Math.PI / 180;
                  }
                  else
                  {
                     _loc7_;
                     _loc7_;
                     _loc7_;
                     _loc8_;
                     _loc8_;
                     _loc4_ = 147 * Math.PI / 180;
                  }
               }
               else
               {
                  _loc7_;
                  _loc7_;
                  _loc7_;
                  _loc4_ = 33 * Math.PI / 180;
                  _loc7_;
                  _loc7_;
               }
            }
            else
            {
               _loc8_;
               _loc8_;
               _loc4_ = 33 * Math.PI / 180;
               _loc7_;
               _loc7_;
            }
            _loc5_ = this.§_-mO§ * Math.cos(_loc4_);
            _loc8_;
            _loc6_ = this.§_-mO§ * Math.sin(_loc4_);
            _loc8_;
            _loc8_;
            this.§_-FR§ = new §_-HS§(this.§_-RP§,this.max_players,param3);
            _loc8_;
            _loc8_;
            _loc8_;
            _loc8_;
            this.§_-FR§.x = _loc5_;
            _loc7_;
            _loc7_;
            this.§_-FR§.y = _loc6_;
            this.§_-E0§.addChild(this.§_-FR§);
         }
         else
         {
            this.§_-FR§.updatePlayers(this.§_-RP§,this.max_players,param3);
         }
      }
      
      public function §_-hZ§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         scaleX = this.§ set§;
         _loc1_;
         scaleY = this.§ set§;
      }
      
      public function §_-Gn§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tween_x = new Tween(this,"scaleX",Strong.easeOut,scaleX,this.§ set§,1,true);
         _loc1_;
         _loc1_;
         this.tween_y = new Tween(this,"scaleY",Strong.easeOut,scaleY,this.§ set§,1,true);
         _loc2_;
         this.tween_x.addEventListener(TweenEvent.MOTION_FINISH,this.§_-I§,false,0,true);
         this.circle_border.cacheAsBitmap = false;
         this.tween_x.start();
         this.tween_y.start();
      }
      
      public function §_-dX§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         this.tween_x = new Tween(this,"scaleX",Strong.easeOut,scaleX,1,1,true);
         this.tween_y = new Tween(this,"scaleY",Strong.easeOut,scaleY,1,1,true);
         _loc2_;
         this.tween_x.addEventListener(TweenEvent.MOTION_FINISH,this.§_-I§,false,0,true);
         _loc2_;
         _loc2_;
         this.circle_border.cacheAsBitmap = false;
         _loc1_;
         this.tween_x.start();
         this.tween_y.start();
      }
      
      public function §_-91§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.tween_x = new Tween(this,"scaleX",Strong.easeOut,scaleX,this.§_-U5§,1,true);
         _loc2_;
         this.tween_y = new Tween(this,"scaleY",Strong.easeOut,scaleY,this.§_-U5§,1,true);
         _loc1_;
         this.tween_x.addEventListener(TweenEvent.MOTION_FINISH,this.§_-I§,false,0,true);
         _loc1_;
         _loc1_;
         this.circle_border.cacheAsBitmap = false;
         this.tween_x.start();
         _loc2_;
         _loc2_;
         this.tween_y.start();
      }
      
      public function tweenIntoGame() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-iH§.visible = false;
         _loc1_;
         this.§_-VD§ = new Tween(this,"alpha",Strong.easeOut,1,0,1,true);
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.§_-VD§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-Cg§,false,0,true);
         _loc2_;
         this.§_-VD§.start();
      }
      
      public function §_-Cg§(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-VD§.removeEventListener(TweenEvent.MOTION_FINISH,this.§_-Cg§);
         _loc2_;
         _loc2_;
         parent.removeChild(this);
      }
      
      public function §_-V9§(param1:Number, param2:Number, param3:Number, param4:Number) : void
      {
         var _loc9_:* = true;
         var _loc10_:* = false;
         _loc10_;
         _loc9_;
         _loc9_;
         var _loc5_:Number = param1 - param3;
         _loc9_;
         _loc9_;
         _loc9_;
         var _loc6_:Number = param2 - param4;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc9_;
         var _loc7_:Number = param1 + _loc5_ * 2.5;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc9_;
         _loc9_;
         var _loc8_:Number = param2 + _loc6_ * 2.5;
         _loc9_;
         x = _loc7_;
         _loc10_;
         y = _loc8_;
      }
      
      public function §_-iX§(param1:Number, param2:Number) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc3_;
         _loc3_;
         alpha = 1;
         _loc3_;
         if(this.§_-E0§ != null)
         {
            _loc3_;
            _loc3_;
            this.§_-E0§.alpha = 1;
         }
         _loc3_;
         _loc3_;
         if(this.§_-iH§ != null)
         {
            _loc4_;
            this.§_-iH§.alpha = 1;
         }
         this.tween_x = new Tween(this,"x",Strong.easeOut,x,param1,1,true);
         this.tween_y = new Tween(this,"y",Strong.easeOut,y,param2,1,true);
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         this.tween_x.addEventListener(TweenEvent.MOTION_FINISH,this.§_-I§,false,0,true);
         this.circle_border.cacheAsBitmap = false;
         _loc3_;
         _loc3_;
         this.tween_x.start();
         _loc4_;
         _loc4_;
         this.tween_y.start();
      }
      
      public function moveAway(param1:Number, param2:Number) : void
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         _loc8_;
         _loc8_;
         var _loc3_:Number = x - param1;
         _loc8_;
         _loc8_;
         var _loc4_:Number = y - param2;
         var _loc5_:Number = x + _loc3_ * 2.5;
         var _loc6_:Number = y + _loc4_ * 2.5;
         this.tween_x = new Tween(this,"x",Strong.easeOut,x,_loc5_,1,true);
         this.tween_y = new Tween(this,"y",Strong.easeOut,y,_loc6_,1,true);
         this.circle_border.cacheAsBitmap = false;
         _loc7_;
         _loc7_;
         _loc7_;
         this.tween_x.addEventListener(TweenEvent.MOTION_FINISH,this.§_-MA§,false,0,true);
         this.tween_x.start();
         _loc8_;
         this.tween_y.start();
      }
      
      public function §_-MA§(param1:TweenEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.circle_border.cacheAsBitmap = true;
         _loc3_;
         (parent as LobbyScreen).§_-MA§();
         _loc3_;
         this.tween_x.removeEventListener(TweenEvent.MOTION_FINISH,this.§_-MA§);
         _loc2_;
         _loc2_;
         parent.removeChild(this);
      }
   }
}
