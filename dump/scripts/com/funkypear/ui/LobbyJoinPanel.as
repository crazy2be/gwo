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
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
      }
      
      public var §_-8V§:MovieClip;
      
      public var §_-NC§:TextField;
      
      public var §_-d§:MovieClip;
      
      public var name_text:TextField;
      
      public var §_-hc§:MovieClip;
      
      private var uid:String;
      
      private var user_name:String;
      
      private var §_-pT§:int;
      
      private var colour:int;
      
      private var helmet:int;
      
      private var §_-TU§:int;
      
      private var player_status:int;
      
      private var §_-Sz§:MovieClip;
      
      public function init(param1:String, param2:String, param3:int, param4:int, param5:int, param6:int, param7:int) : void
      {
         var _loc15_:* = false;
         var _loc16_:* = true;
         _loc15_;
         this.uid = param1;
         _loc16_;
         this.user_name = param2;
         this.colour = param3;
         this.helmet = param4;
         _loc16_;
         _loc16_;
         this.§_-pT§ = param5;
         _loc15_;
         _loc15_;
         this.§_-TU§ = param6;
         this.player_status = param7;
         _loc16_;
         _loc16_;
         if(this.§_-TU§ % 2 == 0)
         {
            this.§_-d§.visible = true;
            this.§_-hc§.visible = false;
         }
         else
         {
            this.§_-d§.visible = false;
            _loc15_;
            _loc15_;
            this.§_-hc§.visible = true;
         }
         var _loc8_:TextFormat = new TextFormat();
         _loc8_.letterSpacing = -1;
         _loc15_;
         _loc15_;
         this.§_-NC§.defaultTextFormat = _loc8_;
         _loc16_;
         if(this.§_-pT§ < 1)
         {
            _loc16_;
            _loc16_;
            this.§_-pT§ = 1;
            _loc16_;
         }
         this.§_-NC§.text = String(this.§_-pT§);
         _loc16_;
         _loc16_;
         this.name_text.text = this.user_name;
         var _loc9_:Class = getDefinitionByName("HeadClip" + this.helmet) as Class;
         _loc16_;
         _loc16_;
         this.§_-Sz§ = new _loc9_();
         var _loc10_:Number = this.§_-Sz§.height;
         var _loc11_:Number = 20;
         _loc16_;
         _loc16_;
         _loc15_;
         _loc15_;
         var _loc12_:Number = _loc11_ / _loc10_;
         _loc15_;
         this.§_-Sz§.scaleX = _loc12_;
         _loc16_;
         _loc16_;
         this.§_-Sz§.scaleY = _loc12_;
         _loc16_;
         _loc16_;
         this.§_-Sz§.visible = false;
         var _loc13_:ColorTransform = this.§_-Sz§.inside.transform.colorTransform;
         _loc13_.color = SafeGlobal.colour_hex[param3];
         _loc15_;
         _loc15_;
         this.§_-Sz§.inside.transform.colorTransform = _loc13_;
         _loc16_;
         addChild(this.§_-Sz§);
         var _loc14_:Rectangle = this.§_-Sz§.getBounds(this);
         _loc15_;
         this.§_-Sz§.y = 2 - _loc14_.y;
         this.§_-Sz§.x = 3 - _loc14_.x;
         _loc16_;
         _loc16_;
         if(this.helmet == 8)
         {
            this.§_-Sz§.x = this.§_-Sz§.x - 3;
            _loc15_;
            _loc15_;
         }
         if(this.player_status == 0)
         {
            _loc15_;
            this.§_-8V§.visible = false;
            _loc16_;
            _loc16_;
            this.§_-Sz§.visible = true;
            _loc15_;
         }
         else
         {
            this.§_-8V§.visible = true;
            this.§_-Sz§.visible = false;
            _loc16_;
            _loc16_;
            this.§_-8V§.mouseEnabled = true;
            this.§_-8V§.mouseChildren = false;
            this.§_-8V§.buttonMode = true;
            this.§_-8V§.addEventListener(MouseEvent.ROLL_OVER,this.§_-xA§,false,0,true);
            this.§_-8V§.addEventListener(MouseEvent.ROLL_OUT,this.§_-vH§,false,0,true);
         }
      }
      
      public function §_-xA§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         if(this.player_status == Global.§_-Jj§)
         {
            _loc2_;
            this.name_text.text = this.user_name;
            _loc3_;
            _loc3_;
            this.§_-8V§.visible = false;
            _loc2_;
         }
         else
         {
            _loc2_;
            _loc2_;
            if(this.player_status == Global.§ use§)
            {
               this.name_text.text = "Editing Map";
            }
            else
            {
               _loc3_;
               _loc3_;
               _loc3_;
               if(this.player_status == Global.§_-8E§)
               {
                  this.name_text.text = "Editing Replay";
               }
               else
               {
                  _loc3_;
                  _loc3_;
                  if(this.player_status == Global.§_-4W§)
                  {
                     this.name_text.text = "Editing Weapon";
                  }
                  else
                  {
                     _loc2_;
                     _loc2_;
                     if(this.player_status == Global.§_-Dh§)
                     {
                        _loc3_;
                        this.name_text.text = "Playing Tutorial";
                     }
                     else if(this.player_status == Global.§_-Mz§)
                     {
                        this.name_text.text = "AFK";
                     }
                     
                  }
               }
            }
         }
      }
      
      public function §_-vH§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.name_text.text = this.user_name;
      }
   }
}
