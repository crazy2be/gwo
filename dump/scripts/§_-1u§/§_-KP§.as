package §_-1u§
{
   import §_-JH§.SimObject;
   
   public class §_-KP§ extends SimObject
   {
      
      public function §_-KP§(param1:Number, param2:Number)
      {
         var _loc4_:* = false;
         var _loc5_:* = true;
         _loc4_;
         super();
         _loc5_;
         _loc5_;
         iX = x = param1;
         _loc5_;
         iY = y = param2;
      }
      
      public var type:int = -1;
      
      override public function animProgress(param1:int = 0) : *
      {
         var _loc4_:* = true;
         var _loc5_:* = false;
         _loc4_;
         _loc5_;
         animStep++;
         _loc4_;
         _loc4_;
         if(animStep >= spriteSheet.frames)
         {
            _loc4_;
            dead = true;
         }
      }
      
      public function destroyMe() : *
      {
      }
   }
}
