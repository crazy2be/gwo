package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.display.MovieClip;
   import flash.utils.Timer;
   import flash.text.TextFormat;
   import flash.utils.getDefinitionByName;
   import flash.geom.ColorTransform;
   import flash.geom.Rectangle;
   import flash.events.TimerEvent;
   
   public class UserPositionPanel extends Sprite
   {
      
      public function UserPositionPanel()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         super();
      }
      
      public var §_-9O§:TextField;
      
      public var §_-An§:MovieClip;
      
      public var bg:MovieClip;
      
      public var name_text:TextField;
      
      public var uid:String;
      
      public var user_name:String;
      
      public var colour:int;
      
      public var helmet:int;
      
      public var medal:int;
      
      public var §_-BN§:Boolean;
      
      private var §_-Sz§:MovieClip;
      
      private var §_-m7§:Sprite;
      
      private var §_-tG§:Timer;
      
      public function init(param1:String, param2:String, param3:int, param4:int, param5:int, param6:Boolean) : void
      {
         var _loc16_:* = false;
         var _loc17_:* = true;
         var _loc15_:Class = null;
         _loc16_;
         _loc16_;
         this.uid = param1;
         this.user_name = param2;
         this.colour = param3;
         this.helmet = param4;
         this.medal = param5;
         _loc16_;
         _loc16_;
         this.§_-BN§ = param6;
         var _loc7_:TextFormat = new TextFormat();
         _loc7_.letterSpacing = -2;
         _loc16_;
         _loc16_;
         this.name_text.defaultTextFormat = _loc7_;
         _loc16_;
         this.name_text.text = this.user_name;
         var _loc8_:Class = getDefinitionByName("HeadClip" + this.helmet) as Class;
         _loc16_;
         _loc16_;
         this.§_-Sz§ = new _loc8_();
         var _loc9_:Number = this.§_-Sz§.height;
         var _loc10_:Number = 50;
         _loc16_;
         _loc16_;
         _loc16_;
         _loc16_;
         var _loc11_:Number = _loc10_ / _loc9_;
         _loc16_;
         _loc16_;
         this.§_-Sz§.scaleX = _loc11_;
         _loc17_;
         _loc17_;
         this.§_-Sz§.scaleY = _loc11_;
         _loc17_;
         _loc17_;
         this.§_-Sz§.visible = false;
         var _loc12_:ColorTransform = this.§_-Sz§.inside.transform.colorTransform;
         _loc12_.color = SafeGlobal.colour_hex[param3];
         _loc16_;
         _loc16_;
         this.§_-Sz§.inside.transform.colorTransform = _loc12_;
         _loc17_;
         addChild(this.§_-Sz§);
         var _loc13_:Rectangle = this.§_-Sz§.getBounds(this);
         this.§_-Sz§.y = 0 - _loc13_.y;
         _loc16_;
         _loc16_;
         this.§_-Sz§.x = 3 - _loc13_.x;
         _loc16_;
         if(this.helmet == 8)
         {
            _loc16_;
            _loc16_;
            this.§_-Sz§.x = this.§_-Sz§.x - 5;
         }
         this.§_-Sz§.visible = true;
         _loc16_;
         _loc16_;
         this.§_-An§.gotoAndStop(this.helmet + 1);
         var _loc14_:ColorTransform = this.bg.transform.colorTransform;
         _loc14_.color = SafeGlobal.colour_hex[param3];
         _loc16_;
         this.bg.transform.colorTransform = _loc14_;
         _loc16_;
         _loc16_;
         if(this.medal != 0)
         {
            _loc16_;
            _loc16_;
            _loc15_ = getDefinitionByName("Medal" + this.medal) as Class;
            _loc16_;
            this.§_-m7§ = new _loc15_();
            this.§_-m7§.scaleX = 0.6;
            this.§_-m7§.scaleY = 0.6;
            _loc16_;
            _loc16_;
            this.§_-m7§.x = 235;
            this.§_-m7§.y = 24;
            _loc16_;
            addChild(this.§_-m7§);
            _loc16_;
            this.§_-9O§.visible = false;
         }
         else
         {
            this.§_-9O§.visible = true;
         }
         if(this.§_-BN§ == false)
         {
            _loc17_;
            _loc17_;
            this.§_-2G§();
         }
      }
      
      public function displayLeftRoom() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-9O§.text = "LEFT ROOM";
         _loc1_;
         _loc1_;
         this.§_-9O§.visible = true;
      }
      
      public function §_-2G§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         this.§_-9O§.text = "DROPPED OUT";
         _loc2_;
         _loc2_;
         this.§_-9O§.visible = true;
      }
      
      public function displayPlayingAgain() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.§_-tG§ = new Timer(2000,1);
         _loc2_;
         this.§_-tG§.addEventListener(TimerEvent.TIMER,this.§_-v4§,false,0,true);
         _loc1_;
         this.§_-tG§.start();
      }
      
      private function §_-v4§(param1:TimerEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-9O§.text = "PLAYING AGAIN";
         _loc2_;
         this.§_-9O§.visible = true;
         _loc2_;
         this.§_-tG§.removeEventListener(TimerEvent.TIMER,this.§_-v4§);
         _loc3_;
         this.§_-tG§ = null;
      }
   }
}
