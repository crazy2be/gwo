package §_-zO§
{
   import flash.display.MovieClip;
   import flash.display.BitmapData;
   import flash.display.Bitmap;
   import flash.geom.Rectangle;
   import flash.geom.Point;
   
   public class §_-72§ extends MovieClip
   {
      
      public function §_-72§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc2_;
         _loc2_;
         this.§_-sj§ = new Rectangle();
         _loc1_;
         this.tempBD = new BitmapData(1,1,1,1);
         _loc2_;
         this.§_-Fa§ = new Point(0,0);
         _loc1_;
         _loc1_;
         super();
      }
      
      public var §_-Ud§:BitmapData;
      
      public var §_-Iy§:Bitmap;
      
      public var §_-sj§:Rectangle;
      
      public var tempRect:Rectangle;
      
      public var tempBD:BitmapData;
      
      public var §_-Fa§:Point;
      
      public var animate:Boolean = true;
      
      public var spriteSheet:§_-lS§;
      
      public var animStep:int = -1;
      
      public function init(param1:§_-lS§, param2:Boolean = false) : *
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         var _loc3_:* = 0;
         var _loc4_:* = 0;
         _loc6_;
         if(!SafeGlobal.GAME.costumeCacheOnly)
         {
            _loc6_;
            _loc6_;
            this.spriteSheet = param1;
            _loc3_ = 0;
            _loc5_;
            _loc5_;
            _loc4_ = 0;
            _loc5_;
            _loc5_;
            _loc5_;
            if(this.spriteSheet.frameWidth > _loc3_)
            {
               _loc6_;
               _loc6_;
               _loc6_;
               _loc5_;
               _loc5_;
               _loc3_ = this.spriteSheet.frameWidth;
            }
            _loc6_;
            if(this.spriteSheet.frameHeight > _loc4_)
            {
               _loc5_;
               _loc5_;
               _loc6_;
               _loc4_ = this.spriteSheet.frameHeight;
            }
            _loc6_;
            _loc6_;
            if(param2)
            {
               this.animStep = Math.floor(param1.frames * Math.random());
            }
            _loc6_;
            if((this.§_-Iy§) && (contains(this.§_-Iy§)))
            {
               _loc6_;
               removeChild(this.§_-Iy§);
               _loc5_;
            }
            this.§_-Ud§ = new BitmapData(_loc3_,_loc4_,true,0);
            _loc6_;
            this.§_-Iy§ = new Bitmap(this.§_-Ud§);
            this.§_-Iy§.smoothing = true;
            addChild(this.§_-Iy§);
            this.§_-Iy§.x = this.spriteSheet.offsetX;
            this.§_-Iy§.y = this.spriteSheet.offsetY;
         }
      }
      
      public function §_-EH§(param1:BitmapData) : *
      {
         var _loc2_:* = true;
         var _loc3_:* = false;
         this.§_-sj§.x = 0;
         this.§_-sj§.y = 0;
         this.§_-sj§.width = param1.width;
         _loc2_;
         this.§_-sj§.height = param1.height;
         this.§_-Ud§.fillRect(this.§_-sj§,0);
         this.§_-Ud§.copyPixels(param1,this.§_-sj§,this.§_-Fa§,null,null,true);
      }
      
      public function animProgress(param1:int = 0) : *
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc5_;
         if(this.animate)
         {
            _loc4_;
            _loc4_;
            _loc5_;
            _loc5_;
            _loc4_;
            _loc4_;
            this.animStep++;
            _loc4_;
            _loc4_;
            if(this.animStep >= this.spriteSheet.frames)
            {
               _loc4_;
               _loc4_;
               this.animStep = this.animStep - this.spriteSheet.frames;
               _loc4_;
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
            _loc2_;
            this.tempRect = this.spriteSheet.getChunk(this.animStep);
            _loc1_;
            if(!(this.tempBD.width == this.tempRect.width && this.tempBD.height == this.tempRect.height))
            {
               this.tempBD.dispose();
               _loc2_;
               this.tempBD = new BitmapData(this.tempRect.width,this.tempRect.height,true,0);
            }
            this.tempBD.copyPixels(this.spriteSheet.sheetBD,this.tempRect,this.§_-Fa§,null,null,false);
            _loc1_;
            this.§_-EH§(this.tempBD);
         }
      }
      
      public function §_-Mn§() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         this.§_-Iy§ = null;
         if(this.§_-Ud§)
         {
            this.§_-Ud§.dispose();
            _loc1_;
         }
         this.§_-Ud§ = null;
         _loc2_;
         _loc2_;
         _loc2_;
         _loc2_;
         if(this.spriteSheet)
         {
            this.spriteSheet.destroyMe();
            _loc1_;
            this.spriteSheet = null;
         }
      }
   }
}
