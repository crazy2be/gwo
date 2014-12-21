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
   
   public class LP_Credits extends §_-uw§
   {
      
      public function LP_Credits(param1:Sprite)
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         this.xpos = [40,395,40,395,40];
         _loc3_;
         _loc3_;
         this.ypos = [250,250,360,360,465];
         _loc3_;
         _loc3_;
         this.§_-DK§ = [false,false,false,false,false];
         this.colours = [16711680,16711833,583924,3793664,16763904];
         this.helmets = [0,0,0,0,0];
         _loc3_;
         _loc3_;
         super(param1);
         var _loc2_:Array = [this.§_-F7§,this.§_-iY§,this.§_-uW§,this.§_-0J§,this.§_-Nl§];
         _loc3_;
         _loc3_;
         this.§_-mE§ = new Array();
         _loc3_;
         this.§_-mE§ = this.§_-7b§(_loc2_);
         _loc3_;
         this.§_-xN§();
         _loc3_;
         _loc3_;
         this.§_-VV§();
      }
      
      public var §_-Fg§:MovieClip;
      
      public var §_-0Z§:MovieClip;
      
      public var §_-LE§:MovieClip;
      
      public var §_-6L§:MovieClip;
      
      public var §_-IL§:MovieClip;
      
      private var units:Array;
      
      private var xpos:Array;
      
      private var ypos:Array;
      
      private var §_-DK§:Array;
      
      private var colours:Array;
      
      private var helmets:Array;
      
      private var §_-F7§:int = 0;
      
      private var §_-iY§:int = 1;
      
      private var §_-uW§:int = 2;
      
      private var §_-0J§:int = 3;
      
      private var §_-Nl§:int = 4;
      
      private var §_-mE§:Array;
      
      private var §_-hY§:int = 0;
      
      private var §_-c4§:Timer;
      
      private var §_-z7§:int = 5000;
      
      private var §_-3Z§:int = 0;
      
      private var §_-7R§:int = 1;
      
      private var §_-Q3§:int = 2;
      
      public function update() : void
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         if(!(this.§_-DK§[0] == true && this.§_-DK§[1] == true && this.§_-DK§[2] == true && this.§_-DK§[3] == true && this.§_-DK§[4] == true))
         {
            this.§_-c4§ = new Timer(this.§_-z7§,1);
            _loc1_;
            this.§_-c4§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-fG§,false,0,true);
            this.§_-c4§.start();
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
         _loc2_;
         Global.lobby_display.lobby_menu.§_-pk§();
      }
      
      public function cleanUp() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         if(this.§_-c4§ != null)
         {
            _loc2_;
            _loc2_;
            this.§_-c4§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§_-fG§);
            _loc3_;
            this.§_-c4§ = null;
            _loc2_;
            _loc2_;
         }
         removeEventListener(Event.ENTER_FRAME,this.§_-CY§);
         var _loc1_:* = 0;
         while(_loc1_ < this.units.length)
         {
            _loc3_;
            _loc2_;
            _loc2_;
            if(this.units[_loc1_].hasEventListener(MouseEvent.CLICK))
            {
               _loc2_;
               _loc3_;
               _loc3_;
               _loc2_;
               this.units[_loc1_].removeEventListener(MouseEvent.CLICK,this.§_-JY§);
               _loc2_;
               this.units[_loc1_].buttonMode = false;
               _loc3_;
               this.§_-q0§(this.units[_loc1_],this.helmets[_loc1_],this.colours[_loc1_],this.§_-3Z§);
               _loc3_;
            }
            _loc1_++;
            _loc2_;
         }
      }
      
      private function §_-xN§() : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         this.units = new Array();
         var _loc1_:* = 0;
         while(_loc1_ < 5)
         {
            _loc3_;
            _loc3_;
            this.units.push(new Sprite());
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            this.units[this.units.length - 1].x = this.xpos[_loc1_];
            _loc3_;
            _loc3_;
            _loc2_;
            _loc2_;
            _loc2_;
            _loc2_;
            this.units[this.units.length - 1].y = this.ypos[_loc1_];
            _loc3_;
            _loc3_;
            this.§_-q0§(this.units[this.units.length - 1],this.helmets[_loc1_],this.colours[_loc1_],this.§_-3Z§);
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            this.units[this.units.length - 1].mouseEnabled = true;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            _loc3_;
            this.units[this.units.length - 1].mouseChildren = false;
            _loc3_;
            _loc3_;
            this.units[this.units.length - 1].buttonMode = false;
            addChild(this.units[this.units.length - 1]);
            _loc1_++;
         }
      }
      
      private function §_-CY§(param1:Event) : void
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         var _loc4_:* = 0;
         var _loc5_:* = 0;
         var _loc2_:int = this.§_-mE§[this.§_-hY§];
         var _loc3_:Sprite = this.units[_loc2_];
         _loc7_;
         _loc7_;
         if(_loc3_.getChildByName("anim") != null)
         {
            _loc7_;
            _loc6_;
            _loc4_ = (_loc3_.getChildByName("anim") as MovieClip).currentFrame;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc5_ = (_loc3_.getChildByName("anim") as MovieClip).totalFrames;
            if(_loc4_ == _loc5_)
            {
               removeEventListener(Event.ENTER_FRAME,this.§_-CY§);
               this.§_-Qq§();
            }
         }
      }
      
      private function §_-Qq§(param1:Boolean = true) : void
      {
         var _loc3_:* = true;
         var _loc4_:* = false;
         var _loc2_:int = this.§_-mE§[this.§_-hY§];
         _loc3_;
         _loc4_;
         _loc4_;
         if(this.§_-DK§[_loc2_] == true)
         {
            _loc4_;
         }
         else
         {
            this.§_-q0§(this.units[_loc2_],this.helmets[_loc2_],this.colours[_loc2_],this.§_-3Z§);
         }
         _loc4_;
         _loc4_;
         _loc3_;
         this.units[_loc2_].removeEventListener(MouseEvent.CLICK,this.§_-JY§);
         _loc3_;
         _loc3_;
         this.units[_loc2_].buttonMode = false;
         if(param1)
         {
            _loc4_;
            this.§_-c4§ = new Timer(this.§_-z7§,1);
            _loc4_;
            this.§_-c4§.addEventListener(TimerEvent.TIMER_COMPLETE,this.§_-fG§,false,0,true);
            _loc4_;
            _loc4_;
            this.§_-c4§.start();
         }
      }
      
      private function §_-fG§(param1:TimerEvent) : void
      {
         var _loc6_:* = true;
         var _loc7_:* = false;
         var _loc2_:* = false;
         var _loc3_:* = 0;
         _loc6_;
         if(this.§_-c4§)
         {
            this.§_-c4§.removeEventListener(TimerEvent.TIMER_COMPLETE,this.§_-fG§);
            _loc7_;
            _loc7_;
            this.§_-c4§ = null;
         }
         _loc6_;
         _loc6_;
         _loc6_;
         _loc6_;
         _loc7_;
         _loc7_;
         _loc6_;
         _loc6_;
         if(this.§_-DK§[0] == true && this.§_-DK§[1] == true && this.§_-DK§[2] == true && this.§_-DK§[3] == true && this.§_-DK§[4] == true)
         {
            _loc6_;
            _loc6_;
         }
         else
         {
            _loc2_ = false;
            while(true)
            {
               _loc6_;
               _loc6_;
               if(_loc2_)
               {
                  break;
               }
               _loc6_;
               _loc6_;
               _loc7_;
               _loc7_;
               this.§_-hY§++;
               _loc6_;
               _loc6_;
               if(this.§_-hY§ >= this.§_-mE§.length)
               {
                  _loc7_;
                  this.§_-hY§ = 0;
               }
               _loc6_;
               _loc6_;
               _loc7_;
               _loc3_ = this.§_-mE§[this.§_-hY§];
               _loc6_;
               _loc6_;
               _loc7_;
               _loc7_;
               if(this.§_-DK§[_loc3_] == true)
               {
                  _loc7_;
               }
               else
               {
                  this.§_-q0§(this.units[_loc3_],this.helmets[_loc3_],this.colours[_loc3_],this.§_-7R§);
                  _loc6_;
                  _loc7_;
                  _loc7_;
                  this.units[_loc3_].addEventListener(MouseEvent.CLICK,this.§_-JY§,false,0,true);
                  this.units[_loc3_].buttonMode = true;
                  addEventListener(Event.ENTER_FRAME,this.§_-CY§,false,0,true);
                  _loc7_;
                  _loc7_;
                  _loc2_ = true;
                  _loc6_;
               }
            }
         }
      }
      
      private function §_-JY§(param1:MouseEvent) : void
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         _loc4_;
         _loc4_;
         removeEventListener(Event.ENTER_FRAME,this.§_-CY§);
         var _loc2_:* = 0;
         while(_loc2_ < this.units.length)
         {
            if(this.units[_loc2_] == param1.currentTarget)
            {
               this.§_-q0§(this.units[_loc2_],this.helmets[_loc2_],this.colours[_loc2_],this.§_-Q3§);
               _loc3_;
               this.§_-DK§[_loc2_] = true;
               _loc4_;
            }
            _loc2_++;
            _loc3_;
         }
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         _loc3_;
         _loc3_;
         _loc4_;
         _loc4_;
         if(this.§_-DK§[0] == true && this.§_-DK§[1] == true && this.§_-DK§[2] == true && this.§_-DK§[3] == true && this.§_-DK§[4] == true)
         {
            Global.lobby_client.saveCreditsAction();
            this.§_-Qq§(false);
            _loc3_;
            _loc3_;
         }
         else
         {
            this.§_-Qq§(true);
         }
      }
      
      private function §_-q0§(param1:Sprite, param2:int, param3:Number, param4:int) : void
      {
         var _loc15_:* = false;
         var _loc16_:* = true;
         var _loc5_:MovieClip = null;
         var _loc14_:* = 0;
         _loc15_;
         _loc15_;
         if(param1.numChildren > 0)
         {
            while(param1.numChildren > 0)
            {
               param1.removeChildAt(0);
               _loc15_;
               _loc15_;
            }
            _loc16_;
         }
         _loc15_;
         _loc15_;
         _loc16_;
         if(param4 == this.§_-3Z§)
         {
            _loc16_;
            _loc16_;
            _loc5_ = new §_-w5§();
         }
         else
         {
            _loc16_;
            _loc15_;
            if(param4 == this.§_-7R§)
            {
               _loc15_;
               _loc15_;
               _loc5_ = new §_-uF§();
            }
            else if(param4 == this.§_-Q3§)
            {
               _loc5_ = new §_-34§();
            }
            
         }
         var _loc6_:Class = getDefinitionByName("HeadClip" + param2) as Class;
         var _loc7_:MovieClip = new _loc6_() as MovieClip;
         _loc15_;
         _loc15_;
         _loc5_.head.addChild(_loc7_);
         _loc15_;
         if(_loc5_.body is §_-7w§)
         {
            _loc6_ = getDefinitionByName("BodyClip1") as Class;
         }
         else
         {
            _loc6_ = getDefinitionByName("BodyClipNew1") as Class;
         }
         var _loc8_:MovieClip = new _loc6_() as MovieClip;
         _loc15_;
         _loc15_;
         _loc5_.body.addChild(_loc8_);
         _loc6_ = getDefinitionByName("HandClip1") as Class;
         var _loc9_:MovieClip = new _loc6_() as MovieClip;
         _loc16_;
         _loc5_.righthand.addChild(_loc9_);
         var _loc10_:MovieClip = new _loc6_() as MovieClip;
         _loc15_;
         _loc15_;
         _loc5_.lefthand.addChild(_loc10_);
         _loc6_ = getDefinitionByName("FootClip1") as Class;
         var _loc11_:MovieClip = new _loc6_() as MovieClip;
         _loc16_;
         _loc16_;
         _loc5_.rightfoot.addChild(_loc11_);
         var _loc12_:MovieClip = new _loc6_() as MovieClip;
         _loc15_;
         _loc15_;
         _loc5_.leftfoot.addChild(_loc12_);
         var _loc13_:ColorTransform = new ColorTransform();
         _loc13_.color = param3;
         _loc15_;
         _loc7_.inside.transform.colorTransform = _loc13_;
         _loc8_.inside.transform.colorTransform = _loc13_;
         _loc10_.inside.transform.colorTransform = _loc13_;
         _loc16_;
         _loc16_;
         _loc12_.inside.transform.colorTransform = _loc13_;
         _loc9_.inside.transform.colorTransform = _loc13_;
         _loc16_;
         _loc11_.inside.transform.colorTransform = _loc13_;
         _loc5_.scaleX = 1.8;
         _loc5_.scaleY = 1.8;
         _loc16_;
         _loc16_;
         _loc16_;
         _loc16_;
         if(param4 == this.§_-3Z§)
         {
            _loc16_;
            _loc15_;
            _loc14_ = this.§_-Cq§(1,_loc5_.totalFrames);
            _loc15_;
            _loc5_.gotoAndPlay(_loc14_);
         }
         _loc5_.name = "anim";
         _loc16_;
         param1.addChild(_loc5_);
      }
      
      private function §_-Cq§(param1:int, param2:int) : int
      {
         var _loc3_:int = Math.floor(param1 + Math.random() * (param2 - param1 + 1));
         return _loc3_;
      }
      
      private function §_-VV§() : void
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc1_:Sprite = new Sprite();
         _loc6_;
         _loc1_.graphics.beginFill(16711680,0);
         _loc5_;
         _loc5_;
         _loc1_.graphics.drawRect(0,0,336,42);
         _loc1_.graphics.endFill();
         _loc5_;
         this.§_-IL§.addChild(_loc1_);
         this.§_-IL§.mouseEnabled = true;
         _loc5_;
         this.§_-IL§.mouseChildren = false;
         this.§_-IL§.buttonMode = true;
         this.§_-IL§.addEventListener(MouseEvent.ROLL_OVER,this.§_-mm§,false,0,true);
         this.§_-IL§.addEventListener(MouseEvent.ROLL_OUT,this.§ if§,false,0,true);
         this.§_-IL§.addEventListener(MouseEvent.CLICK,this.§_-93§,false,0,true);
         _loc6_;
         this.§_-Fg§.addChild(_loc1_);
         _loc5_;
         _loc5_;
         this.§_-Fg§.mouseEnabled = true;
         this.§_-Fg§.mouseChildren = false;
         this.§_-Fg§.buttonMode = true;
         this.§_-Fg§.addEventListener(MouseEvent.ROLL_OVER,this.§_-mm§,false,0,true);
         this.§_-Fg§.addEventListener(MouseEvent.ROLL_OUT,this.§ if§,false,0,true);
         _loc6_;
         _loc6_;
         this.§_-Fg§.addEventListener(MouseEvent.CLICK,this.§_-en§,false,0,true);
         var _loc2_:Sprite = new Sprite();
         _loc6_;
         _loc2_.graphics.beginFill(16711680,0);
         _loc2_.graphics.drawRect(0,0,222,23);
         _loc5_;
         _loc5_;
         _loc2_.graphics.endFill();
         this.§_-6L§.addChild(_loc2_);
         this.§_-6L§.mouseEnabled = true;
         this.§_-6L§.mouseChildren = false;
         _loc5_;
         this.§_-6L§.buttonMode = true;
         _loc6_;
         _loc6_;
         this.§_-6L§.addEventListener(MouseEvent.ROLL_OVER,this.§_-mm§,false,0,true);
         this.§_-6L§.addEventListener(MouseEvent.ROLL_OUT,this.§ if§,false,0,true);
         this.§_-6L§.addEventListener(MouseEvent.CLICK,this.§_-yd§,false,0,true);
         var _loc3_:Sprite = new Sprite();
         _loc3_.graphics.beginFill(16711680,0);
         _loc3_.graphics.drawRect(0,0,420,58);
         _loc3_.graphics.endFill();
         this.§_-0Z§.addChild(_loc3_);
         this.§_-0Z§.mouseEnabled = true;
         _loc6_;
         this.§_-0Z§.mouseChildren = false;
         _loc6_;
         this.§_-0Z§.buttonMode = true;
         this.§_-0Z§.addEventListener(MouseEvent.CLICK,this.§_-Fm§,false,0,true);
         var _loc4_:Sprite = new Sprite();
         _loc4_.graphics.beginFill(16711680,0);
         _loc4_.graphics.drawRect(0,0,400,95);
         _loc6_;
         _loc4_.graphics.endFill();
         this.§_-LE§.addChild(_loc4_);
         _loc5_;
         _loc5_;
         this.§_-LE§.mouseEnabled = true;
         this.§_-LE§.mouseChildren = false;
         this.§_-LE§.buttonMode = true;
         this.§_-LE§.addEventListener(MouseEvent.CLICK,this.§_-PK§,false,0,true);
      }
      
      private function §_-mm§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         param1.currentTarget.button_text.textColor = 10066329;
      }
      
      private function § if§(param1:MouseEvent) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         _loc3_;
         param1.currentTarget.button_text.textColor = 0;
      }
      
      private function §_-93§(param1:MouseEvent) : void
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
      
      private function §_-en§(param1:MouseEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         var me:MouseEvent = param1;
         _loc4_;
         _loc4_;
         var url:URLRequest = new URLRequest("http://www.twitter.com/funkypear/");
         try
         {
            navigateToURL(url,"_blank");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §_-Fm§(param1:MouseEvent) : void
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc5_;
         var me:MouseEvent = param1;
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
      
      private function §_-PK§(param1:MouseEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         var me:MouseEvent = param1;
         _loc4_;
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
      
      private function §_-yd§(param1:MouseEvent) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         _loc5_;
         var me:MouseEvent = param1;
         _loc5_;
         var url:URLRequest = new URLRequest("http://www.graviteewarsonline.com/betaplayers.php?ref=gwocredits");
         try
         {
            navigateToURL(url,"_blank");
         }
         catch(e:Error)
         {
         }
      }
      
      private function §_-7b§(param1:Array) : Array
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc2_:Array = new Array();
         while(param1.length > 0)
         {
            _loc2_.push(param1.splice(Math.round(Math.random() * (param1.length - 1)),1));
            _loc4_;
            _loc4_;
         }
         return _loc2_;
      }
   }
}
