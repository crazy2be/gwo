package §_-8Y§
{
   import flash.media.SoundChannel;
   
   public class SoundWrapper extends Object
   {
      
      public function SoundWrapper(param1:int, param2:SoundChannel, param3:uint, param4:int = 1, param5:Boolean = false)
      {
         var _loc6_:* = false;
         var _loc7_:* = true;
         super();
         this.uid = param1;
         this.sound_channel = param2;
         this.fx_id = param3;
         this.loop_count = param4;
         this.loop_forever = param5;
      }
      
      public var uid:int;
      
      public var sound_channel:SoundChannel;
      
      public var fx_id:uint;
      
      public var loop_count:int;
      
      public var loop_forever:Boolean;
   }
}
