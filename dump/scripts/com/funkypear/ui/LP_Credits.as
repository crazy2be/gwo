package com.funkypear.ui
{
   import flash.display.MovieClip;
   import flash.utils.Timer;
   import flash.events.TimerEvent;
   import flash.events.Event;
   import flash.events.MouseEvent;
   import flash.display.Sprite;
   import flash.utils.getDefinitionByName;
   import flash.geom.ColorTransform;
   import flash.net.URLRequest;
   import flash.net.navigateToURL;
   
   public class LP_Credits extends §_-A3§
   {
      
      public function LP_Credits(param1:Sprite)
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         this.xpos = [40,395,40,395,40];
         this.ypos = [250,250,360,360,465];
         this.§_-R6§ = [false,false,false,false,false];
         this.colours = [16711680,16711833,583924,3793664,16763904];
         _loc4_;
         _loc4_;
         this.helmets = [0,0,0,0,0];
         super(param1);
         var _loc2_:Array = [this.§_-4S§,this.§ get§,this.§_-jr§,this.§_-hF§,this.§_-vF§];
         _loc4_;
         this.§_-id§ = new Array();
         _loc3_;
         this.§_-id§ = this.§_-9R§(_loc2_);
         _loc3_;
         _loc3_;
         this.§_-FB§();
         _loc4_;
         this.§_-L0§();
      }
      
      public var §_-ER§:MovieClip;
      
      public var §_-w0§:MovieClip;
      
      public var §_-YF§:MovieClip;
      
      public var §_-fQ§:MovieClip;
      
      public var §_-vS§:MovieClip;
      
      private var units:Array;
      
      private var xpos:Array;
      
      private var ypos:Array;
      
      private var §_-R6§:Array;
      
      private var colours:Array;
      
      private var helmets:Array;
      
      private var §_-4S§:int = 0;
      
      private var § get§:int = 1;
      
      private var §_-jr§:int = 2;
      
      private var §_-hF§:int = 3;
      
      private var §_-vF§:int = 4;
      
      private var §_-id§:Array;
      
      private var §_-MZ§:int = 0;
      
      private var §_-UL§:Timer;
      
      private var §_-uA§:int = 5000;
      
      private var §_-el§:int = 0;
      
      private var §_-1y§:int = 1;
      
      private var §_-en§:int = 2;
      
      public function update() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc1_;
         if(!(this.§_-R6§[0] == true && this.§_-R6§[1] == true && this.§_-R6§[2] == true && this.§_-R6§[3] == true && this.§_-R6§[4] == true))
         {
            this.§_-UL§ = new Timer(this.§_-uA§,1);
            _loc1_;
            this.§_-UL§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-pB§,false,0,true);
            this.§_-UL§.start();
         }
      }
      
      override public function doClose() : void
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         this.cleanUp();
         _loc2_;
         _loc2_;
         tweenOut();
         _loc2_;
         Global.lobby_display.lobby_menu.§_-3-§();
      }
      
      public function cleanUp() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         if(this.§_-UL§ != null)
         {
            _loc3_;
            _loc3_;
            this.§_-UL§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§_-pB§);
            _loc3_;
            _loc3_;
            this.§_-UL§ = null;
            _loc3_;
            _loc3_;
         }
         removeEventListener(Event.ENTER_FRAME,this.§_-td§);
         var _loc1_:* = 0;
         while(_loc1_ < this.units.length)
         {
            _loc2_;
            _loc2_;
            _loc3_;
            if(this.units[_loc1_].hasEventListener(MouseEvent.CLICK))
            {
               _loc3_;
               _loc3_;
               _loc2_;
               _loc2_;
               _loc3_;
               _loc3_;
               this.units[_loc1_].removeEventListener(MouseEvent.CLICK,this.§_-Js§);
               _loc3_;
               _loc3_;
               this.units[_loc1_].buttonMode = false;
               _loc3_;
               this.§_-Lb§(this.units[_loc1_],this.helmets[_loc1_],this.colours[_loc1_],this.§_-el§);
               _loc3_;
               _loc3_;
            }
            _loc1_++;
            _loc3_;
         }
      }
      
      private function §_-FB§() : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         this.units = new Array();
         var _loc1_:* = 0;
         while(_loc1_ < 5)
         {
            _loc3_;
            this.units.push(new Sprite());
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            this.units[this.units.length - 1].x = this.xpos[_loc1_];
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            this.units[this.units.length - 1].y = this.ypos[_loc1_];
            this.§_-Lb§(this.units[this.units.length - 1],this.helmets[_loc1_],this.colours[_loc1_],this.§_-el§);
            _loc2_;
            _loc2_;
            _loc3_;
            _loc3_;
            _loc3_;
            this.units[this.units.length - 1].mouseEnabled = true;
            _loc3_;
            _loc2_;
            _loc2_;
            _loc3_;
            this.units[this.units.length - 1].mouseChildren = false;
            this.units[this.units.length - 1].buttonMode = false;
            addChild(this.units[this.units.length - 1]);
            _loc1_++;
         }
      }
      
      private function §_-td§(param1:Event) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc2_:int = this.§_-id§[this.§_-MZ§];
         var _loc3_:Sprite = this.units[_loc2_];
         if(_loc3_.getChildByName("anim") != null)
         {
            _loc7_;
            _loc6_;
            _loc4_ = (_loc3_.getChildByName("anim") as MovieClip).currentFrame;
            _loc7_;
            _loc6_;
            _loc5_ = (_loc3_.getChildByName("anim") as MovieClip).totalFrames;
            if(_loc4_ == _loc5_)
            {
               _loc7_;
               _loc7_;
               removeEventListener(Event.ENTER_FRAME,this.§_-td§);
               _loc6_;
               this.§_-lx§();
            }
         }
      }
      
      private function §_-lx§(param1:Boolean = true) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this.§_-id§[this.§_-MZ§];
         _loc4_;
         _loc4_;
         if(this.§_-R6§[_loc2_] == true)
         {
            _loc3_;
            _loc3_;
         }
         else
         {
            this.§_-Lb§(this.units[_loc2_],this.helmets[_loc2_],this.colours[_loc2_],this.§_-el§);
         }
         _loc4_;
         _loc4_;
         _loc3_;
         this.units[_loc2_].removeEventListener(MouseEvent.CLICK,this.§_-Js§);
         this.units[_loc2_].buttonMode = false;
         if(param1)
         {
            _loc4_;
            this.§_-UL§ = new Timer(this.§_-uA§,1);
            this.§_-UL§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-pB§,false,0,true);
            _loc4_;
            this.§_-UL§.start();
         }
      }
      
      private function §_-pB§(param1:TimerEvent) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:* = false;
         var _loc3_:* = 0;
         if(this.§_-UL§)
         {
            this.§_-UL§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§_-pB§);
            this.§_-UL§ = null;
            _loc6_;
            _loc6_;
         }
         _loc7_;
         _loc7_;
         _loc7_;
         _loc6_;
         _loc6_;
         _loc6_;
         if(this.§_-R6§[0] == true && this.§_-R6§[1] == true && this.§_-R6§[2] == true && this.§_-R6§[3] == true && this.§_-R6§[4] == true)
         {
            _loc7_;
         }
         else
         {
            _loc2_ = false;
            while(true)
            {
               _loc6_;
               if(_loc2_)
               {
                  break;
               }
               _loc7_;
               _loc7_;
               this.§_-MZ§++;
               _loc7_;
               if(this.§_-MZ§ >= this.§_-id§.length)
               {
                  _loc6_;
                  _loc6_;
                  this.§_-MZ§ = 0;
                  _loc7_;
                  _loc7_;
               }
               _loc6_;
               _loc6_;
               _loc3_ = this.§_-id§[this.§_-MZ§];
               _loc6_;
               _loc7_;
               _loc7_;
               if(this.§_-R6§[_loc3_] == true)
               {
                  _loc7_;
               }
               else
               {
                  this.§_-Lb§(this.units[_loc3_],this.helmets[_loc3_],this.colours[_loc3_],this.§_-1y§);
                  _loc7_;
                  _loc7_;
                  _loc6_;
                  _loc6_;
                  _loc7_;
                  this.units[_loc3_].addEventListener(MouseEvent.CLICK,this.§_-Js§,false,0,true);
                  _loc7_;
                  this.units[_loc3_].buttonMode = true;
                  _loc6_;
                  _loc6_;
                  addEventListener(Event.ENTER_FRAME,this.§_-td§,false,0,true);
                  _loc6_;
                  _loc7_;
                  _loc2_ = true;
               }
            }
         }
      }
      
      private function §_-Js§(param1:MouseEvent) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         _loc4_;
         _loc4_;
         removeEventListener(Event.ENTER_FRAME,this.§_-td§);
         var _loc2_:* = 0;
         while(_loc2_ < this.units.length)
         {
            _loc4_;
            _loc3_;
            if(this.units[_loc2_] == param1.currentTarget)
            {
               this.§_-Lb§(this.units[_loc2_],this.helmets[_loc2_],this.colours[_loc2_],this.§_-en§);
               _loc3_;
               this.§_-R6§[_loc2_] = true;
               _loc3_;
            }
            _loc2_++;
         }
         _loc3_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc4_;
         _loc4_;
         if(this.§_-R6§[0] == true && this.§_-R6§[1] == true && this.§_-R6§[2] == true && this.§_-R6§[3] == true && this.§_-R6§[4] == true)
         {
            _loc4_;
            _loc4_;
            Global.lobby_client.saveCreditsAction();
            this.§_-lx§(false);
         }
         else
         {
            this.§_-lx§(true);
         }
      }
      
      private function §_-Lb§(param1:Sprite, param2:int, param3:Number, param4:int) : void
      {
         var _loc15_:* = false;
         var _loc16_:* = true;
         var _loc5_:MovieClip = null;
         var _loc14_:* = 0;
         _loc15_;
         if(param1.numChildren > 0)
         {
            while(param1.numChildren > 0)
            {
               param1.removeChildAt(0);
               _loc15_;
               _loc15_;
            }
            _loc15_;
         }
         _loc16_;
         _loc16_;
         _loc15_;
         _loc15_;
         if(param4 == this.§_-el§)
         {
            _loc16_;
            _loc5_ = new §_-2u§();
         }
         else
         {
            _loc16_;
            _loc16_;
            _loc15_;
            if(param4 == this.§_-1y§)
            {
               _loc16_;
               _loc5_ = new §_-b7§();
            }
            else if(param4 == this.§_-en§)
            {
               _loc5_ = new §_-21§();
            }
            
         }
         var _loc6_:Class = getDefinitionByName("HeadClip" + param2) as Class;
         var _loc7_:MovieClip = new _loc6_() as MovieClip;
         _loc15_;
         _loc15_;
         _loc5_.head.addChild(_loc7_);
         _loc15_;
         if(_loc5_.body is §_-8J§)
         {
            _loc6_ = getDefinitionByName("BodyClip1") as Class;
         }
         else
         {
            _loc6_ = getDefinitionByName("BodyClipNew1") as Class;
         }
         var _loc8_:MovieClip = new _loc6_() as MovieClip;
         _loc15_;
         _loc5_.body.addChild(_loc8_);
         _loc6_ = getDefinitionByName("HandClip1") as Class;
         var _loc9_:MovieClip = new _loc6_() as MovieClip;
         _loc15_;
         _loc5_.righthand.addChild(_loc9_);
         var _loc10_:MovieClip = new _loc6_() as MovieClip;
         _loc16_;
         _loc16_;
         _loc5_.lefthand.addChild(_loc10_);
         _loc6_ = getDefinitionByName("FootClip1") as Class;
         var _loc11_:MovieClip = new _loc6_() as MovieClip;
         _loc16_;
         _loc16_;
         _loc5_.rightfoot.addChild(_loc11_);
         var _loc12_:MovieClip = new _loc6_() as MovieClip;
         _loc15_;
         _loc5_.leftfoot.addChild(_loc12_);
         var _loc13_:ColorTransform = new ColorTransform();
         _loc13_.color = param3;
         _loc7_.inside.transform.colorTransform = _loc13_;
         _loc15_;
         _loc15_;
         _loc8_.inside.transform.colorTransform = _loc13_;
         _loc16_;
         _loc16_;
         _loc10_.inside.transform.colorTransform = _loc13_;
         _loc12_.inside.transform.colorTransform = _loc13_;
         _loc15_;
         _loc15_;
         _loc9_.inside.transform.colorTransform = _loc13_;
         _loc11_.inside.transform.colorTransform = _loc13_;
         _loc16_;
         _loc16_;
         _loc5_.scaleX = 1.8;
         _loc16_;
         _loc16_;
         _loc5_.scaleY = 1.8;
         _loc16_;
         _loc16_;
         if(param4 == this.§_-el§)
         {
            _loc15_;
            _loc14_ = this.§_-Gx§(1,_loc5_.totalFrames);
            _loc16_;
            _loc5_.gotoAndPlay(_loc14_);
            _loc15_;
         }
         _loc5_.name = "anim";
         param1.addChild(_loc5_);
      }
      
      private function §_-Gx§(param1:int, param2:int) : int
      {
         var _loc3_:int = Math.floor(param1 + Math.random() * (param2 - param1 + 1));
         return _loc3_;
      }
      
      private function §_-L0§() : void
      {
         var _loc5_:* = false;
         var _loc6_:* = true;
         var _loc1_:Sprite = new Sprite();
         _loc5_;
         _loc5_;
         _loc1_.graphics.beginFill(16711680,0);
         _loc6_;
         _loc1_.graphics.drawRect(0,0,336,42);
         _loc6_;
         _loc1_.graphics.endFill();
         _loc6_;
         _loc6_;
         this.§_-vS§.addChild(_loc1_);
         this.§_-vS§.mouseEnabled = true;
         this.§_-vS§.mouseChildren = false;
         _loc5_;
         this.§_-vS§.buttonMode = true;
         this.§_-vS§.addEventListener(MouseEvent.ROLL_OVER,this.§_-C8§,false,0,true);
         _loc5_;
         _loc5_;
         this.§_-vS§.addEventListener(MouseEvent.ROLL_OUT,this.§_-H9§,false,0,true);
         _loc6_;
         this.§_-vS§.addEventListener(MouseEvent.CLICK,this.§_-BE§,false,0,true);
         this.§_-ER§.addChild(_loc1_);
         _loc6_;
         _loc6_;
         this.§_-ER§.mouseEnabled = true;
         _loc6_;
         _loc6_;
         this.§_-ER§.mouseChildren = false;
         _loc6_;
         this.§_-ER§.buttonMode = true;
         this.§_-ER§.addEventListener(MouseEvent.ROLL_OVER,this.§_-C8§,false,0,true);
         this.§_-ER§.addEventListener(MouseEvent.ROLL_OUT,this.§_-H9§,false,0,true);
         this.§_-ER§.addEventListener(MouseEvent.CLICK,this.§_-UK§,false,0,true);
         var _loc2_:Sprite = new Sprite();
         _loc2_.graphics.beginFill(16711680,0);
         _loc2_.graphics.drawRect(0,0,222,23);
         _loc5_;
         _loc5_;
         _loc2_.graphics.endFill();
         _loc5_;
         this.§_-fQ§.addChild(_loc2_);
         this.§_-fQ§.mouseEnabled = true;
         _loc6_;
         _loc6_;
         this.§_-fQ§.mouseChildren = false;
         this.§_-fQ§.buttonMode = true;
         this.§_-fQ§.addEventListener(MouseEvent.ROLL_OVER,this.§_-C8§,false,0,true);
         _loc6_;
         _loc6_;
         this.§_-fQ§.addEventListener(MouseEvent.ROLL_OUT,this.§_-H9§,false,0,true);
         this.§_-fQ§.addEventListener(MouseEvent.CLICK,this.§_-cN§,false,0,true);
         var _loc3_:Sprite = new Sprite();
         _loc6_;
         _loc3_.graphics.beginFill(16711680,0);
         _loc6_;
         _loc3_.graphics.drawRect(0,0,420,58);
         _loc5_;
         _loc3_.graphics.endFill();
         this.§_-w0§.addChild(_loc3_);
         this.§_-w0§.mouseEnabled = true;
         this.§_-w0§.mouseChildren = false;
         this.§_-w0§.buttonMode = true;
         this.§_-w0§.addEventListener(MouseEvent.CLICK,this.§_-rS§,false,0,true);
         var _loc4_:Sprite = new Sprite();
         _loc4_.graphics.beginFill(16711680,0);
         _loc4_.graphics.drawRect(0,0,400,95);
         _loc4_.graphics.endFill();
         _loc5_;
         this.§_-YF§.addChild(_loc4_);
         _loc6_;
         _loc6_;
         this.§_-YF§.mouseEnabled = true;
         this.§_-YF§.mouseChildren = false;
         this.§_-YF§.buttonMode = true;
         this.§_-YF§.addEventListener(MouseEvent.CLICK,this.§_-r9§,false,0,true);
      }
      
      private function §_-C8§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         _loc2_;
         param1.currentTarget.button_text.textColor = 10066329;
      }
      
      private function §_-H9§(param1:MouseEvent) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         param1.currentTarget.button_text.textColor = 0;
      }
      
      private function §_-BE§(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         var me:MouseEvent = param1;
         _loc4_;
         _loc4_;
         var url:URLRequest = new URLRequest("http://www.facebook.com/funkypear/");
         try
         {
            navigateToURL(url,"_blank");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §_-UK§(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         var me:MouseEvent = param1;
         _loc5_;
         var url:URLRequest = new URLRequest("http://www.twitter.com/funkypear/");
         try
         {
            navigateToURL(url,"_blank");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §_-rS§(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         var me:MouseEvent = param1;
         _loc5_;
         _loc5_;
         var url:URLRequest = new URLRequest("http://www.funkypear.com?ref=gwocredits");
         try
         {
            navigateToURL(url,"_blank");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §_-r9§(param1:MouseEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         var me:MouseEvent = param1;
         _loc4_;
         var url:URLRequest = new URLRequest("http://www.graviteewarsonline.com?ref=gwocredits");
         try
         {
            navigateToURL(url,"_blank");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §_-cN§(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         var me:MouseEvent = param1;
         _loc4_;
         var url:URLRequest = new URLRequest("http://www.graviteewarsonline.com/betaplayers.php?ref=gwocredits");
         try
         {
            navigateToURL(url,"_blank");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §_-9R§(param1:Array) : Array
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:Array = new Array();
         while(param1.length > 0)
         {
            _loc2_.push(param1.splice(Math.round(Math.random() * (param1.length - 1)),1));
            _loc3_;
         }
         return _loc2_;
      }
   }
}
