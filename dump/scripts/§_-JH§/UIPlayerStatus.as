package §_-JH§
{
   import flash.display.MovieClip;
   import fl.transitions.Tween;
   import flash.text.TextFormat;
   import fl.transitions.TweenEvent;
   import flash.geom.ColorTransform;
   import fl.transitions.easing.*;
   
   public class UIPlayerStatus extends MovieClip
   {
      
      public function UIPlayerStatus(param1:int)
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         super();
         _loc2_;
         this.teamID = param1;
         _loc3_;
         _loc3_;
         this.moveTo(param1);
      }
      
      public var playername:§_-sl§;
      
      public var bar:MovieClip;
      
      public var teamID:int = -1;
      
      public var §_-0T§:int = 0;
      
      public var health:int = 0;
      
      public var §_-DM§:String = "";
      
      public var col:uint;
      
      public var §_-T8§:Boolean = false;
      
      public var §_-Wd§:Tween;
      
      public var §_-B9§:Tween;
      
      public var §_-TP§:Tween;
      
      public function moveTo(param1:int) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         x = 12 + 164 * param1;
      }
      
      public function setName(param1:String) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         this.§_-DM§ = param1;
         var _loc2_:TextFormat = new TextFormat();
         _loc2_.letterSpacing = -2;
         _loc4_;
         _loc4_;
         if(param1.length == 16)
         {
            _loc4_;
            _loc2_.size = 19;
            _loc3_;
            this.playername.username.defaultTextFormat = _loc2_;
            _loc3_;
            _loc3_;
            this.playername.§_-7Z§.defaultTextFormat = _loc2_;
            this.playername.username.y = -16;
            _loc4_;
            this.playername.§_-7Z§.y = -13;
         }
         else
         {
            _loc3_;
            _loc3_;
            if(param1.length == 15)
            {
               _loc2_.size = 20;
               _loc3_;
               _loc3_;
               this.playername.username.defaultTextFormat = _loc2_;
               _loc4_;
               this.playername.§_-7Z§.defaultTextFormat = _loc2_;
               _loc3_;
               _loc3_;
               this.playername.username.y = -16;
               _loc4_;
               this.playername.§_-7Z§.y = -14;
            }
            else
            {
               _loc3_;
               _loc3_;
               if(param1.length == 14)
               {
                  _loc2_.size = 21;
                  _loc3_;
                  this.playername.username.defaultTextFormat = _loc2_;
                  this.playername.§_-7Z§.defaultTextFormat = _loc2_;
                  _loc3_;
                  _loc3_;
                  this.playername.username.y = -17;
                  this.playername.§_-7Z§.y = -15;
                  _loc4_;
               }
               else
               {
                  _loc3_;
                  if(param1.length == 13)
                  {
                     _loc2_.size = 22;
                     _loc3_;
                     _loc3_;
                     this.playername.username.defaultTextFormat = _loc2_;
                     _loc3_;
                     this.playername.§_-7Z§.defaultTextFormat = _loc2_;
                     _loc3_;
                     this.playername.username.y = -18;
                     _loc3_;
                     this.playername.§_-7Z§.y = -16;
                  }
                  else if(param1.length == 12)
                  {
                     _loc2_.size = 23;
                     _loc3_;
                     this.playername.username.defaultTextFormat = _loc2_;
                     this.playername.§_-7Z§.defaultTextFormat = _loc2_;
                     _loc3_;
                     _loc3_;
                     this.playername.username.y = -19;
                     this.playername.§_-7Z§.y = -17;
                     _loc4_;
                     _loc4_;
                  }
                  else
                  {
                     _loc2_.size = 24;
                     this.playername.username.defaultTextFormat = _loc2_;
                     this.playername.§_-7Z§.defaultTextFormat = _loc2_;
                     this.playername.username.y = -20;
                     _loc3_;
                     this.playername.§_-7Z§.y = -18;
                  }
                  
               }
            }
         }
         _loc3_;
         this.playername.username.text = this.§_-DM§;
         this.playername.§_-7Z§.text = this.§_-DM§;
      }
      
      public function makeTextBig() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-T8§ = true;
         _loc2_;
         _loc1_;
         _loc1_;
         this.playername.scaleX = 1.2;
         _loc1_;
         _loc1_;
         this.playername.scaleY = 1.2;
         _loc1_;
         this.§_-o0§();
      }
      
      public function §_-P1§(param1:TweenEvent) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-Wd§ = new Tween(this.playername,"scaleX",null,1.2,1,20,false);
         _loc2_;
         _loc2_;
         this.§_-Wd§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-Gh§,false,0,true);
      }
      
      public function §_-3M§(param1:TweenEvent) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-B9§ = new Tween(this.playername,"scaleY",null,1.2,1,20,false);
         _loc2_;
         _loc2_;
         this.§_-B9§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-Vz§,false,0,true);
      }
      
      public function §_-9z§(param1:TweenEvent) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.§_-TP§ = new Tween(this.playername,"alpha",null,0.5,1,20,false);
         _loc2_;
         this.§_-TP§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-o0§,false,0,true);
      }
      
      public function §_-Gh§(param1:TweenEvent = null) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(this.§_-T8§)
         {
            _loc3_;
            _loc3_;
            this.§_-Wd§ = new Tween(this.playername,"scaleX",null,1,1.2,20,false);
            _loc3_;
            this.§_-Wd§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-P1§,false,0,true);
         }
      }
      
      public function §_-Vz§(param1:TweenEvent = null) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(this.§_-T8§)
         {
            _loc3_;
            this.§_-B9§ = new Tween(this.playername,"scaleY",null,1,1.2,20,false);
            _loc3_;
            _loc3_;
            this.§_-B9§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-3M§,false,0,true);
         }
      }
      
      public function §_-o0§(param1:TweenEvent = null) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(this.§_-T8§)
         {
            _loc2_;
            this.§_-TP§ = new Tween(this.playername,"alpha",null,1,0.5,20,false);
            _loc2_;
            _loc2_;
            this.§_-TP§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-9z§,false,0,true);
         }
      }
      
      public function makeTextNormal() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.playername.scaleX = this.playername.scaleY = 1;
         _loc2_;
         this.§_-Wd§ = null;
         _loc2_;
         this.§_-B9§ = null;
         _loc3_;
         this.§_-T8§ = false;
      }
      
      public function setColour(param1:uint) : *
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         this.col = param1;
         var _loc2_:ColorTransform = new ColorTransform();
         _loc4_;
         _loc2_.color = param1;
         _loc3_;
         this.bar.bar.transform.colorTransform = _loc2_;
         _loc4_;
         _loc4_;
         this.bar.backbar.transform.colorTransform = _loc2_;
         _loc3_;
         _loc3_;
         this.bar.backbar.alpha = 0.5;
         _loc3_;
         _loc3_;
         this.playername.username.textColor = param1;
      }
      
      public function setMaxHealth(param1:int) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(param1 > this.§_-0T§)
         {
            _loc2_;
            this.§_-0T§ = param1;
            _loc3_;
            _loc3_;
            this.§_-wA§();
         }
      }
      
      public function setHealth(param1:int) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.health = param1;
         _loc3_;
         _loc3_;
         this.§_-wA§();
      }
      
      public function §_-wA§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         var _loc1_:Number = this.health / this.§_-0T§;
         _loc2_;
         this.bar.bar.scaleX = _loc1_;
         _loc3_;
         _loc3_;
         this.bar.line.x = Math.ceil(this.bar.bar.width);
         _loc3_;
         if(this.bar.bar.scaleX < 1)
         {
            _loc3_;
            this.bar.line.visible = true;
            _loc3_;
            _loc3_;
         }
         else
         {
            this.bar.line.visible = false;
         }
      }
      
      public function hideBar() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.bar.alpha = 0;
         _loc2_;
         y = -10;
      }
      
      public function destroyMe() : *
      {
      }
   }
}
