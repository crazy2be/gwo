package §_-4M§
{
   import flash.media.Sound;
   import flash.media.SoundChannel;
   import flash.media.SoundTransform;
   
   public class SoundData extends Object
   {
      
      public function SoundData(param1:Sound, param2:SoundTransform, param3:Number, param4:uint = 0)
      {
         var _loc5_:* = true;
         var _loc6_:* = false;
         _loc5_;
         _loc5_;
         super();
         _loc5_;
         this.sound = param1;
         _loc6_;
         _loc6_;
         this.sound_transform = param2;
         _loc5_;
         _loc5_;
         this.sound_volume = param3;
         _loc6_;
         _loc6_;
         this.fx_id = param4;
      }
      
      public var sound_id:int;
      
      public var sound_type:int;
      
      public var sound:Sound;
      
      public var sound_channel:SoundChannel;
      
      public var sound_transform:SoundTransform;
      
      public var sound_volume:Number;
      
      public var track_position:Number = 0;
      
      public var fx_id:uint = 0;
   }
}
