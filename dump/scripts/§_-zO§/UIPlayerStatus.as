package §_-zO§
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
         _loc3_;
         _loc3_;
         super();
         _loc2_;
         this.teamID = param1;
         _loc3_;
         this.moveTo(param1);
      }
      
      public var playername:§_-H7§;
      
      public var bar:MovieClip;
      
      public var teamID:int = -1;
      
      public var §_-dl§:int = 0;
      
      public var health:int = 0;
      
      public var §_-0H§:String = "";
      
      public var col:uint;
      
      public var §_-Yr§:Boolean = false;
      
      public var §_-rq§:Tween;
      
      public var §_-DH§:Tween;
      
      public var §_-34§:Tween;
      
      public function moveTo(param1:int) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         x = 12 + 164 * param1;
      }
      
      public function setName(param1:String) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         this.§_-0H§ = param1;
         var _loc2_:TextFormat = new TextFormat();
         _loc3_;
         _loc2_.letterSpacing = -2;
         _loc3_;
         _loc3_;
         _loc3_;
         if(param1.length == 16)
         {
            _loc4_;
            _loc4_;
            _loc2_.size = 19;
            this.playername.username.defaultTextFormat = _loc2_;
            _loc4_;
            _loc4_;
            this.playername.§_-4e§.defaultTextFormat = _loc2_;
            _loc4_;
            _loc4_;
            _loc4_;
            this.playername.username.y = -16;
            _loc3_;
            _loc3_;
            _loc3_;
            this.playername.§_-4e§.y = -13;
         }
         else
         {
            _loc3_;
            if(param1.length == 15)
            {
               _loc2_.size = 20;
               this.playername.username.defaultTextFormat = _loc2_;
               _loc4_;
               this.playername.§_-4e§.defaultTextFormat = _loc2_;
               _loc3_;
               _loc3_;
               _loc3_;
               _loc3_;
               this.playername.username.y = -16;
               _loc3_;
               this.playername.§_-4e§.y = -14;
            }
            else
            {
               _loc4_;
               if(param1.length == 14)
               {
                  _loc3_;
                  _loc3_;
                  _loc2_.size = 21;
                  this.playername.username.defaultTextFormat = _loc2_;
                  this.playername.§_-4e§.defaultTextFormat = _loc2_;
                  _loc3_;
                  this.playername.username.y = -17;
                  _loc3_;
                  this.playername.§_-4e§.y = -15;
                  _loc4_;
                  _loc4_;
               }
               else
               {
                  _loc4_;
                  if(param1.length == 13)
                  {
                     _loc2_.size = 22;
                     _loc3_;
                     _loc3_;
                     this.playername.username.defaultTextFormat = _loc2_;
                     _loc3_;
                     _loc3_;
                     _loc3_;
                     this.playername.§_-4e§.defaultTextFormat = _loc2_;
                     _loc3_;
                     _loc3_;
                     this.playername.username.y = -18;
                     _loc4_;
                     _loc4_;
                     _loc4_;
                     _loc4_;
                     this.playername.§_-4e§.y = -16;
                  }
                  else if(param1.length == 12)
                  {
                     _loc3_;
                     _loc2_.size = 23;
                     _loc4_;
                     _loc4_;
                     this.playername.username.defaultTextFormat = _loc2_;
                     this.playername.§_-4e§.defaultTextFormat = _loc2_;
                     this.playername.username.y = -19;
                     _loc3_;
                     _loc3_;
                     this.playername.§_-4e§.y = -17;
                     _loc4_;
                     _loc4_;
                  }
                  else
                  {
                     _loc2_.size = 24;
                     _loc3_;
                     this.playername.username.defaultTextFormat = _loc2_;
                     this.playername.§_-4e§.defaultTextFormat = _loc2_;
                     this.playername.username.y = -20;
                     _loc3_;
                     _loc3_;
                     this.playername.§_-4e§.y = -18;
                  }
                  
               }
            }
         }
         this.playername.username.text = this.§_-0H§;
         this.playername.§_-4e§.text = this.§_-0H§;
      }
      
      public function makeTextBig() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.§_-Yr§ = true;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         this.playername.scaleX = 1.2;
         _loc2_;
         _loc2_;
         this.playername.scaleY = 1.2;
         _loc2_;
         _loc2_;
         this.§_-fh§();
      }
      
      public function §_-nZ§(param1:TweenEvent) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.§_-rq§ = new Tween(this.playername,"scaleX",null,1.2,1,20,false);
         _loc2_;
         this.§_-rq§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-UF§,false,0,true);
      }
      
      public function §_-d-§(param1:TweenEvent) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         this.§_-DH§ = new Tween(this.playername,"scaleY",null,1.2,1,20,false);
         _loc2_;
         _loc2_;
         this.§_-DH§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-pp§,false,0,true);
      }
      
      public function §_-O5§(param1:TweenEvent) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-34§ = new Tween(this.playername,"alpha",null,0.5,1,20,false);
         _loc3_;
         this.§_-34§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-fh§,false,0,true);
      }
      
      public function §_-UF§(param1:TweenEvent = null) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(this.§_-Yr§)
         {
            _loc3_;
            _loc3_;
            this.§_-rq§ = new Tween(this.playername,"scaleX",null,1,1.2,20,false);
            _loc2_;
            _loc2_;
            this.§_-rq§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-nZ§,false,0,true);
         }
      }
      
      public function §_-pp§(param1:TweenEvent = null) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         _loc3_;
         if(this.§_-Yr§)
         {
            _loc3_;
            this.§_-DH§ = new Tween(this.playername,"scaleY",null,1,1.2,20,false);
            _loc2_;
            this.§_-DH§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-d-§,false,0,true);
         }
      }
      
      public function §_-fh§(param1:TweenEvent = null) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         if(this.§_-Yr§)
         {
            _loc2_;
            _loc2_;
            this.§_-34§ = new Tween(this.playername,"alpha",null,1,0.5,20,false);
            _loc2_;
            this.§_-34§.addEventListener(TweenEvent.MOTION_FINISH,this.§_-O5§,false,0,true);
         }
      }
      
      public function makeTextNormal() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.playername.scaleX = this.playername.scaleY = 1;
         _loc3_;
         _loc3_;
         this.§_-rq§ = null;
         _loc3_;
         this.§_-DH§ = null;
         _loc2_;
         _loc2_;
         this.§_-Yr§ = false;
      }
      
      public function setColour(param1:uint) : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc3_;
         _loc3_;
         this.col = param1;
         var _loc2_:ColorTransform = new ColorTransform();
         _loc4_;
         _loc2_.color = param1;
         _loc4_;
         this.bar.bar.transform.colorTransform = _loc2_;
         _loc4_;
         this.bar.backbar.transform.colorTransform = _loc2_;
         _loc4_;
         _loc4_;
         this.bar.backbar.alpha = 0.5;
         _loc4_;
         this.playername.username.textColor = param1;
      }
      
      public function setMaxHealth(param1:int) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(param1 > this.§_-dl§)
         {
            _loc3_;
            _loc3_;
            this.§_-dl§ = param1;
            _loc3_;
            _loc3_;
            this.§_-ah§();
         }
      }
      
      public function setHealth(param1:int) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.health = param1;
         _loc2_;
         _loc2_;
         this.§_-ah§();
      }
      
      public function §_-ah§() : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         var _loc1_:Number = this.health / this.§_-dl§;
         _loc2_;
         _loc2_;
         this.bar.bar.scaleX = _loc1_;
         _loc3_;
         _loc3_;
         this.bar.line.x = Math.ceil(this.bar.bar.width);
         _loc2_;
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
         _loc1_;
         _loc1_;
         this.bar.alpha = 0;
         _loc2_;
         _loc2_;
         y = -10;
      }
      
      public function destroyMe() : *
      {
      }
   }
}
