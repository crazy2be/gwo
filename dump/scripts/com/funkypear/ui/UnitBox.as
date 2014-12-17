package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.display.MovieClip;
   import §_-ZN§.ButtonBuyUnit;
   import §_-ZN§.ButtonRandomName;
   import §_-ZN§.ButtonSellUnit;
   import §_-WX§.§_-Xd§;
   import §_-c-§.§_-IM§;
   import flash.events.Event;
   import flash.utils.getDefinitionByName;
   import flash.geom.ColorTransform;
   
   public class UnitBox extends Sprite
   {
      
      public function UnitBox()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         super();
         _loc1_;
         _loc1_;
         this.id = int(name.substr(4,1));
         this.§_-LK§.mouseEnabled = false;
         this.§_-J4§.mouseEnabled = false;
         _loc2_;
         this.§_-np§.mouseEnabled = false;
         this.§_-48§.mouseEnabled = false;
         _loc2_;
         _loc2_;
         this.§_-st§.mouseEnabled = false;
         this.§_-kv§.mouseEnabled = false;
      }
      
      public var §_-np§:TextField;
      
      public var §_-LK§:TextField;
      
      public var §_-tj§:MovieClip;
      
      public var §_-Sg§:ButtonBuyUnit;
      
      public var §_-J7§:ButtonRandomName;
      
      public var §_-kv§:TextField;
      
      public var §_-48§:TextField;
      
      public var §_-J4§:TextField;
      
      public var §_-mY§:MovieClip;
      
      public var §_-iq§:§_-G-§;
      
      public var unit_name:TextField;
      
      public var bg:MovieClip;
      
      public var §_-st§:TextField;
      
      public var §_-VP§:ButtonSellUnit;
      
      public var §_-04§:§_-G-§;
      
      public var id:int;
      
      public var health:int;
      
      public var accuracy:int;
      
      public var active:Boolean;
      
      public var §_-pr§:§_-Xd§;
      
      private var §_-2o§:int;
      
      private var §_-UT§:int;
      
      private var §_-Jp§:Number = 10;
      
      private var §_-dd§:Number = 6.25;
      
      private var §_-p8§:int = 0;
      
      private var §_-gR§:int = 0;
      
      private var §_-mr§:int = 0;
      
      public function §_-No§(param1:§_-Xd§) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         this.§_-pr§ = param1;
         if(!this.§_-pr§.active)
         {
            this.unit_name.mouseEnabled = false;
            _loc4_;
            this.unit_name.text = "";
            _loc4_;
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-J7§.visible = false;
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-J7§.mouseEnabled = false;
            _loc5_;
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            this.§_-Sg§.visible = true;
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-Sg§.mouseEnabled = true;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            _loc5_;
            this.§_-VP§.visible = false;
            this.§_-VP§.mouseEnabled = false;
            this.§_-LK§.visible = false;
            this.§_-J4§.visible = false;
            this.§_-np§.visible = false;
            this.§_-48§.visible = false;
            _loc5_;
            this.§_-st§.visible = false;
            this.§_-kv§.visible = false;
            this.§_-iq§.visible = false;
            this.§_-04§.visible = false;
            this.bg.visible = false;
            _loc4_;
            _loc4_;
            this.§_-tj§.visible = false;
            _loc4_;
            this.§_-mY§.visible = false;
            _loc4_;
            _loc4_;
         }
         else
         {
            this.unit_name.mouseEnabled = true;
            this.§_-dv§();
            _loc5_;
            _loc5_;
            this.§_-tj§.visible = true;
            _loc4_;
            this.bg.visible = true;
            _loc4_;
            _loc5_;
            _loc4_;
            _loc4_;
            this.§_-J7§.visible = true;
            _loc5_;
            this.§_-J7§.mouseEnabled = true;
            _loc4_;
            _loc5_;
            _loc5_;
            _loc5_;
            this.§_-Sg§.visible = false;
            _loc4_;
            _loc4_;
            this.§_-Sg§.mouseEnabled = false;
            _loc4_;
            _loc2_ = 0;
            _loc5_;
            _loc3_ = 0;
            while(true)
            {
               _loc5_;
               _loc5_;
               _loc5_;
               _loc5_;
               if(_loc3_ >= 6)
               {
                  break;
               }
               if(Global.unitDetails[_loc3_].active)
               {
                  _loc2_++;
               }
               _loc3_++;
            }
            _loc4_;
            _loc4_;
            _loc5_;
            _loc4_;
            _loc4_;
            if(this.id <= 4 && _loc2_ <= 4)
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               this.§_-VP§.visible = false;
               _loc4_;
            }
            else
            {
               _loc5_;
               _loc5_;
               _loc5_;
               this.§_-VP§.visible = true;
               this.§_-VP§.mouseEnabled = true;
               _loc4_;
            }
            this.§_-LK§.visible = true;
            this.§_-J4§.visible = true;
            _loc4_;
            this.§_-np§.visible = true;
            _loc5_;
            this.§_-48§.visible = true;
            this.§_-st§.visible = true;
            this.§_-kv§.visible = true;
            _loc5_;
            this.§_-iq§.visible = true;
            _loc5_;
            this.§_-04§.visible = true;
            _loc4_;
            _loc4_;
            this.§_-mY§.visible = true;
            _loc4_;
            this.unit_name.text = this.§_-pr§.name;
            _loc4_;
            this.health = this.§_-pr§.health;
            _loc5_;
            _loc5_;
            this.accuracy = this.§_-pr§.accuracy;
            this.§_-np§.text = String(40 + this.health * this.§_-Jp§);
            this.§_-48§.text = String(Math.round(this.accuracy * this.§_-dd§));
            _loc5_;
            _loc5_;
            this.§_-iq§.init(253,16,this.health,this.§_-0-1§);
            _loc5_;
            _loc5_;
            this.§_-04§.init(253,16,this.accuracy,this.§_-5j§);
            _loc5_;
            _loc5_;
            _loc4_;
            this.§_-iq§.addEventListener(§_-IM§.ON_FINISH_DRAG,this.§_-A9§,false,0,true);
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            this.§_-04§.addEventListener(§_-IM§.ON_FINISH_DRAG,this.§_-jp§,false,0,true);
            _loc5_;
            this.§_-iq§.addEventListener(§_-IM§.ON_VALUE_CHANGED,this.§_-JO§,false,0,true);
            this.§_-04§.addEventListener(§_-IM§.ON_VALUE_CHANGED,this.§_-Q§,false,0,true);
         }
      }
      
      public function §_-7E§(param1:int) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-gR§ = param1;
         _loc2_;
         this.§_-mr§ = this.§_-Gx§(1,33);
         _loc3_;
         if(!this.§_-tj§.hasEventListener(Event.ENTER_FRAME))
         {
            _loc2_;
            this.§_-tj§.addEventListener(Event.ENTER_FRAME,this.§_-r3§,false,0,true);
         }
      }
      
      public function §_-r3§(param1:Event) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         _loc4_;
         if(this.§_-mr§ > 0)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-mr§--;
            _loc5_;
            _loc4_;
            _loc4_;
            if(this.§_-mr§ == 0)
            {
               _loc5_;
               _loc5_;
               this.§_-dv§(this.§_-gR§,true);
               _loc4_;
               _loc4_;
            }
         }
         else
         {
            _loc4_;
            _loc5_;
            _loc5_;
            this.§_-p8§++;
            _loc5_;
            if(this.§_-p8§ == 165)
            {
               _loc5_;
               _loc5_;
               this.§_-tj§.removeEventListener(Event.ENTER_FRAME,this.§_-r3§);
               this.§_-dv§();
            }
         }
      }
      
      public function §_-dv§(param1:int = -1, param2:Boolean = false) : void
      {
         var _loc22_:* = false;
         var _loc23_:* = true;
         var _loc9_:MovieClip = null;
         var _loc18_:* = 0;
         var _loc19_:Class = null;
         var _loc20_:MovieClip = null;
         var _loc21_:MovieClip = null;
         var _loc3_:* = false;
         _loc22_;
         _loc23_;
         _loc22_;
         if(!(param1 == -1) && !(param1 == Global.favourite_helmet.getInt()))
         {
            if(param2)
            {
               _loc3_ = true;
               _loc23_;
            }
            else
            {
               this.§_-7E§(param1);
               _loc23_;
               return;
            }
         }
         if(this.§_-tj§.numChildren > 0)
         {
            while(this.§_-tj§.numChildren > 0)
            {
               this.§_-tj§.removeChildAt(0);
               _loc22_;
               _loc22_;
            }
         }
         _loc22_;
         var _loc4_:int = Global.favourite_helmet.getInt();
         _loc23_;
         _loc23_;
         var _loc5_:int = Global.favourite_helmet.getInt();
         _loc23_;
         if(_loc3_)
         {
            _loc22_;
            _loc23_;
            _loc23_;
            _loc22_;
            _loc4_ = param1;
         }
         var _loc6_:* = 1;
         var _loc7_:* = 1;
         var _loc8_:* = 1;
         _loc22_;
         _loc22_;
         if(_loc3_)
         {
            _loc9_ = new §_-6N§();
            _loc19_ = getDefinitionByName("HeadClip" + _loc5_) as Class;
            _loc20_ = new _loc19_() as MovieClip;
            _loc22_;
            _loc22_;
            _loc9_.newhead.addChild(_loc20_);
         }
         else
         {
            _loc9_ = new §_-2u§();
         }
         var _loc10_:Class = getDefinitionByName("HeadClip" + _loc4_) as Class;
         var _loc11_:MovieClip = new _loc10_() as MovieClip;
         _loc22_;
         _loc9_.head.addChild(_loc11_);
         _loc22_;
         if(_loc9_.body is §_-8J§)
         {
            _loc10_ = getDefinitionByName("BodyClip" + _loc6_) as Class;
         }
         else
         {
            _loc10_ = getDefinitionByName("BodyClipNew" + _loc6_) as Class;
         }
         var _loc12_:MovieClip = new _loc10_() as MovieClip;
         _loc22_;
         _loc9_.body.addChild(_loc12_);
         _loc10_ = getDefinitionByName("HandClip" + _loc7_) as Class;
         var _loc13_:MovieClip = new _loc10_() as MovieClip;
         _loc22_;
         _loc9_.righthand.addChild(_loc13_);
         var _loc14_:MovieClip = new _loc10_() as MovieClip;
         _loc23_;
         _loc23_;
         _loc9_.lefthand.addChild(_loc14_);
         _loc22_;
         if(_loc3_)
         {
            _loc21_ = new _loc10_() as MovieClip;
            _loc22_;
            _loc22_;
            _loc9_.lefthandfront.addChild(_loc21_);
         }
         _loc10_ = getDefinitionByName("FootClip" + _loc8_) as Class;
         var _loc15_:MovieClip = new _loc10_() as MovieClip;
         _loc23_;
         _loc9_.rightfoot.addChild(_loc15_);
         var _loc16_:MovieClip = new _loc10_() as MovieClip;
         _loc23_;
         _loc9_.leftfoot.addChild(_loc16_);
         var _loc17_:ColorTransform = new ColorTransform();
         _loc17_.color = SafeGlobal.colour_hex[Global.favourite_colour.getInt()];
         _loc22_;
         _loc11_.inside.transform.colorTransform = _loc17_;
         _loc22_;
         _loc22_;
         _loc12_.inside.transform.colorTransform = _loc17_;
         _loc14_.inside.transform.colorTransform = _loc17_;
         _loc22_;
         _loc16_.inside.transform.colorTransform = _loc17_;
         _loc13_.inside.transform.colorTransform = _loc17_;
         _loc22_;
         _loc15_.inside.transform.colorTransform = _loc17_;
         _loc22_;
         if(_loc3_)
         {
            _loc23_;
            _loc20_.inside.transform.colorTransform = _loc17_;
            _loc21_.inside.transform.colorTransform = _loc17_;
         }
         _loc9_.scaleX = 1.5;
         _loc9_.scaleY = 1.5;
         _loc22_;
         _loc22_;
         _loc22_;
         _loc22_;
         if(_loc3_)
         {
            _loc23_;
            _loc23_;
         }
         else
         {
            _loc22_;
            _loc22_;
            _loc18_ = this.§_-Gx§(1,_loc9_.totalFrames);
            _loc9_.gotoAndPlay(_loc18_);
         }
         this.§_-tj§.addChild(_loc9_);
         _loc23_;
         if(_loc3_)
         {
            this.§_-p8§ = 0;
            _loc23_;
            if(!this.§_-tj§.hasEventListener(Event.ENTER_FRAME))
            {
               _loc23_;
               this.§_-tj§.addEventListener(Event.ENTER_FRAME,this.§_-r3§,false,0,true);
            }
         }
      }
      
      private function §_-Gx§(param1:int, param2:int) : int
      {
         var _loc3_:int = Math.floor(param1 + Math.random() * (param2 - param1 + 1));
         return _loc3_;
      }
      
      public function §_-0-1§() : int
      {
         return (parent as LP_TeamSetUp).§_-fk§.getInt();
      }
      
      public function §_-5j§() : int
      {
         return (parent as LP_TeamSetUp).§_-fk§.getInt();
      }
      
      public function §_-A9§(param1:§_-IM§) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc3_;
         param1.stopImmediatePropagation();
         _loc2_;
         this.§_-np§.text = String(40 + param1.§_-CH§ * this.§_-Jp§);
         _loc2_;
         (parent as LP_TeamSetUp).updateHealth(this.§_-pr§,param1.§_-CH§);
      }
      
      public function §_-jp§(param1:§_-IM§) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         param1.stopImmediatePropagation();
         _loc2_;
         _loc2_;
         this.§_-48§.text = String(Math.round(param1.§_-CH§ * this.§_-dd§));
         _loc3_;
         (parent as LP_TeamSetUp).§_-NT§(this.§_-pr§,param1.§_-CH§);
      }
      
      public function §_-JO§(param1:§_-IM§) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         this.§_-np§.text = String(40 + param1.§_-CH§ * this.§_-Jp§);
         _loc3_;
         (parent as LP_TeamSetUp).updateHealth(this.§_-pr§,param1.§_-CH§);
      }
      
      public function §_-Q§(param1:§_-IM§) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         this.§_-48§.text = String(Math.round(param1.§_-CH§ * this.§_-dd§));
         _loc3_;
         (parent as LP_TeamSetUp).§_-NT§(this.§_-pr§,param1.§_-CH§);
      }
   }
}
