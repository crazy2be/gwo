package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.utils.getDefinitionByName;
   import flash.geom.ColorTransform;
   import flash.geom.Rectangle;
   import flash.events.MouseEvent;
   
   public class LobbyJoinPanel extends Sprite
   {
      
      public function LobbyJoinPanel()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         super();
      }
      
      public var §_-PB§:MovieClip;
      
      public var §_-Js§:TextField;
      
      public var §_-cb§:MovieClip;
      
      public var name_text:TextField;
      
      public var §_-98§:MovieClip;
      
      private var uid:String;
      
      private var user_name:String;
      
      private var §_-xJ§:int;
      
      private var colour:int;
      
      private var helmet:int;
      
      private var §_-Gu§:int;
      
      private var player_status:int;
      
      private var §_-Jw§:MovieClip;
      
      public function init(param1:String, param2:String, param3:int, param4:int, param5:int, param6:int, param7:int) : void
      {
         var _loc15_:* = false;
         var _loc16_:* = true;
         this.uid = param1;
         _loc16_;
         this.user_name = param2;
         this.colour = param3;
         this.helmet = param4;
         this.§_-xJ§ = param5;
         this.§_-Gu§ = param6;
         this.player_status = param7;
         if(this.§_-Gu§ % 2 == 0)
         {
            _loc15_;
            _loc15_;
            this.§_-cb§.visible = true;
            _loc16_;
            this.§_-98§.visible = false;
            _loc15_;
         }
         else
         {
            this.§_-cb§.visible = false;
            this.§_-98§.visible = true;
         }
         var _loc8_:TextFormat = new TextFormat();
         _loc8_.letterSpacing = -1;
         _loc15_;
         _loc15_;
         this.§_-Js§.defaultTextFormat = _loc8_;
         _loc16_;
         _loc16_;
         if(this.§_-xJ§ < 1)
         {
            _loc15_;
            _loc15_;
            this.§_-xJ§ = 1;
            _loc15_;
         }
         this.§_-Js§.text = String(this.§_-xJ§);
         _loc15_;
         _loc15_;
         this.name_text.text = this.user_name;
         var _loc9_:Class = getDefinitionByName("HeadClip" + this.helmet) as Class;
         _loc16_;
         this.§_-Jw§ = new _loc9_();
         var _loc10_:Number = this.§_-Jw§.height;
         var _loc11_:Number = 20;
         _loc16_;
         _loc16_;
         _loc15_;
         var _loc12_:Number = _loc11_ / _loc10_;
         _loc15_;
         this.§_-Jw§.scaleX = _loc12_;
         _loc16_;
         this.§_-Jw§.scaleY = _loc12_;
         _loc15_;
         _loc15_;
         this.§_-Jw§.visible = false;
         var _loc13_:ColorTransform = this.§_-Jw§.inside.transform.colorTransform;
         _loc13_.color = SafeGlobal.colour_hex[param3];
         _loc15_;
         this.§_-Jw§.inside.transform.colorTransform = _loc13_;
         _loc15_;
         addChild(this.§_-Jw§);
         var _loc14_:Rectangle = this.§_-Jw§.getBounds(this);
         _loc16_;
         this.§_-Jw§.y = 2 - _loc14_.y;
         _loc15_;
         this.§_-Jw§.x = 3 - _loc14_.x;
         _loc15_;
         _loc16_;
         _loc16_;
         _loc16_;
         if(this.helmet == 8)
         {
            _loc15_;
            _loc15_;
            this.§_-Jw§.x = this.§_-Jw§.x - 3;
            _loc15_;
         }
         if(this.player_status == 0)
         {
            this.§_-PB§.visible = false;
            this.§_-Jw§.visible = true;
            _loc15_;
            _loc15_;
         }
         else
         {
            this.§_-PB§.visible = true;
            this.§_-Jw§.visible = false;
            _loc16_;
            _loc16_;
            this.§_-PB§.mouseEnabled = true;
            _loc15_;
            this.§_-PB§.mouseChildren = false;
            _loc16_;
            this.§_-PB§.buttonMode = true;
            this.§_-PB§.addEventListener(MouseEvent.ROLL_OVER,this.§_-rI§,false,0,true);
            this.§_-PB§.addEventListener(MouseEvent.ROLL_OUT,this.§_-US§,false,0,true);
         }
      }
      
      public function §_-rI§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc3_;
         _loc3_;
         if(this.player_status == Global.§_-yP§)
         {
            this.name_text.text = this.user_name;
            _loc3_;
            this.§_-PB§.visible = false;
         }
         else
         {
            _loc2_;
            _loc2_;
            _loc2_;
            if(this.player_status == Global.§_-WE§)
            {
               this.name_text.text = "Editing Map";
               _loc3_;
               _loc3_;
            }
            else
            {
               _loc3_;
               _loc3_;
               _loc2_;
               if(this.player_status == Global.§_-dp§)
               {
                  _loc3_;
                  this.name_text.text = "Editing Replay";
                  _loc3_;
                  _loc3_;
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  _loc2_;
                  _loc2_;
                  if(this.player_status == Global.§_-lD§)
                  {
                     this.name_text.text = "Editing Weapon";
                     _loc2_;
                     _loc2_;
                  }
                  else
                  {
                     _loc3_;
                     _loc3_;
                     _loc3_;
                     if(this.player_status == Global.§_-tV§)
                     {
                        this.name_text.text = "Playing Tutorial";
                     }
                     else if(this.player_status == Global.§_-XP§)
                     {
                        this.name_text.text = "AFK";
                     }
                     
                  }
               }
            }
         }
      }
      
      public function §_-US§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.name_text.text = this.user_name;
      }
   }
}
