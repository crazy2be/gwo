package com.funkypear.ui
{
   import flash.display.Sprite;
   import flash.text.TextField;
   import flash.display.MovieClip;
   import §_-bY§.ButtonBuyUnit;
   import §_-bY§.ButtonRandomName;
   import §_-bY§.ButtonSellUnit;
   import §_-bk§.§_-5S§;
   import §_-vO§.§_-07§;
   import flash.events.Event;
   import flash.utils.getDefinitionByName;
   import flash.geom.ColorTransform;
   
   public class UnitBox extends Sprite
   {
      
      public function UnitBox()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
         this.id = int(name.substr(4,1));
         this.§_-G2§.mouseEnabled = false;
         _loc1_;
         _loc1_;
         this.§_-LI§.mouseEnabled = false;
         this.§_-J-§.mouseEnabled = false;
         this.§_-S3§.mouseEnabled = false;
         this.§_-Re§.mouseEnabled = false;
         this.§ each§.mouseEnabled = false;
      }
      
      public var §_-J-§:TextField;
      
      public var §_-G2§:TextField;
      
      public var §_-jx§:MovieClip;
      
      public var §_-ak§:ButtonBuyUnit;
      
      public var §_-6§:ButtonRandomName;
      
      public var § each§:TextField;
      
      public var §_-S3§:TextField;
      
      public var §_-LI§:TextField;
      
      public var §_-y0§:MovieClip;
      
      public var §_-zw§:§_-4q§;
      
      public var unit_name:TextField;
      
      public var bg:MovieClip;
      
      public var §_-Re§:TextField;
      
      public var §_-Fa§:ButtonSellUnit;
      
      public var §_-py§:§_-4q§;
      
      public var id:int;
      
      public var health:int;
      
      public var accuracy:int;
      
      public var active:Boolean;
      
      public var §_-Z4§:§_-5S§;
      
      private var §_-jk§:int;
      
      private var §_-Gd§:int;
      
      private var §_-md§:Number = 10;
      
      private var §_-Xt§:Number = 6.25;
      
      private var §extends§:int = 0;
      
      private var §_-Kb§:int = 0;
      
      private var §_-fE§:int = 0;
      
      public function §_-9k§(param1:§_-5S§) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         var _loc2_:* = 0;
         var _loc3_:* = 0;
         _loc5_;
         this.§_-Z4§ = param1;
         if(!this.§_-Z4§.active)
         {
            this.unit_name.mouseEnabled = false;
            _loc4_;
            _loc4_;
            this.unit_name.text = "";
            _loc5_;
            _loc5_;
            _loc5_;
            this.§_-6§.visible = false;
            _loc4_;
            _loc4_;
            _loc4_;
            this.§_-6§.mouseEnabled = false;
            _loc4_;
            _loc4_;
            this.§_-ak§.visible = true;
            _loc5_;
            _loc5_;
            _loc5_;
            this.§_-ak§.mouseEnabled = true;
            _loc5_;
            _loc4_;
            this.§_-Fa§.visible = false;
            _loc5_;
            _loc5_;
            this.§_-Fa§.mouseEnabled = false;
            this.§_-G2§.visible = false;
            this.§_-LI§.visible = false;
            _loc4_;
            _loc4_;
            this.§_-J-§.visible = false;
            this.§_-S3§.visible = false;
            _loc5_;
            this.§_-Re§.visible = false;
            this.§ each§.visible = false;
            this.§_-zw§.visible = false;
            _loc5_;
            this.§_-py§.visible = false;
            this.bg.visible = false;
            this.§_-jx§.visible = false;
            _loc4_;
            _loc4_;
            this.§_-y0§.visible = false;
         }
         else
         {
            this.unit_name.mouseEnabled = true;
            this.§_-XR§();
            this.§_-jx§.visible = true;
            _loc5_;
            this.bg.visible = true;
            _loc4_;
            _loc5_;
            this.§_-6§.visible = true;
            _loc4_;
            this.§_-6§.mouseEnabled = true;
            _loc4_;
            _loc4_;
            this.§_-ak§.visible = false;
            this.§_-ak§.mouseEnabled = false;
            _loc5_;
            _loc4_;
            _loc2_ = 0;
            _loc5_;
            _loc5_;
            _loc3_ = 0;
            while(true)
            {
               _loc5_;
               _loc5_;
               _loc4_;
               _loc4_;
               if(_loc3_ >= 6)
               {
                  break;
               }
               if(Global.unitDetails[_loc3_].active)
               {
                  _loc2_++;
                  _loc5_;
               }
               _loc3_++;
            }
            _loc4_;
            _loc5_;
            _loc5_;
            _loc5_;
            if(this.id <= 4 && _loc2_ <= 4)
            {
               _loc4_;
               _loc5_;
               _loc5_;
               this.§_-Fa§.visible = false;
            }
            else
            {
               _loc4_;
               _loc4_;
               _loc4_;
               _loc4_;
               this.§_-Fa§.visible = true;
               _loc5_;
               this.§_-Fa§.mouseEnabled = true;
            }
            this.§_-G2§.visible = true;
            this.§_-LI§.visible = true;
            this.§_-J-§.visible = true;
            _loc4_;
            this.§_-S3§.visible = true;
            _loc4_;
            this.§_-Re§.visible = true;
            _loc5_;
            _loc5_;
            this.§ each§.visible = true;
            _loc5_;
            this.§_-zw§.visible = true;
            _loc4_;
            _loc4_;
            this.§_-py§.visible = true;
            _loc5_;
            _loc5_;
            this.§_-y0§.visible = true;
            this.unit_name.text = this.§_-Z4§.name;
            this.health = this.§_-Z4§.health;
            _loc4_;
            this.accuracy = this.§_-Z4§.accuracy;
            this.§_-J-§.text = String(40 + this.health * this.§_-md§);
            _loc5_;
            _loc5_;
            this.§_-S3§.text = String(Math.round(this.accuracy * this.§_-Xt§));
            _loc5_;
            _loc4_;
            _loc4_;
            this.§_-zw§.init(253,16,this.health,this.§_-n§);
            _loc4_;
            this.§_-py§.init(253,16,this.accuracy,this.§_-dv§);
            _loc4_;
            _loc5_;
            this.§_-zw§.addEventListener(§_-07§.ON_FINISH_DRAG,this.§_-wg§,false,0,true);
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            this.§_-py§.addEventListener(§_-07§.ON_FINISH_DRAG,this.§_-hk§,false,0,true);
            _loc5_;
            _loc5_;
            this.§_-zw§.addEventListener(§_-07§.ON_VALUE_CHANGED,this.§_-az§,false,0,true);
            _loc4_;
            this.§_-py§.addEventListener(§_-07§.ON_VALUE_CHANGED,this.§_-mu§,false,0,true);
         }
      }
      
      public function §_-GA§(param1:int) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-Kb§ = param1;
         _loc3_;
         this.§_-fE§ = this.§_-Cq§(1,33);
         _loc3_;
         _loc3_;
         if(!this.§_-jx§.hasEventListener(Event.ENTER_FRAME))
         {
            _loc2_;
            _loc2_;
            this.§_-jx§.addEventListener(Event.ENTER_FRAME,this.§_-Lo§,false,0,true);
         }
      }
      
      public function §_-Lo§(param1:Event) : void
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         _loc4_;
         _loc5_;
         _loc5_;
         if(this.§_-fE§ > 0)
         {
            _loc5_;
            _loc4_;
            _loc4_;
            this.§_-fE§--;
            _loc5_;
            _loc4_;
            if(this.§_-fE§ == 0)
            {
               _loc5_;
               this.§_-XR§(this.§_-Kb§,true);
            }
         }
         else
         {
            _loc4_;
            _loc5_;
            this.§extends§++;
            _loc5_;
            _loc5_;
            if(this.§extends§ == 165)
            {
               this.§_-jx§.removeEventListener(Event.ENTER_FRAME,this.§_-Lo§);
               this.§_-XR§();
            }
         }
      }
      
      public function §_-XR§(param1:int = -1, param2:Boolean = false) : void
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
         _loc22_;
         _loc23_;
         _loc22_;
         _loc22_;
         if(!(param1 == -1) && !(param1 == Global.favourite_helmet.getInt()))
         {
            _loc23_;
            _loc23_;
            if(param2)
            {
               _loc22_;
               _loc3_ = true;
               _loc23_;
            }
            else
            {
               this.§_-GA§(param1);
               return;
            }
         }
         if(this.§_-jx§.numChildren > 0)
         {
            while(this.§_-jx§.numChildren > 0)
            {
               this.§_-jx§.removeChildAt(0);
               _loc22_;
               _loc22_;
            }
         }
         _loc22_;
         _loc22_;
         var _loc4_:int = Global.favourite_helmet.getInt();
         _loc22_;
         _loc22_;
         var _loc5_:int = Global.favourite_helmet.getInt();
         _loc22_;
         _loc22_;
         if(_loc3_)
         {
            _loc22_;
            _loc22_;
            _loc23_;
            _loc22_;
            _loc4_ = param1;
         }
         var _loc6_:* = 1;
         var _loc7_:* = 1;
         var _loc8_:* = 1;
         _loc22_;
         if(_loc3_)
         {
            _loc9_ = new §_-WJ§();
            _loc19_ = getDefinitionByName("HeadClip" + _loc5_) as Class;
            _loc20_ = new _loc19_() as MovieClip;
            _loc22_;
            _loc22_;
            _loc9_.newhead.addChild(_loc20_);
         }
         else
         {
            _loc9_ = new §_-w5§();
         }
         var _loc10_:Class = getDefinitionByName("HeadClip" + _loc4_) as Class;
         var _loc11_:MovieClip = new _loc10_() as MovieClip;
         _loc22_;
         _loc9_.head.addChild(_loc11_);
         _loc22_;
         if(_loc9_.body is §_-7w§)
         {
            _loc10_ = getDefinitionByName("BodyClip" + _loc6_) as Class;
         }
         else
         {
            _loc10_ = getDefinitionByName("BodyClipNew" + _loc6_) as Class;
         }
         var _loc12_:MovieClip = new _loc10_() as MovieClip;
         _loc22_;
         _loc22_;
         _loc9_.body.addChild(_loc12_);
         _loc10_ = getDefinitionByName("HandClip" + _loc7_) as Class;
         var _loc13_:MovieClip = new _loc10_() as MovieClip;
         _loc22_;
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
            _loc9_.lefthandfront.addChild(_loc21_);
         }
         _loc10_ = getDefinitionByName("FootClip" + _loc8_) as Class;
         var _loc15_:MovieClip = new _loc10_() as MovieClip;
         _loc22_;
         _loc9_.rightfoot.addChild(_loc15_);
         var _loc16_:MovieClip = new _loc10_() as MovieClip;
         _loc23_;
         _loc9_.leftfoot.addChild(_loc16_);
         var _loc17_:ColorTransform = new ColorTransform();
         _loc17_.color = SafeGlobal.colour_hex[Global.favourite_colour.getInt()];
         _loc11_.inside.transform.colorTransform = _loc17_;
         _loc22_;
         _loc12_.inside.transform.colorTransform = _loc17_;
         _loc14_.inside.transform.colorTransform = _loc17_;
         _loc16_.inside.transform.colorTransform = _loc17_;
         _loc13_.inside.transform.colorTransform = _loc17_;
         _loc22_;
         _loc22_;
         _loc15_.inside.transform.colorTransform = _loc17_;
         _loc23_;
         if(_loc3_)
         {
            _loc22_;
            _loc22_;
            _loc20_.inside.transform.colorTransform = _loc17_;
            _loc22_;
            _loc22_;
            _loc21_.inside.transform.colorTransform = _loc17_;
         }
         _loc9_.scaleX = 1.5;
         _loc23_;
         _loc23_;
         _loc9_.scaleY = 1.5;
         _loc23_;
         _loc23_;
         if(!_loc3_)
         {
            _loc22_;
            _loc22_;
            _loc18_ = this.§_-Cq§(1,_loc9_.totalFrames);
            _loc23_;
            _loc23_;
            _loc9_.gotoAndPlay(_loc18_);
         }
         this.§_-jx§.addChild(_loc9_);
         if(_loc3_)
         {
            _loc22_;
            _loc22_;
            this.§extends§ = 0;
            if(!this.§_-jx§.hasEventListener(Event.ENTER_FRAME))
            {
               this.§_-jx§.addEventListener(Event.ENTER_FRAME,this.§_-Lo§,false,0,true);
            }
         }
      }
      
      private function §_-Cq§(param1:int, param2:int) : int
      {
         var _loc3_:int = Math.floor(param1 + Math.random() * (param2 - param1 + 1));
         return _loc3_;
      }
      
      public function §_-n§() : int
      {
         return (parent as LP_TeamSetUp).§_-VP§.getInt();
      }
      
      public function §_-dv§() : int
      {
         return (parent as LP_TeamSetUp).§_-VP§.getInt();
      }
      
      public function §_-wg§(param1:§_-07§) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         param1.stopImmediatePropagation();
         _loc3_;
         _loc3_;
         this.§_-J-§.text = String(40 + param1.§_-9x§ * this.§_-md§);
         _loc3_;
         _loc3_;
         (parent as LP_TeamSetUp).updateHealth(this.§_-Z4§,param1.§_-9x§);
      }
      
      public function §_-hk§(param1:§_-07§) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         param1.stopImmediatePropagation();
         _loc3_;
         _loc3_;
         this.§_-S3§.text = String(Math.round(param1.§_-9x§ * this.§_-Xt§));
         _loc2_;
         _loc2_;
         (parent as LP_TeamSetUp).§_-1S§(this.§_-Z4§,param1.§_-9x§);
      }
      
      public function §_-az§(param1:§_-07§) : void
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         this.§_-J-§.text = String(40 + param1.§_-9x§ * this.§_-md§);
         _loc2_;
         _loc2_;
         (parent as LP_TeamSetUp).updateHealth(this.§_-Z4§,param1.§_-9x§);
      }
      
      public function §_-mu§(param1:§_-07§) : void
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc2_;
         _loc2_;
         this.§_-S3§.text = String(Math.round(param1.§_-9x§ * this.§_-Xt§));
         _loc3_;
         _loc3_;
         (parent as LP_TeamSetUp).§_-1S§(this.§_-Z4§,param1.§_-9x§);
      }
   }
}
