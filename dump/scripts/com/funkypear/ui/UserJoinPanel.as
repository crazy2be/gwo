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
         _loc2_;
         super();
         _loc3_;
         this.countdown_started = param1;
      }
      
      public var §_-5h§:MovieClip;
      
      public var §_-NC§:TextField;
      
      public var §_-Gu§:MovieClip;
      
      public var §_-An§:MovieClip;
      
      public var bg:MovieClip;
      
      public var name_text:TextField;
      
      public var uid:String;
      
      public var user_name:String;
      
      public var colour:int;
      
      private var helmet:int;
      
      private var teamxp:int;
      
      private var §_-96§:int;
      
      private var kills:int;
      
      private var golds:int;
      
      private var awards:int;
      
      public var team_id:int = -1;
      
      public var team_pos:int = -1;
      
      private var §_-Sz§:MovieClip;
      
      private var §_-gQ§:§_-YV§;
      
      private var §_-Fq§:§_-iV§;
      
      private var countdown_started:Boolean = false;
      
      public function init(param1:String, param2:String, param3:int, param4:int, param5:int, param6:int, param7:int, param8:int, param9:int = -1, param10:int = -1) : void
      {
         var _loc13_:* = false;
         var _loc14_:* = true;
         this.uid = param1;
         _loc13_;
         this.user_name = param2;
         _loc14_;
         this.helmet = param4;
         this.teamxp = param5;
         _loc13_;
         _loc13_;
         this.kills = param6;
         _loc14_;
         _loc14_;
         this.golds = param7;
         this.awards = param8;
         this.team_id = param9;
         _loc14_;
         _loc14_;
         this.team_pos = param10;
         var _loc11_:TextFormat = new TextFormat();
         _loc11_.letterSpacing = -2;
         _loc13_;
         _loc13_;
         this.name_text.defaultTextFormat = _loc11_;
         _loc14_;
         _loc14_;
         this.name_text.text = this.user_name;
         _loc14_;
         this.§_-96§ = Global.getLevel(param5);
         var _loc12_:TextFormat = new TextFormat();
         _loc12_.letterSpacing = -4;
         _loc14_;
         _loc14_;
         this.§_-NC§.defaultTextFormat = _loc12_;
         _loc14_;
         this.§_-NC§.text = String(this.§_-96§);
         if(TimelineGlobal.player_name == this.user_name)
         {
            this.§_-gQ§ = new §_-YV§();
            _loc13_;
            _loc13_;
            _loc13_;
            this.§_-gQ§.visible = false;
            _loc14_;
            _loc13_;
            this.§_-gQ§.§_-kB§.visible = false;
            this.§_-gQ§.§_-kB§.mouseEnabled = false;
            addChild(this.§_-gQ§);
            this.§_-I3§();
         }
         else
         {
            this.§_-Fq§ = new §_-iV§();
            _loc13_;
            _loc14_;
            this.§_-Fq§.visible = false;
            _loc13_;
            this.§_-Fq§.§_-1f§.text = String(param6);
            _loc13_;
            _loc13_;
            this.§_-Fq§.§_-cy§.text = String(param7);
            this.§_-Fq§.§_-O3§.text = String(param8);
            addChild(this.§_-Fq§);
         }
         this.colour = param3;
         _loc13_;
         _loc13_;
         this.§_-rO§(param4);
         _loc14_;
         _loc14_;
         this.changeColour(this.colour);
         this.§_-Y8§();
         _loc13_;
         _loc13_;
         this.§_-Fk§();
         this.§_-Gu§.mouseEnabled = true;
         _loc13_;
         _loc13_;
         this.§_-Gu§.mouseChildren = false;
         this.§_-Gu§.buttonMode = true;
         this.§_-Gu§.addEventListener(MouseEvent.ROLL_OVER,this.§_-JY§,false,0,true);
         _loc13_;
         this.§_-Gu§.addEventListener(MouseEvent.ROLL_OUT,this.§_-SZ§,false,0,true);
         _loc13_;
         _loc13_;
         this.§_-Gu§.addEventListener(MouseEvent.CLICK,this.§_-qL§,false,0,true);
         _loc13_;
         _loc13_;
         this.addEventListener(MouseEvent.ROLL_OUT,this.§_-zg§,false,0,true);
         if(this.countdown_started)
         {
            _loc13_;
            this.deactivateColourChange();
         }
      }
      
      public function deactivateColourChange() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         this.countdown_started = true;
         if(TimelineGlobal.player_name == this.user_name)
         {
            _loc2_;
            this.§_-gQ§.visible = false;
            if(this.§_-Gu§.hasEventListener(MouseEvent.CLICK))
            {
               this.§_-Gu§.removeEventListener(MouseEvent.ROLL_OVER,this.§_-JY§);
               _loc2_;
               this.§_-Gu§.removeEventListener(MouseEvent.ROLL_OUT,this.§_-SZ§);
               this.§_-Gu§.removeEventListener(MouseEvent.CLICK,this.§_-qL§);
            }
            if(this.hasEventListener(MouseEvent.ROLL_OUT))
            {
               this.removeEventListener(MouseEvent.ROLL_OUT,this.§_-zg§);
            }
            this.§_-Gu§.visible = false;
         }
         else
         {
            this.§_-Fq§.visible = false;
         }
      }
      
      private function §_-Fk§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(TimelineGlobal.player_name == this.user_name)
         {
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            _loc1_;
            if(this.team_pos == -1)
            {
               this.§_-Gu§.action_text.text = "CHANGE COLOR";
               _loc2_;
               if(this.§_-gQ§.visible == false)
               {
                  this.§_-Gu§.visible = true;
                  _loc2_;
               }
            }
            else if(this.team_pos == 0)
            {
               this.§_-Gu§.action_text.text = "CHANGE TEAM COLOR";
               if(this.§_-gQ§.visible == false)
               {
                  this.§_-Gu§.visible = true;
                  _loc2_;
               }
            }
            else
            {
               this.§_-Gu§.visible = false;
               _loc1_;
            }
            
         }
         else
         {
            this.§_-Gu§.action_text.text = "VIEW STATS";
            if(this.§_-Fq§.visible == false)
            {
               this.§_-Gu§.visible = true;
            }
         }
      }
      
      private function §_-Y8§() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         if(this.team_id == -1)
         {
            _loc1_;
            this.§_-5h§.visible = false;
            _loc1_;
            _loc1_;
         }
         else
         {
            this.§_-5h§.team_id_text.text = String(this.team_id + 1);
            _loc2_;
            this.§_-5h§.visible = true;
         }
      }
      
      public function §_-TF§(param1:int, param2:int) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         this.team_id = param1;
         _loc3_;
         this.team_pos = param2;
         _loc4_;
         _loc4_;
         this.§_-Fk§();
         _loc3_;
         this.§_-Y8§();
      }
      
      public function changeColour(param1:int) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         this.colour = param1;
         var _loc2_:ColorTransform = this.§_-Sz§.inside.transform.colorTransform;
         _loc4_;
         _loc2_.color = SafeGlobal.colour_hex[param1];
         _loc4_;
         _loc4_;
         this.§_-Sz§.inside.transform.colorTransform = _loc2_;
         var _loc3_:ColorTransform = this.bg.transform.colorTransform;
         _loc4_;
         _loc3_.color = SafeGlobal.colour_hex[param1];
         _loc4_;
         _loc4_;
         this.bg.transform.colorTransform = _loc3_;
      }
      
      public function §_-rO§(param1:int) : void
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         _loc8_;
         if(this.§_-Sz§ != null)
         {
            _loc9_;
            _loc9_;
            removeChild(this.§_-Sz§);
            _loc8_;
            this.§_-Sz§ = null;
         }
         var _loc2_:Class = getDefinitionByName("HeadClip" + this.helmet) as Class;
         _loc8_;
         this.§_-Sz§ = new _loc2_();
         var _loc3_:Number = this.§_-Sz§.height;
         var _loc4_:Number = 50;
         _loc9_;
         _loc9_;
         var _loc5_:Number = _loc4_ / _loc3_;
         _loc8_;
         _loc8_;
         this.§_-Sz§.scaleX = _loc5_;
         _loc9_;
         this.§_-Sz§.scaleY = _loc5_;
         _loc8_;
         this.§_-Sz§.visible = false;
         var _loc6_:ColorTransform = this.§_-Sz§.inside.transform.colorTransform;
         _loc6_.color = SafeGlobal.colour_hex[this.colour];
         _loc8_;
         _loc8_;
         this.§_-Sz§.inside.transform.colorTransform = _loc6_;
         _loc8_;
         addChild(this.§_-Sz§);
         var _loc7_:Rectangle = this.§_-Sz§.getBounds(this);
         this.§_-Sz§.y = 0 - _loc7_.y;
         this.§_-Sz§.x = 3 - _loc7_.x;
         if(this.helmet == 8)
         {
            this.§_-Sz§.x = this.§_-Sz§.x - 5;
            _loc9_;
            _loc9_;
         }
         this.§_-Sz§.visible = true;
         this.§_-An§.gotoAndStop(this.helmet + 1);
      }
      
      public function §_-JY§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-Gu§.action_text.alpha = 0.5;
      }
      
      public function §_-SZ§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-Gu§.action_text.alpha = 1;
      }
      
      public function §_-qL§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         if(TimelineGlobal.player_name == this.user_name)
         {
            _loc3_;
            if(this.§_-gQ§.visible == true)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               this.§_-gQ§.visible = false;
               this.§_-Gu§.visible = true;
               this.name_text.visible = true;
            }
            else
            {
               this.§_-gQ§.visible = true;
               this.§_-Gu§.visible = false;
               this.name_text.visible = false;
               _loc2_;
            }
         }
         else
         {
            _loc2_;
            if(this.§_-Fq§.visible == true)
            {
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               this.§_-Fq§.visible = false;
               _loc2_;
               _loc2_;
               this.§_-Gu§.visible = true;
               this.name_text.visible = true;
            }
            else
            {
               this.§_-Fq§.visible = true;
               this.§_-Gu§.visible = false;
               this.name_text.visible = false;
            }
         }
      }
      
      public function §_-zg§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         if(TimelineGlobal.player_name == this.user_name)
         {
            _loc2_;
            _loc2_;
            _loc3_;
            if(this.§_-gQ§ != null)
            {
               this.§_-gQ§.visible = false;
            }
         }
         else
         {
            this.§_-Fq§.visible = false;
            _loc2_;
         }
         this.§_-NC§.visible = true;
         this.name_text.visible = true;
         if(TimelineGlobal.player_name == this.user_name)
         {
            _loc2_;
            _loc2_;
            _loc2_;
            _loc3_;
            if(this.team_pos == -1)
            {
               this.§_-Gu§.visible = true;
            }
            else if(this.team_pos == 0)
            {
               this.§_-Gu§.visible = true;
            }
            else
            {
               this.§_-Gu§.visible = false;
               _loc3_;
               _loc3_;
            }
            
         }
         else
         {
            this.§_-Gu§.visible = true;
         }
      }
      
      private function §_-I3§() : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         var _loc2_:MovieClip = null;
         var _loc3_:ColorTransform = null;
         var _loc1_:* = 0;
         while(_loc1_ < SafeGlobal.coloursUnlocked.length)
         {
            _loc5_;
            _loc5_;
            _loc2_ = this.§_-gQ§.getChildByName("colour_" + (_loc1_ + 1)) as MovieClip;
            _loc5_;
            if(_loc2_ != null)
            {
               _loc5_;
               if(SafeGlobal.coloursUnlocked[_loc1_])
               {
                  _loc5_;
                  _loc5_;
                  _loc3_ = _loc2_.transform.colorTransform;
                  _loc3_.color = SafeGlobal.colour_hex[_loc1_];
                  _loc2_.transform.colorTransform = _loc3_;
                  _loc2_.mouseEnabled = true;
                  _loc5_;
                  _loc2_.mouseChildren = false;
                  _loc5_;
                  _loc5_;
                  _loc2_.buttonMode = true;
                  _loc2_.addEventListener(MouseEvent.ROLL_OVER,this.§_-O1§,false,0,true);
                  _loc2_.addEventListener(MouseEvent.ROLL_OUT,this.§_-RC§,false,0,true);
                  _loc2_.addEventListener(MouseEvent.CLICK,this.§_-9k§,false,0,true);
               }
               else
               {
                  _loc2_.visible = false;
                  _loc4_;
                  _loc4_;
               }
            }
            _loc1_++;
         }
      }
      
      public function §_-O1§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         _loc3_;
         _loc3_;
         this.§_-gQ§.§_-kB§.x = param1.currentTarget.x;
         _loc3_;
         _loc3_;
         this.§_-gQ§.§_-kB§.y = param1.currentTarget.y;
         _loc2_;
         this.§_-gQ§.§_-kB§.visible = true;
      }
      
      public function §_-RC§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-gQ§.§_-kB§.visible = false;
      }
      
      public function §_-9k§(param1:MouseEvent) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = parseInt(param1.currentTarget.name.slice(7)) - 1;
         _loc3_;
         Global.lobby_client.changeGameColour(_loc2_);
         _loc4_;
         _loc4_;
         this.§_-gQ§.visible = false;
         _loc3_;
         this.§_-Gu§.visible = true;
         _loc4_;
         this.§_-NC§.visible = true;
         _loc4_;
         _loc4_;
         this.name_text.visible = true;
      }
   }
}
