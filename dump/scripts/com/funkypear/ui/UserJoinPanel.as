package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.display.MovieClip;
   import flash.text.TextField;
   import flash.text.TextFormat;
   import flash.events.MouseEvent;
   import flash.geom.ColorTransform;
   import flash.utils.getDefinitionByName;
   import flash.geom.Rectangle;
   
   public class UserJoinPanel extends Sprite
   {
      
      public function UserJoinPanel(param1:Boolean = false)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         super();
         _loc2_;
         this.countdown_started = param1;
      }
      
      public var §_-8W§:MovieClip;
      
      public var §_-Js§:TextField;
      
      public var §_-Xl§:MovieClip;
      
      public var §_-Zo§:MovieClip;
      
      public var bg:MovieClip;
      
      public var name_text:TextField;
      
      public var uid:String;
      
      public var user_name:String;
      
      public var colour:int;
      
      private var helmet:int;
      
      private var teamxp:int;
      
      private var §_-GL§:int;
      
      private var kills:int;
      
      private var golds:int;
      
      private var awards:int;
      
      public var team_id:int = -1;
      
      public var team_pos:int = -1;
      
      private var §_-Jw§:MovieClip;
      
      private var §_-6y§:§_-CE§;
      
      private var §_-3c§:§_-hc§;
      
      private var countdown_started:Boolean = false;
      
      public function init(param1:String, param2:String, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int, param9:int = -1, param10:int = -1) : void
      {
         var _loc13_:* = true;
         var _loc14_:* = false;
         _loc14_;
         _loc14_;
         this.uid = param1;
         this.user_name = param2;
         this.helmet = param4;
         this.teamxp = param5;
         _loc14_;
         _loc14_;
         this.kills = param6;
         this.golds = param7;
         this.awards = param8;
         _loc13_;
         this.team_id = param9;
         this.team_pos = param10;
         var _loc11_:TextFormat = new TextFormat();
         _loc11_.letterSpacing = -2;
         _loc14_;
         _loc14_;
         this.name_text.defaultTextFormat = _loc11_;
         _loc14_;
         _loc14_;
         this.name_text.text = this.user_name;
         _loc14_;
         this.§_-GL§ = Global.getLevel(param5);
         var _loc12_:TextFormat = new TextFormat();
         _loc12_.letterSpacing = -4;
         this.§_-Js§.defaultTextFormat = _loc12_;
         this.§_-Js§.text = String(this.§_-GL§);
         if(TimelineGlobal.player_name == this.user_name)
         {
            this.§_-6y§ = new §_-CE§();
            _loc13_;
            _loc14_;
            this.§_-6y§.visible = false;
            _loc14_;
            _loc14_;
            _loc14_;
            this.§_-6y§.§_-kV§.visible = false;
            _loc14_;
            _loc14_;
            this.§_-6y§.§_-kV§.mouseEnabled = false;
            _loc13_;
            addChild(this.§_-6y§);
            this.§_-xp§();
         }
         else
         {
            this.§_-3c§ = new §_-hc§();
            _loc14_;
            this.§_-3c§.visible = false;
            _loc13_;
            this.§_-3c§.§_-ZX§.text = String(param6);
            _loc14_;
            _loc14_;
            this.§_-3c§.§_-Pt§.text = String(param7);
            this.§_-3c§.§_-M4§.text = String(param8);
            addChild(this.§_-3c§);
         }
         this.colour = param3;
         this.§_-dJ§(param4);
         this.changeColour(this.colour);
         this.§_-Ao§();
         _loc14_;
         this.§_-5W§();
         _loc13_;
         this.§_-Xl§.mouseEnabled = true;
         this.§_-Xl§.mouseChildren = false;
         _loc14_;
         this.§_-Xl§.buttonMode = true;
         this.§_-Xl§.addEventListener(MouseEvent.ROLL_OVER,this.§_-h1§,false,0,true);
         _loc14_;
         _loc14_;
         this.§_-Xl§.addEventListener(MouseEvent.ROLL_OUT,this.§_-ng§,false,0,true);
         _loc13_;
         this.§_-Xl§.addEventListener(MouseEvent.CLICK,this.§_-fc§,false,0,true);
         this.addEventListener(MouseEvent.ROLL_OUT,this.§_-PS§,false,0,true);
         if(this.countdown_started)
         {
            this.deactivateColourChange();
         }
      }
      
      public function deactivateColourChange() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.countdown_started = true;
         if(TimelineGlobal.player_name == this.user_name)
         {
            this.§_-6y§.visible = false;
            _loc1_;
            if(this.§_-Xl§.hasEventListener(MouseEvent.CLICK))
            {
               _loc1_;
               this.§_-Xl§.removeEventListener(MouseEvent.ROLL_OVER,this.§_-h1§);
               this.§_-Xl§.removeEventListener(MouseEvent.ROLL_OUT,this.§_-ng§);
               this.§_-Xl§.removeEventListener(MouseEvent.CLICK,this.§_-fc§);
            }
            if(this.hasEventListener(MouseEvent.ROLL_OUT))
            {
               this.removeEventListener(MouseEvent.ROLL_OUT,this.§_-PS§);
            }
            this.§_-Xl§.visible = false;
         }
         else
         {
            this.§_-3c§.visible = false;
         }
      }
      
      private function §_-5W§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(TimelineGlobal.player_name == this.user_name)
         {
            _loc2_;
            _loc2_;
            _loc1_;
            if(this.team_pos == -1)
            {
               _loc1_;
               _loc1_;
               this.§_-Xl§.action_text.text = "CHANGE COLOR";
               _loc1_;
               if(this.§_-6y§.visible == false)
               {
                  this.§_-Xl§.visible = true;
               }
            }
            else if(this.team_pos == 0)
            {
               this.§_-Xl§.action_text.text = "CHANGE TEAM COLOR";
               if(this.§_-6y§.visible == false)
               {
                  this.§_-Xl§.visible = true;
               }
            }
            else
            {
               this.§_-Xl§.visible = false;
               _loc1_;
            }
            
         }
         else
         {
            this.§_-Xl§.action_text.text = "VIEW STATS";
            if(this.§_-3c§.visible == false)
            {
               _loc1_;
               this.§_-Xl§.visible = true;
            }
         }
      }
      
      private function §_-Ao§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         if(this.team_id == -1)
         {
            _loc1_;
            this.§_-8W§.visible = false;
            _loc2_;
         }
         else
         {
            this.§_-8W§.team_id_text.text = String(this.team_id + 1);
            _loc2_;
            _loc2_;
            this.§_-8W§.visible = true;
         }
      }
      
      public function §_-Nu§(param1:int, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         this.team_id = param1;
         _loc4_;
         _loc4_;
         this.team_pos = param2;
         _loc4_;
         this.§_-5W§();
         _loc3_;
         _loc3_;
         this.§_-Ao§();
      }
      
      public function changeColour(param1:int) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         this.colour = param1;
         var _loc2_:ColorTransform = this.§_-Jw§.inside.transform.colorTransform;
         _loc4_;
         _loc2_.color = SafeGlobal.colour_hex[param1];
         _loc5_;
         this.§_-Jw§.inside.transform.colorTransform = _loc2_;
         var _loc3_:ColorTransform = this.bg.transform.colorTransform;
         _loc5_;
         _loc3_.color = SafeGlobal.colour_hex[param1];
         _loc5_;
         this.bg.transform.colorTransform = _loc3_;
      }
      
      public function §_-dJ§(param1:int) : void
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         _loc8_;
         if(this.§_-Jw§ != null)
         {
            _loc9_;
            removeChild(this.§_-Jw§);
            _loc8_;
            _loc8_;
            this.§_-Jw§ = null;
         }
         var _loc2_:Class = getDefinitionByName("HeadClip" + this.helmet) as Class;
         _loc9_;
         this.§_-Jw§ = new _loc2_();
         var _loc3_:Number = this.§_-Jw§.height;
         var _loc4_:Number = 50;
         _loc9_;
         _loc9_;
         var _loc5_:Number = _loc4_ / _loc3_;
         _loc9_;
         _loc9_;
         this.§_-Jw§.scaleX = _loc5_;
         _loc8_;
         _loc8_;
         this.§_-Jw§.scaleY = _loc5_;
         _loc8_;
         this.§_-Jw§.visible = false;
         var _loc6_:ColorTransform = this.§_-Jw§.inside.transform.colorTransform;
         _loc6_.color = SafeGlobal.colour_hex[this.colour];
         _loc9_;
         _loc9_;
         this.§_-Jw§.inside.transform.colorTransform = _loc6_;
         _loc8_;
         _loc8_;
         addChild(this.§_-Jw§);
         var _loc7_:Rectangle = this.§_-Jw§.getBounds(this);
         this.§_-Jw§.y = 0 - _loc7_.y;
         this.§_-Jw§.x = 3 - _loc7_.x;
         if(this.helmet == 8)
         {
            this.§_-Jw§.x = this.§_-Jw§.x - 5;
         }
         this.§_-Jw§.visible = true;
         _loc8_;
         this.§_-Zo§.gotoAndStop(this.helmet + 1);
      }
      
      public function §_-h1§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Xl§.action_text.alpha = 0.5;
      }
      
      public function §_-ng§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-Xl§.action_text.alpha = 1;
      }
      
      public function §_-fc§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(TimelineGlobal.player_name == this.user_name)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(this.§_-6y§.visible == true)
            {
               _loc3_;
               _loc3_;
               _loc2_;
               _loc2_;
               this.§_-6y§.visible = false;
               this.§_-Xl§.visible = true;
               this.name_text.visible = true;
            }
            else
            {
               this.§_-6y§.visible = true;
               _loc3_;
               this.§_-Xl§.visible = false;
               this.name_text.visible = false;
            }
         }
         else
         {
            _loc2_;
            if(this.§_-3c§.visible == true)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               this.§_-3c§.visible = false;
               this.§_-Xl§.visible = true;
               _loc3_;
               this.name_text.visible = true;
            }
            else
            {
               this.§_-3c§.visible = true;
               this.§_-Xl§.visible = false;
               this.name_text.visible = false;
            }
         }
      }
      
      public function §_-PS§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         _loc3_;
         _loc3_;
         _loc2_;
         if(TimelineGlobal.player_name == this.user_name)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(this.§_-6y§ != null)
            {
               this.§_-6y§.visible = false;
            }
         }
         else
         {
            this.§_-3c§.visible = false;
            _loc2_;
         }
         this.§_-Js§.visible = true;
         _loc2_;
         this.name_text.visible = true;
         if(TimelineGlobal.player_name == this.user_name)
         {
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            if(this.team_pos == -1)
            {
               this.§_-Xl§.visible = true;
               _loc2_;
               _loc2_;
            }
            else if(this.team_pos == 0)
            {
               _loc2_;
               _loc2_;
               this.§_-Xl§.visible = true;
            }
            else
            {
               this.§_-Xl§.visible = false;
            }
            
         }
         else
         {
            this.§_-Xl§.visible = true;
         }
      }
      
      private function §_-xp§() : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:MovieClip = null;
         var _loc3_:ColorTransform = null;
         var _loc1_:* = 0;
         while(_loc1_ < SafeGlobal.coloursUnlocked.length)
         {
            _loc4_;
            _loc2_ = this.§_-6y§.getChildByName("colour_" + (_loc1_ + 1)) as MovieClip;
            _loc4_;
            _loc4_;
            if(_loc2_ != null)
            {
               _loc4_;
               if(SafeGlobal.coloursUnlocked[_loc1_])
               {
                  _loc5_;
                  _loc3_ = _loc2_.transform.colorTransform;
                  _loc3_.color = SafeGlobal.colour_hex[_loc1_];
                  _loc5_;
                  _loc2_.transform.colorTransform = _loc3_;
                  _loc4_;
                  _loc4_;
                  _loc2_.mouseEnabled = true;
                  _loc2_.mouseChildren = false;
                  _loc2_.buttonMode = true;
                  _loc4_;
                  _loc4_;
                  _loc2_.addEventListener(MouseEvent.ROLL_OVER,this.§_-7§,false,0,true);
                  _loc4_;
                  _loc2_.addEventListener(MouseEvent.ROLL_OUT,this.§_-Jr§,false,0,true);
                  _loc4_;
                  _loc4_;
                  _loc2_.addEventListener(MouseEvent.CLICK,this.§_-em§,false,0,true);
               }
               else
               {
                  _loc2_.visible = false;
                  _loc4_;
               }
            }
            _loc1_++;
         }
      }
      
      public function §_-7§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc3_;
         _loc3_;
         this.§_-6y§.§_-kV§.x = param1.currentTarget.x;
         _loc2_;
         _loc2_;
         _loc2_;
         this.§_-6y§.§_-kV§.y = param1.currentTarget.y;
         _loc3_;
         _loc3_;
         this.§_-6y§.§_-kV§.visible = true;
      }
      
      public function §_-Jr§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-6y§.§_-kV§.visible = false;
      }
      
      public function §_-em§(param1:MouseEvent) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = parseInt(param1.currentTarget.name.slice(7)) - 1;
         _loc3_;
         Global.lobby_client.changeGameColour(_loc2_);
         _loc3_;
         _loc3_;
         this.§_-6y§.visible = false;
         _loc3_;
         this.§_-Xl§.visible = true;
         _loc3_;
         _loc3_;
         this.§_-Js§.visible = true;
         _loc4_;
         _loc4_;
         this.name_text.visible = true;
      }
   }
}
