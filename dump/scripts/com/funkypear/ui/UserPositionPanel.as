package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.text.TextField;
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
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         super();
      }
      
      public var §_-8W§:MovieClip;
      
      public var §_-UM§:TextField;
      
      public var §_-Zo§:MovieClip;
      
      public var bg:MovieClip;
      
      public var name_text:TextField;
      
      public var uid:String;
      
      public var user_name:String;
      
      public var colour:int;
      
      public var helmet:int;
      
      public var medal:int;
      
      public var §_-0-T§:Boolean;
      
      public var team_id:int = -1;
      
      private var §_-Jw§:MovieClip;
      
      private var §_-e4§:Sprite;
      
      private var §_-vz§:Timer;
      
      public function init(param1:String, param2:String, param3:int, param4:int, param5:int, param6:Boolean, param7:int) : void
      {
         var _loc17_:* = false;
         var _loc18_:* = true;
         var _loc16_:Class = null;
         _loc18_;
         _loc18_;
         this.uid = param1;
         _loc17_;
         _loc17_;
         this.user_name = param2;
         this.colour = param3;
         _loc18_;
         this.helmet = param4;
         _loc17_;
         _loc17_;
         this.medal = param5;
         _loc18_;
         _loc18_;
         this.§_-0-T§ = param6;
         _loc18_;
         _loc18_;
         this.team_id = param7;
         this.§_-Ao§();
         var _loc8_:TextFormat = new TextFormat();
         _loc8_.letterSpacing = -2;
         _loc18_;
         this.name_text.defaultTextFormat = _loc8_;
         _loc17_;
         _loc17_;
         this.name_text.text = this.user_name;
         var _loc9_:Class = getDefinitionByName("HeadClip" + this.helmet) as Class;
         _loc18_;
         this.§_-Jw§ = new _loc9_();
         var _loc10_:Number = this.§_-Jw§.height;
         var _loc11_:Number = 50;
         _loc17_;
         _loc17_;
         _loc18_;
         var _loc12_:Number = _loc11_ / _loc10_;
         _loc18_;
         this.§_-Jw§.scaleX = _loc12_;
         _loc18_;
         this.§_-Jw§.scaleY = _loc12_;
         _loc18_;
         this.§_-Jw§.visible = false;
         var _loc13_:ColorTransform = this.§_-Jw§.inside.transform.colorTransform;
         _loc13_.color = SafeGlobal.colour_hex[param3];
         _loc17_;
         this.§_-Jw§.inside.transform.colorTransform = _loc13_;
         _loc18_;
         _loc18_;
         addChild(this.§_-Jw§);
         var _loc14_:Rectangle = this.§_-Jw§.getBounds(this);
         this.§_-Jw§.y = 0 - _loc14_.y;
         this.§_-Jw§.x = 3 - _loc14_.x;
         if(this.helmet == 8)
         {
            this.§_-Jw§.x = this.§_-Jw§.x - 5;
         }
         this.§_-Jw§.visible = true;
         this.§_-Zo§.gotoAndStop(this.helmet + 1);
         var _loc15_:ColorTransform = this.bg.transform.colorTransform;
         _loc15_.color = SafeGlobal.colour_hex[param3];
         _loc18_;
         this.bg.transform.colorTransform = _loc15_;
         _loc18_;
         if(this.medal != 0)
         {
            _loc18_;
            _loc18_;
            _loc16_ = getDefinitionByName("Medal" + this.medal) as Class;
            this.§_-e4§ = new _loc16_();
            this.§_-e4§.scaleX = 0.6;
            this.§_-e4§.scaleY = 0.6;
            this.§_-e4§.x = 235;
            _loc18_;
            _loc18_;
            this.§_-e4§.y = 24;
            addChild(this.§_-e4§);
            this.§_-UM§.visible = false;
         }
         else
         {
            this.§_-UM§.visible = true;
         }
         if(this.§_-0-T§ == false)
         {
            _loc18_;
            _loc18_;
            this.§_-Zj§();
         }
      }
      
      private function §_-Ao§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         if(this.team_id == -1)
         {
            _loc2_;
            this.§_-8W§.visible = false;
            _loc1_;
         }
         else
         {
            this.§_-8W§.team_id_text.text = String(this.team_id + 1);
            _loc1_;
            _loc1_;
            this.§_-8W§.visible = true;
         }
      }
      
      public function displayLeftRoom() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-UM§.text = "LEFT ROOM";
         _loc1_;
         _loc1_;
         this.§_-UM§.visible = true;
      }
      
      public function §_-Zj§() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.§_-UM§.text = "DROPPED OUT";
         _loc1_;
         this.§_-UM§.visible = true;
      }
      
      public function displayPlayingAgain() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-vz§ = new Timer(2000,1);
         _loc2_;
         _loc2_;
         this.§_-vz§.addEventListener(TimerEvent.TIMER,this.§_-A0§,false,0,true);
         _loc1_;
         _loc1_;
         this.§_-vz§.start();
      }
      
      private function §_-A0§(param1:TimerEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-UM§.text = "PLAYING AGAIN";
         _loc2_;
         this.§_-UM§.visible = true;
         _loc3_;
         _loc3_;
         this.§_-vz§.removeEventListener(TimerEvent.TIMER,this.§_-A0§);
         _loc2_;
         _loc2_;
         this.§_-vz§ = null;
      }
   }
}
