package com.funkypear.ui
{
   import flash.display.Sprite;
   import §_-WX§.Looper;
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
         this.§_-qz§ = new BitmapData(800,600,true,0);
         this.§_-Xg§ = new Bitmap(this.§_-qz§);
         this.§_-I9§ = new Rectangle(0,0,800,600);
         _loc2_;
         _loc2_;
         this.§_-ew§ = new Rectangle(0,0,800,600);
         _loc2_;
         _loc2_;
         this.§_-dt§ = new Rectangle(0,0,800,600);
         this.§_-xu§ = new Rectangle(0,0,800,600);
         this.stars = new Array(new Star0(),new Star1(),new Star2(),new Star3(),new Star4());
         _loc1_;
         this.pos = new Point(-100,-100);
         this.§_-kX§ = new Point(-100,-100);
         _loc1_;
         this.§_-Fa§ = new Point(0,0);
         this.§_-nW§ = new Point(0,0);
         _loc2_;
         _loc2_;
         this.§_-zS§ = new Point(0,0);
         _loc1_;
         _loc1_;
         this.§true§ = new Point(0,0);
         _loc2_;
         _loc2_;
         super();
         if(stage)
         {
            this.addedToStage();
         }
         else
         {
            addEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
         }
      }
      
      public var §_-Hj§:Looper;
      
      public var §var §:Looper;
      
      public var §_-4M§:Looper;
      
      public var ignoreNext:Boolean = false;
      
      public var §_-qz§:BitmapData;
      
      public var §_-Xg§:Bitmap;
      
      public var §_-I9§:Rectangle;
      
      public var §_-ew§:Rectangle;
      
      public var §_-dt§:Rectangle;
      
      public var §_-xu§:Rectangle;
      
      public var §_-Cn§:int = 1200;
      
      public var stars:Array;
      
      public var pos:Point;
      
      public var §_-kX§:Point;
      
      public var §_-Fa§:Point;
      
      public var §_-nW§:Point;
      
      public var §_-zS§:Point;
      
      public var §true§:Point;
      
      public function addedToStage(param1:Event = null) : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         _loc2_;
         if(param1)
         {
            _loc2_;
            _loc2_;
            removeEventListener(Event.ADDED_TO_STAGE,this.addedToStage);
            _loc2_;
            _loc2_;
         }
         this.§_-x4§();
         _loc3_;
         this.moveTo(0,0);
         _loc3_;
         addChild(this.§_-Xg§);
      }
      
      public function §_-h6§(param1:MouseEvent) : void
      {
      }
      
      public function ignoreNextJump() : *
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.ignoreNext = true;
      }
      
      public function moveTo(param1:Number, param2:Number) : *
      {
         var _loc7_:* = true;
         var _loc8_:* = false;
         var _loc3_:* = NaN;
         var _loc4_:* = NaN;
         var _loc5_:BitmapData = null;
         _loc8_;
         _loc8_;
         if(this.ignoreNext)
         {
            this.ignoreNext = false;
            this.§_-kX§.x = this.pos.x = param1;
            this.§_-kX§.y = this.pos.y = param2;
         }
         else
         {
            this.§_-kX§.x = this.pos.x;
            this.§_-kX§.y = this.pos.y;
            _loc8_;
            this.pos.x = param1;
            _loc8_;
            _loc8_;
            this.pos.y = param2;
            _loc8_;
            _loc7_;
            _loc8_;
            _loc8_;
            _loc3_ = this.§_-kX§.x - this.pos.x;
            _loc8_;
            _loc8_;
            _loc8_;
            _loc4_ = this.§_-kX§.y - this.pos.y;
            _loc8_;
            _loc8_;
            this.§_-nW§.x = this.§_-nW§.x - _loc3_ * 0.6;
            _loc8_;
            this.§_-nW§.y = this.§_-nW§.y - _loc4_ * 0.6;
            _loc7_;
            this.§_-zS§.x = this.§_-zS§.x - _loc3_ * 0.4;
            _loc8_;
            this.§_-zS§.y = this.§_-zS§.y - _loc4_ * 0.4;
            _loc7_;
            this.§true§.x = this.§true§.x - _loc3_ * 0.2;
            _loc8_;
            this.§true§.y = this.§true§.y - _loc4_ * 0.2;
            _loc7_;
            this.§_-nW§ = this.§_-z7§(this.§_-nW§);
            this.§_-zS§ = this.§_-z7§(this.§_-zS§);
            _loc7_;
            this.§true§ = this.§_-z7§(this.§true§);
            _loc7_;
            _loc7_;
            if(this.§_-kX§.x == this.pos.x && this.§_-kX§.y == this.pos.y)
            {
               _loc7_;
            }
            else
            {
               this.§_-Hj§.§_-Dl§(this.§_-nW§,this.§_-qz§,true);
               this.§var §.§_-Dl§(this.§_-zS§,this.§_-qz§,false);
               _loc7_;
               _loc7_;
               this.§_-4M§.§_-Dl§(this.§true§,this.§_-qz§,false);
            }
         }
      }
      
      public function §_-z7§(param1:Point) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         while(param1.x > this.§_-Cn§)
         {
            param1.x = param1.x - this.§_-Cn§;
            _loc2_;
            _loc2_;
         }
         _loc3_;
         _loc3_;
         while(param1.x < 0)
         {
            param1.x = param1.x + this.§_-Cn§;
         }
         while(param1.y > this.§_-Cn§)
         {
            param1.y = param1.y - this.§_-Cn§;
         }
         _loc3_;
         while(param1.y < 0)
         {
            param1.y = param1.y + this.§_-Cn§;
            _loc3_;
         }
         return param1;
      }
      
      public function §_-va§(param1:int, param2:int, param3:int, param4:int, param5:int) : *
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
         _loc16_;
         _loc9_ = 0;
         while(true)
         {
            _loc15_;
            if(_loc9_ >= param1)
            {
               break;
            }
            _loc8_.x = Math.round(Math.random() * (_loc6_.width - _loc10_.width));
            _loc8_.y = Math.round(Math.random() * (_loc6_.height - _loc10_.height));
            _loc6_.copyPixels(this.stars[0],_loc10_,_loc8_,null,null,true);
            _loc9_++;
         }
         _loc16_;
         _loc16_;
         _loc9_ = 0;
         _loc16_;
         _loc16_;
         while(true)
         {
            _loc16_;
            _loc16_;
            if(_loc9_ >= param2)
            {
               break;
            }
            _loc8_.x = Math.round(Math.random() * (_loc6_.width - _loc11_.width));
            _loc16_;
            _loc16_;
            _loc8_.y = Math.round(Math.random() * (_loc6_.height - _loc11_.height));
            _loc16_;
            _loc6_.copyPixels(this.stars[1],_loc11_,_loc8_,null,null,true);
            _loc9_++;
            _loc16_;
         }
         _loc9_ = 0;
         while(true)
         {
            _loc16_;
            _loc16_;
            _loc16_;
            if(_loc9_ >= param3)
            {
               break;
            }
            _loc8_.x = Math.round(Math.random() * (_loc6_.width - _loc12_.width));
            _loc15_;
            _loc8_.y = Math.round(Math.random() * (_loc6_.height - _loc12_.height));
            _loc6_.copyPixels(this.stars[2],_loc12_,_loc8_,null,null,true);
            _loc15_;
            _loc9_++;
            _loc16_;
         }
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
            _loc15_;
            _loc8_.y = Math.round(Math.random() * (_loc6_.height - _loc13_.height));
            _loc15_;
            _loc6_.copyPixels(this.stars[3],_loc13_,_loc8_,null,null,true);
            _loc15_;
            _loc9_++;
            _loc16_;
         }
         _loc15_;
         _loc15_;
         _loc9_ = 0;
         _loc16_;
         while(_loc9_ < param5)
         {
            _loc8_.x = Math.round(Math.random() * (_loc6_.width - _loc14_.width));
            _loc8_.y = Math.round(Math.random() * (_loc6_.height - _loc14_.height));
            _loc6_.copyPixels(this.stars[4],_loc14_,_loc8_,null,null,true);
            _loc16_;
            _loc16_;
            _loc9_++;
         }
         _loc7_ = new Looper(_loc6_,800,600);
         return _loc7_;
      }
      
      public function §_-x4§() : *
      {
         var _loc2_:* = false;
         var _loc3_:* = true;
         var _loc1_:Point = new Point();
         _loc3_;
         _loc3_;
         this.§_-Hj§ = this.§_-va§(0,200,120,10,5);
         _loc2_;
         this.§var § = this.§_-va§(50,400,60,0,0);
         _loc2_;
         this.§_-4M§ = this.§_-va§(200,200,60,0,0);
      }
   }
}
