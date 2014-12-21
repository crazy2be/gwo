package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.utils.getDefinitionByName;
   import flash.geom.ColorTransform;
   import flash.text.TextFormat;
   import fl.transitions.Tween;
   import fl.transitions.easing.Strong;
   import fl.transitions.TweenEvent;
   
   public class BlackBarTurnDisplay extends Sprite
   {
      
      public function BlackBarTurnDisplay()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         super();
         _loc2_;
         _loc2_;
         this.tween_array = new Array();
      }
      
      public var §_-gf§:MovieClip;
      
      public var §_-fO§:MovieClip;
      
      private var action_list:Array;
      
      private var §_-aS§:int = 0;
      
      private var §_-Jw§:MovieClip;
      
      private var §_-nW§:Boolean = false;
      
      private var §_-3W§:Boolean = false;
      
      private var tween_array:Array;
      
      private var §_-UN§:Number = 100;
      
      public function §_-8H§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-gf§.white_text.text = "Setting up game...";
         _loc1_;
         this.§_-gf§.shadow_text.text = "Setting up game...";
      }
      
      public function §_-Iw§() : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:String = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         _loc8_;
         _loc8_;
         var _loc1_:String = Global.lobby_client.game_room.§_-5V§;
         var _loc2_:Array = _loc1_.split(",");
         _loc7_;
         _loc7_;
         this.action_list = new Array();
         var _loc3_:* = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc8_;
            _loc4_ = _loc2_[_loc3_];
            if(_loc4_ != "*")
            {
               _loc7_;
               _loc8_;
               _loc5_ = this.§_-zB§(_loc4_);
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc8_;
               _loc6_ = this.§_-9l§(_loc4_);
               _loc8_;
               _loc8_;
               _loc8_;
               this.action_list.push({
                  "name":_loc4_,
                  "colour":_loc5_,
                  "helmet":_loc6_
               });
            }
            _loc3_++;
            _loc7_;
         }
         _loc7_;
         _loc7_;
         _loc8_;
         _loc8_;
         if(this.action_list.length == 4)
         {
            _loc8_;
            _loc8_;
            this.§_-UN§ = 100;
            _loc8_;
            _loc8_;
         }
         else
         {
            _loc8_;
            if(this.action_list.length == 3)
            {
               _loc7_;
               this.§_-UN§ = 200;
               _loc7_;
               _loc7_;
            }
            else if(this.action_list.length == 2)
            {
               this.§_-UN§ = 300;
            }
            
         }
         this.processNextAction(null);
      }
      
      private function §_-9y§(param1:Object) : void
      {
         var _loc16_:* = true;
         var _loc17_:* = false;
         var _loc2_:Sprite = null;
         _loc2_ = new Sprite();
         _loc17_;
         _loc2_.name = String("helmet" + this.§_-aS§);
         var _loc3_:Class = getDefinitionByName("HeadClip" + param1.helmet) as Class;
         _loc16_;
         _loc16_;
         this.§_-Jw§ = new _loc3_();
         var _loc4_:Number = this.§_-Jw§.width;
         var _loc5_:Number = 104;
         _loc16_;
         _loc16_;
         var _loc6_:Number = _loc5_ / _loc4_;
         _loc17_;
         _loc17_;
         this.§_-Jw§.scaleX = _loc6_;
         _loc16_;
         _loc16_;
         this.§_-Jw§.scaleY = _loc6_;
         var _loc7_:ColorTransform = this.§_-Jw§.inside.transform.colorTransform;
         _loc7_.color = SafeGlobal.colour_hex[param1.colour];
         _loc17_;
         _loc17_;
         this.§_-Jw§.inside.transform.colorTransform = _loc7_;
         var _loc8_:uint = SafeGlobal.§_-vc§(SafeGlobal.colour_hex[param1.colour]);
         var _loc9_:ColorTransform = this.§_-Jw§.border.transform.colorTransform;
         _loc9_.color = _loc8_;
         _loc17_;
         _loc17_;
         this.§_-Jw§.border.transform.colorTransform = _loc9_;
         _loc16_;
         _loc16_;
         _loc2_.addChild(this.§_-Jw§);
         var _loc10_:§_-z§ = new §_-z§();
         var _loc11_:* = "<font color=\'";
         _loc16_;
         _loc16_;
         _loc17_;
         _loc17_;
         _loc16_;
         _loc16_;
         _loc11_ = _loc11_ + SafeGlobal.colour_hex_string[param1.colour];
         _loc16_;
         _loc16_;
         _loc16_;
         _loc17_;
         _loc17_;
         _loc11_ = _loc11_ + SafeGlobal.colour_hex_string[param1.colour] + "\'>";
         _loc17_;
         _loc17_;
         _loc16_;
         _loc16_;
         _loc11_ = _loc11_ + param1.name;
         _loc11_ = _loc11_ + "</font>";
         var _loc12_:TextFormat = new TextFormat();
         _loc12_.letterSpacing = -2;
         _loc16_;
         _loc10_.name_text.defaultTextFormat = _loc12_;
         _loc17_;
         _loc10_.name_text.htmlText = _loc11_;
         _loc17_;
         _loc17_;
         _loc10_.x = 0;
         _loc16_;
         _loc10_.y = 50;
         _loc2_.addChild(_loc10_);
         _loc17_;
         _loc2_.x = 820;
         _loc2_.y = 100;
         _loc17_;
         _loc17_;
         this.§_-fO§.addChild(_loc2_);
         var _loc13_:Tween = new Tween(_loc2_,"x",Strong.easeOut,_loc2_.x,this.§_-UN§ + this.§_-aS§ * 200,20,false);
         _loc16_;
         _loc17_;
         _loc17_;
         this.tween_array.push(_loc13_);
         _loc17_;
         _loc17_;
         _loc16_;
         _loc16_;
         _loc16_;
         _loc17_;
         _loc17_;
         this.tween_array[this.tween_array.length - 1].addEventListener(TweenEvent.MOTION_FINISH,this.processNextAction,false,0,true);
         _loc17_;
         _loc17_;
         this.tween_array[this.tween_array.length - 1].start();
         _loc17_;
         _loc17_;
         _loc17_;
         _loc16_;
         _loc16_;
         this.§_-aS§++;
      }
      
      private function processNextAction(param1:TweenEvent) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Object = null;
         _loc4_;
         _loc3_;
         if(this.action_list.length > 0)
         {
            _loc2_ = this.action_list[0];
            _loc3_;
            _loc3_;
            this.action_list.splice(0,1);
            _loc4_;
            _loc4_;
            this.§_-9y§(_loc2_);
         }
         else
         {
            this.§_-3W§ = true;
            _loc4_;
            _loc4_;
            SafeGlobal.orderDisplayFinished = true;
            _loc4_;
            _loc4_;
            _loc4_;
            if((SafeGlobal.orderDisplayFinished) && (SafeGlobal.orderSetupReady))
            {
               _loc4_;
               _loc4_;
               SafeGlobal.GAME.tryBuildGame();
            }
         }
      }
      
      public function §_-9l§(param1:String) : int
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         while(true)
         {
            _loc4_;
            if(_loc3_ >= Global.player_array.length)
            {
               break;
            }
            _loc4_;
            _loc5_;
            if(Global.player_array[_loc3_].user_name == param1)
            {
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               _loc2_ = Global.player_array[_loc3_].helmet;
               _loc5_;
               break;
            }
            _loc3_++;
            _loc4_;
         }
         return _loc2_;
      }
      
      public function §_-zB§(param1:String) : int
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         while(true)
         {
            _loc4_;
            _loc4_;
            if(_loc3_ >= Global.player_array.length)
            {
               break;
            }
            _loc5_;
            _loc5_;
            _loc5_;
            _loc5_;
            if(Global.player_array[_loc3_].user_name == param1)
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc2_ = Global.player_array[_loc3_].colour;
               _loc4_;
               break;
            }
            _loc3_++;
            _loc4_;
         }
         return _loc2_;
      }
      
      public function tweenOff() : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc1_:* = 0;
         var _loc2_:String = null;
         var _loc3_:Sprite = null;
         _loc4_;
         _loc4_;
         if(this.§_-3W§)
         {
            _loc4_;
            _loc4_;
            this.§_-gf§.white_text.text = "";
            _loc4_;
            _loc4_;
            this.§_-gf§.shadow_text.text = "";
            _loc5_;
            _loc1_ = 0;
            while(_loc1_ < 4)
            {
               _loc2_ = String("helmet" + _loc1_);
               _loc3_ = this.§_-fO§.getChildByName(_loc2_) as Sprite;
               _loc4_;
               if(_loc3_ != null)
               {
                  _loc5_;
                  _loc3_.visible = false;
                  _loc4_;
                  _loc4_;
                  this.§_-fO§.removeChild(_loc3_);
                  _loc4_;
               }
               _loc1_++;
            }
            this.§_-gf§.gotoAndPlay("off");
            this.§_-fO§.gotoAndPlay("off");
            _loc4_;
            if(this.tween_array != null)
            {
               _loc4_;
               this.tween_array.length = 0;
               this.tween_array = null;
            }
         }
         else
         {
            this.§_-nW§ = true;
         }
      }
      
      public function finishTweenOff() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         parent.removeChild(this);
      }
   }
}
