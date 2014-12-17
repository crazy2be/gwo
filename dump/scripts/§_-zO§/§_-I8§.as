package §_-zO§
{
   import flash.geom.Rectangle;
   import flash.display.BitmapData;
   import flash.geom.Point;
   
   public class §_-I8§ extends SimObject
   {
      
      public function §_-I8§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         _loc2_;
         this.shape = new Shape();
         _loc2_;
         _loc2_;
         super();
         _loc2_;
         animStep = 0;
      }
      
      public var shape:Shape;
      
      public var rad:Number;
      
      override public function animProgress(param1:int = 0) : *
      {
      }
      
      override public function updateImage() : *
      {
         var _loc3_:* = false;
         var _loc4_:* = true;
         var _loc1_:Rectangle = spriteSheet.getChunk(animStep);
         var _loc2_:BitmapData = new BitmapData(_loc1_.width,_loc1_.height,true,0);
         _loc3_;
         _loc3_;
         _loc2_.copyPixels(spriteSheet.sheetBD,_loc1_,new Point(0,0),null,null,true);
         _loc4_;
         §_-EH§(_loc2_);
      }
   }
}
