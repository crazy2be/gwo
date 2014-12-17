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
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
         _loc1_;
         _loc1_;
         this.tween_array = new Array();
      }
      
      public var §_-uo§:MovieClip;
      
      public var §_-sp§:MovieClip;
      
      private var action_list:Array;
      
      private var §_-G6§:int = 0;
      
      private var §_-Sz§:MovieClip;
      
      private var §_-J8§:Boolean = false;
      
      private var §_-aQ§:Boolean = false;
      
      private var tween_array:Array;
      
      private var §_-NR§:Number = 100;
      
      public function §_-q1§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-uo§.white_text.text = "Setting up game...";
         _loc1_;
         this.§_-uo§.shadow_text.text = "Setting up game...";
      }
      
      public function §_-sL§() : void
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc4_:String = null;
         var _loc5_:* = 0;
         var _loc6_:* = 0;
         _loc8_;
         _loc8_;
         var _loc1_:String = Global.lobby_client.game_room.§_-ZE§;
         var _loc2_:Array = _loc1_.split(",");
         _loc7_;
         _loc7_;
         this.action_list = new Array();
         var _loc3_:* = 0;
         while(_loc3_ < _loc2_.length)
         {
            _loc8_;
            _loc8_;
            _loc4_ = _loc2_[_loc3_];
            if(_loc4_ != "*")
            {
               _loc8_;
               _loc7_;
               _loc5_ = this.§_-O6§(_loc4_);
               _loc7_;
               _loc7_;
               _loc7_;
               _loc6_ = this.native(_loc4_);
               _loc7_;
               _loc7_;
               this.action_list.push({
                  "name":_loc4_,
                  "colour":_loc5_,
                  "helmet":_loc6_
               });
            }
            _loc3_++;
         }
         _loc7_;
         _loc7_;
         _loc8_;
         if(this.action_list.length == 4)
         {
            this.§_-NR§ = 100;
         }
         else
         {
            _loc8_;
            _loc8_;
            if(this.action_list.length == 3)
            {
               this.§_-NR§ = 200;
               _loc8_;
            }
            else if(this.action_list.length == 2)
            {
               _loc8_;
               this.§_-NR§ = 300;
               _loc7_;
            }
            
         }
         this.processNextAction(null);
      }
      
      private function §_-3p§(param1:Object) : void
      {
         var _loc16_:* = false;
         var _loc17_:* = true;
         var _loc2_:Sprite = null;
         _loc2_ = new Sprite();
         _loc17_;
         _loc2_.name = String("helmet" + this.§_-G6§);
         var _loc3_:Class = getDefinitionByName("HeadClip" + param1.helmet) as Class;
         _loc17_;
         this.§_-Sz§ = new _loc3_();
         var _loc4_:Number = this.§_-Sz§.width;
         var _loc5_:Number = 104;
         _loc17_;
         _loc17_;
         _loc16_;
         _loc16_;
         var _loc6_:Number = _loc5_ / _loc4_;
         _loc16_;
         _loc16_;
         this.§_-Sz§.scaleX = _loc6_;
         _loc16_;
         _loc16_;
         this.§_-Sz§.scaleY = _loc6_;
         var _loc7_:ColorTransform = this.§_-Sz§.inside.transform.colorTransform;
         _loc7_.color = SafeGlobal.colour_hex[param1.colour];
         _loc17_;
         _loc17_;
         this.§_-Sz§.inside.transform.colorTransform = _loc7_;
         var _loc8_:uint = SafeGlobal.§_-lG§(SafeGlobal.colour_hex[param1.colour]);
         var _loc9_:ColorTransform = this.§_-Sz§.border.transform.colorTransform;
         _loc9_.color = _loc8_;
         _loc16_;
         _loc16_;
         this.§_-Sz§.border.transform.colorTransform = _loc9_;
         _loc16_;
         _loc16_;
         _loc2_.addChild(this.§_-Sz§);
         var _loc10_:§_-I6§ = new §_-I6§();
         var _loc11_:* = "<font color=\'";
         _loc17_;
         _loc16_;
         _loc16_;
         _loc17_;
         _loc17_;
         _loc17_;
         _loc11_ = _loc11_ + SafeGlobal.colour_hex_string[param1.colour];
         _loc16_;
         _loc16_;
         _loc16_;
         _loc16_;
         _loc17_;
         _loc17_;
         _loc11_ = _loc11_ + SafeGlobal.colour_hex_string[param1.colour] + "\'>";
         _loc16_;
         _loc16_;
         _loc17_;
         _loc11_ = _loc11_ + param1.name;
         _loc11_ = _loc11_ + "</font>";
         var _loc12_:TextFormat = new TextFormat();
         _loc12_.letterSpacing = -2;
         _loc10_.name_text.defaultTextFormat = _loc12_;
         _loc10_.name_text.htmlText = _loc11_;
         _loc10_.x = 0;
         _loc10_.y = 50;
         _loc17_;
         _loc17_;
         _loc2_.addChild(_loc10_);
         _loc16_;
         _loc2_.x = 820;
         _loc2_.y = 100;
         _loc16_;
         this.§_-sp§.addChild(_loc2_);
         var _loc13_:Tween = new Tween(_loc2_,"x",Strong.easeOut,_loc2_.x,this.§_-NR§ + this.§_-G6§ * 200,20,false);
         _loc17_;
         _loc16_;
         this.tween_array.push(_loc13_);
         _loc16_;
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
         _loc16_;
         _loc16_;
         _loc16_;
         _loc16_;
         this.§_-G6§++;
      }
      
      private function processNextAction(param1:TweenEvent) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Object = null;
         _loc3_;
         if(this.action_list.length > 0)
         {
            _loc2_ = this.action_list[0];
            _loc4_;
            _loc4_;
            this.action_list.splice(0,1);
            _loc4_;
            this.§_-3p§(_loc2_);
         }
         else
         {
            this.§_-aQ§ = true;
            SafeGlobal.orderDisplayFinished = true;
            _loc4_;
            _loc4_;
            _loc4_;
            _loc3_;
            if((SafeGlobal.orderDisplayFinished) && (SafeGlobal.orderSetupReady))
            {
               _loc4_;
               _loc4_;
               SafeGlobal.GAME.tryBuildGame();
            }
         }
      }
      
      public function native(param1:String) : int
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
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
            _loc4_;
            _loc4_;
            _loc4_;
            if(Global.player_array[_loc3_].user_name == param1)
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc2_ = Global.player_array[_loc3_].helmet;
               _loc5_;
               break;
            }
            _loc3_++;
            _loc5_;
         }
         return _loc2_;
      }
      
      public function §_-O6§(param1:String) : int
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         while(true)
         {
            _loc5_;
            if(_loc3_ >= Global.player_array.length)
            {
               break;
            }
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            if(Global.player_array[_loc3_].user_name == param1)
            {
               _loc5_;
               _loc5_;
               _loc4_;
               _loc2_ = Global.player_array[_loc3_].colour;
               _loc4_;
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
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc1_:* = 0;
         var _loc2_:String = null;
         var _loc3_:Sprite = null;
         _loc4_;
         _loc4_;
         if(this.§_-aQ§)
         {
            _loc4_;
            _loc4_;
            this.§_-uo§.white_text.text = "";
            _loc4_;
            this.§_-uo§.shadow_text.text = "";
            _loc5_;
            _loc5_;
            _loc1_ = 0;
            while(_loc1_ < 4)
            {
               _loc2_ = String("helmet" + _loc1_);
               _loc3_ = this.§_-sp§.getChildByName(_loc2_) as Sprite;
               _loc5_;
               if(_loc3_ != null)
               {
                  _loc4_;
                  _loc3_.visible = false;
                  _loc4_;
                  this.§_-sp§.removeChild(_loc3_);
                  _loc4_;
               }
               _loc1_++;
            }
            _loc4_;
            this.§_-uo§.gotoAndPlay("off");
            this.§_-sp§.gotoAndPlay("off");
            _loc4_;
            _loc4_;
            if(this.tween_array != null)
            {
               _loc4_;
               this.tween_array.length = 0;
               this.tween_array = null;
               _loc4_;
               _loc4_;
            }
         }
         else
         {
            this.§_-J8§ = true;
         }
      }
      
      public function finishTweenOff() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         parent.removeChild(this);
      }
   }
}
