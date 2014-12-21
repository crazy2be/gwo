package §_-zj§
{
   import flash.display.MovieClip;
   
   public class §_-iF§ extends EditorObject
   {
      
      public function §_-iF§()
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc1_;
         super();
         _loc1_;
         §_-wR§ = true;
      }
      
      public var col:MovieClip;
      
      public var teamID:int = 0;
      
      public var order:int = 0;
      
      public var radius:int = 15;
      
      public function updateImage() : *
      {
         var _loc1_:* = true;
         var _loc2_:* = false;
         _loc2_;
         this.col.num.text = (this.order + 1).toString();
      }
   }
}
