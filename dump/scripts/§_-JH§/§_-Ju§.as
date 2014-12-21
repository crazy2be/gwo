package §_-JH§
{
   import flash.display.MovieClip;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   import flash.geom.Rectangle;
   import flash.geom.Point;
   
   public class §_-Ju§ extends MovieClip
   {
      
      public function §_-Ju§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         this.§_-Dm§ = new Rectangle();
         _loc1_;
         this.tempBD = new BitmapData(1,1,1,1);
         _loc1_;
         this.§_-XI§ = new Point(0,0);
         _loc1_;
         super();
      }
      
      public var §_-oS§:BitmapData;
      
      public var §_-j7§:Bitmap;
      
      public var §_-Dm§:Rectangle;
      
      public var tempRect:Rectangle;
      
      public var tempBD:BitmapData;
      
      public var §_-XI§:Point;
      
      public var animate:Boolean = true;
      
      public var spriteSheet:§_-TN§;
      
      public var animStep:int = -1;
      
      public function init(param1:§_-TN§, param2:Boolean = false) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         _loc6_;
         if(!SafeGlobal.GAME.costumeCacheOnly)
         {
            this.spriteSheet = param1;
            _loc6_;
            _loc3_ = 0;
            _loc6_;
            _loc4_ = 0;
            _loc5_;
            _loc5_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            _loc6_;
            if(this.spriteSheet.frameWidth > _loc3_)
            {
               _loc5_;
               _loc5_;
               _loc3_ = this.spriteSheet.frameWidth;
            }
            _loc6_;
            _loc5_;
            if(this.spriteSheet.frameHeight > _loc4_)
            {
               _loc6_;
               _loc6_;
               _loc6_;
               _loc4_ = this.spriteSheet.frameHeight;
               _loc6_;
            }
            _loc6_;
            if(param2)
            {
               this.animStep = Math.floor(param1.frames * Math.random());
               _loc5_;
               _loc5_;
            }
            _loc6_;
            _loc6_;
            if((this.§_-j7§) && (contains(this.§_-j7§)))
            {
               _loc6_;
               _loc6_;
               removeChild(this.§_-j7§);
               _loc6_;
               _loc6_;
            }
            this.§_-oS§ = new BitmapData(_loc3_,_loc4_,true,0);
            this.§_-j7§ = new Bitmap(this.§_-oS§);
            this.§_-j7§.smoothing = true;
            addChild(this.§_-j7§);
            this.§_-j7§.x = this.spriteSheet.offsetX;
            _loc6_;
            _loc6_;
            this.§_-j7§.y = this.spriteSheet.offsetY;
         }
      }
      
      public function §_-GK§(param1:BitmapData) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.§_-Dm§.x = 0;
         this.§_-Dm§.y = 0;
         _loc3_;
         this.§_-Dm§.width = param1.width;
         this.§_-Dm§.height = param1.height;
         _loc2_;
         this.§_-oS§.fillRect(this.§_-Dm§,0);
         _loc2_;
         this.§_-oS§.copyPixels(param1,this.§_-Dm§,this.§_-XI§,null,null,true);
      }
      
      public function animProgress(param1:int = 0) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc4_;
         if(this.animate)
         {
            _loc4_;
            _loc4_;
            _loc4_;
            _loc5_;
            this.animStep++;
            _loc4_;
            if(this.animStep >= this.spriteSheet.frames)
            {
               _loc5_;
               _loc5_;
               this.animStep = this.animStep - this.spriteSheet.frames;
               _loc4_;
            }
         }
         else
         {
            this.animStep = 0;
         }
      }
      
      public function updateImage() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         if(this.spriteSheet)
         {
            this.tempRect = this.spriteSheet.getChunk(this.animStep);
            _loc2_;
            if(!(this.tempBD.width == this.tempRect.width && this.tempBD.height == this.tempRect.height))
            {
               this.tempBD.dispose();
               _loc2_;
               _loc2_;
               this.tempBD = new BitmapData(this.tempRect.width,this.tempRect.height,true,0);
            }
            this.tempBD.copyPixels(this.spriteSheet.sheetBD,this.tempRect,this.§_-XI§,null,null,false);
            this.§_-GK§(this.tempBD);
         }
      }
      
      public function §_-Bx§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.§_-j7§ = null;
         _loc1_;
         if(this.§_-oS§)
         {
            _loc2_;
            this.§_-oS§.dispose();
         }
         this.§_-oS§ = null;
         _loc1_;
         _loc1_;
         _loc2_;
         _loc2_;
         if(this.spriteSheet)
         {
            this.spriteSheet.destroyMe();
            this.spriteSheet = null;
         }
      }
   }
}
