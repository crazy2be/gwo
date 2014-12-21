package com.funkypear.ui
{
   import flash.display.Sprite;
   import §_-bk§.Looper;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   import flash.geom.Rectangle;
   import flash.geom.Point;
   import flash.events.Event;
   import flash.events.MouseEvent;
   
   public class StarMap extends Sprite
   {
      
      public function StarMap()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.§_-dx§ = new BitmapData(800,600,true,0);
         _loc1_;
         this.§_-FG§ = new Bitmap(this.§_-dx§);
         _loc1_;
         this.§_-Vd§ = new Rectangle(0,0,800,600);
         this.§_-tl§ = new Rectangle(0,0,800,600);
         this.§_-Yn§ = new Rectangle(0,0,800,600);
         _loc2_;
         this.§_-tM§ = new Rectangle(0,0,800,600);
         _loc1_;
         _loc1_;
         this.stars = new Array(new Star0(),new Star1(),new Star2(),new Star3(),new Star4());
         _loc2_;
         this.pos = new Point(-100,-100);
         this.§_-Vg§ = new Point(-100,-100);
         this.§_-XI§ = new Point(0,0);
         this.§_-wJ§ = new Point(0,0);
         this.§_-CQ§ = new Point(0,0);
         _loc1_;
         _loc1_;
         this.§_-Fq§ = new Point(0,0);
         _loc1_;
         super();
         _loc1_;
         _loc1_;
         if(stage)
         {
            _loc1_;
            this.addedToStage();
            _loc2_;
            _loc2_;
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
         }
      }
      
      public var §_-28§:Looper;
      
      public var §_-9H§:Looper;
      
      public var §_-dn§:Looper;
      
      public var ignoreNext:Boolean = false;
      
      public var §_-dx§:BitmapData;
      
      public var §_-FG§:Bitmap;
      
      public var §_-Vd§:Rectangle;
      
      public var §_-tl§:Rectangle;
      
      public var §_-Yn§:Rectangle;
      
      public var §_-tM§:Rectangle;
      
      public var §_-HJ§:int = 1200;
      
      public var stars:Array;
      
      public var pos:Point;
      
      public var §_-Vg§:Point;
      
      public var §_-XI§:Point;
      
      public var §_-wJ§:Point;
      
      public var §_-CQ§:Point;
      
      public var §_-Fq§:Point;
      
      public function addedToStage(param1:Event = null) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         _loc3_;
         if(param1)
         {
            _loc3_;
            _loc3_;
            removeEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
            _loc3_;
            _loc3_;
         }
         this.§_-LR§();
         _loc3_;
         this.moveTo(0,0);
         _loc2_;
         addChild(this.§_-FG§);
      }
      
      public function §_-jm§(param1:MouseEvent) : void
      {
      }
      
      public function ignoreNextJump() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.ignoreNext = true;
      }
      
      public function moveTo(param1:Number, param2:Number) : *
      {
         var _loc7_:* = false;
         var _loc8_:* = true;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:BitmapData = null;
         _loc7_;
         if(this.ignoreNext)
         {
            _loc8_;
            _loc8_;
            this.ignoreNext = false;
            this.§_-Vg§.x = this.pos.x = param1;
            this.§_-Vg§.y = this.pos.y = param2;
         }
         else
         {
            this.§_-Vg§.x = this.pos.x;
            this.§_-Vg§.y = this.pos.y;
            this.pos.x = param1;
            _loc8_;
            this.pos.y = param2;
            _loc7_;
            _loc7_;
            _loc8_;
            _loc3_ = this.§_-Vg§.x - this.pos.x;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc4_ = this.§_-Vg§.y - this.pos.y;
            this.§_-wJ§.x = this.§_-wJ§.x - _loc3_ * 0.6;
            _loc8_;
            _loc8_;
            this.§_-wJ§.y = this.§_-wJ§.y - _loc4_ * 0.6;
            this.§_-CQ§.x = this.§_-CQ§.x - _loc3_ * 0.4;
            _loc8_;
            this.§_-CQ§.y = this.§_-CQ§.y - _loc4_ * 0.4;
            this.§_-Fq§.x = this.§_-Fq§.x - _loc3_ * 0.2;
            this.§_-Fq§.y = this.§_-Fq§.y - _loc4_ * 0.2;
            this.§_-wJ§ = this.§_-Ha§(this.§_-wJ§);
            this.§_-CQ§ = this.§_-Ha§(this.§_-CQ§);
            _loc7_;
            this.§_-Fq§ = this.§_-Ha§(this.§_-Fq§);
            _loc8_;
            _loc7_;
            if(this.§_-Vg§.x == this.pos.x && this.§_-Vg§.y == this.pos.y)
            {
               _loc7_;
            }
            else
            {
               this.§_-28§.§_-7a§(this.§_-wJ§,this.§_-dx§,true);
               this.§_-9H§.§_-7a§(this.§_-CQ§,this.§_-dx§,false);
               _loc8_;
               this.§_-dn§.§_-7a§(this.§_-Fq§,this.§_-dx§,false);
            }
         }
      }
      
      public function §_-Ha§(param1:Point) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         while(param1.x > this.§_-HJ§)
         {
            param1.x = param1.x - this.§_-HJ§;
         }
         _loc2_;
         while(param1.x < 0)
         {
            param1.x = param1.x + this.§_-HJ§;
         }
         _loc2_;
         _loc2_;
         while(param1.y > this.§_-HJ§)
         {
            param1.y = param1.y - this.§_-HJ§;
         }
         while(param1.y < 0)
         {
            param1.y = param1.y + this.§_-HJ§;
         }
         return param1;
      }
      
      public function §_-TH§(param1:int, param2:int, param3:int, param4:int, param5:int) : *
      {
         var _loc15_:* = false;
         var _loc16_:* = true;
         var _loc7_:Looper = null;
         var _loc9_:* = 0;
         var _loc6_:BitmapData = new BitmapData(1200,1200,true,0);
         var _loc8_:Point = new Point();
         var _loc10_:Rectangle = this.stars[0].rect;
         var _loc11_:Rectangle = this.stars[1].rect;
         var _loc12_:Rectangle = this.stars[2].rect;
         var _loc13_:Rectangle = this.stars[3].rect;
         var _loc14_:Rectangle = this.stars[4].rect;
         _loc16_;
         _loc9_ = 0;
         while(true)
         {
            _loc15_;
            _loc15_;
            if(_loc9_ >= param1)
            {
               break;
            }
            _loc8_.x = Math.round(Math.random() * (_loc6_.width - _loc10_.width));
            _loc16_;
            _loc8_.y = Math.round(Math.random() * (_loc6_.height - _loc10_.height));
            _loc16_;
            _loc16_;
            _loc6_.copyPixels(this.stars[0],_loc10_,_loc8_,null,null,true);
            _loc16_;
            _loc9_++;
            _loc15_;
            _loc15_;
         }
         _loc15_;
         _loc9_ = 0;
         while(true)
         {
            _loc16_;
            _loc16_;
            if(_loc9_ >= param2)
            {
               break;
            }
            _loc8_.x = Math.round(Math.random() * (_loc6_.width - _loc11_.width));
            _loc8_.y = Math.round(Math.random() * (_loc6_.height - _loc11_.height));
            _loc6_.copyPixels(this.stars[1],_loc11_,_loc8_,null,null,true);
            _loc9_++;
         }
         _loc15_;
         _loc9_ = 0;
         while(true)
         {
            _loc15_;
            if(_loc9_ >= param3)
            {
               break;
            }
            _loc8_.x = Math.round(Math.random() * (_loc6_.width - _loc12_.width));
            _loc16_;
            _loc8_.y = Math.round(Math.random() * (_loc6_.height - _loc12_.height));
            _loc16_;
            _loc6_.copyPixels(this.stars[2],_loc12_,_loc8_,null,null,true);
            _loc15_;
            _loc15_;
            _loc9_++;
         }
         _loc15_;
         _loc15_;
         _loc9_ = 0;
         while(true)
         {
            _loc16_;
            _loc15_;
            if(_loc9_ >= param4)
            {
               break;
            }
            _loc8_.x = Math.round(Math.random() * (_loc6_.width - _loc13_.width));
            _loc8_.y = Math.round(Math.random() * (_loc6_.height - _loc13_.height));
            _loc6_.copyPixels(this.stars[3],_loc13_,_loc8_,null,null,true);
            _loc9_++;
            _loc16_;
         }
         _loc9_ = 0;
         _loc15_;
         _loc15_;
         while(_loc9_ < param5)
         {
            _loc8_.x = Math.round(Math.random() * (_loc6_.width - _loc14_.width));
            _loc16_;
            _loc8_.y = Math.round(Math.random() * (_loc6_.height - _loc14_.height));
            _loc6_.copyPixels(this.stars[4],_loc14_,_loc8_,null,null,true);
            _loc9_++;
            _loc16_;
            _loc16_;
         }
         _loc7_ = new Looper(_loc6_,800,600);
         return _loc7_;
      }
      
      public function §_-LR§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Point = new Point();
         _loc2_;
         _loc2_;
         this.§_-28§ = this.§_-TH§(0,200,120,10,5);
         _loc2_;
         _loc2_;
         this.§_-9H§ = this.§_-TH§(50,400,60,0,0);
         _loc3_;
         this.§_-dn§ = this.§_-TH§(200,200,60,0,0);
      }
   }
}
