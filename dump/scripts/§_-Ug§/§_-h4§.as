package §_-Ug§
{
   import flash.utils.ByteArray;
   import flash.display.BitmapData;
   import flash.geom.*;
   
   public class §_-h4§ extends Object
   {
      
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
      }
      
      public function §_-h4§()
      {
         var _loc1_:* = false;
         var _loc2_:* = true;
         _loc1_;
         _loc1_;
         super();
      }
      
      public static function §_-hz§(param1:BitmapData) : ByteArray
      {
         var _loc8_:* = true;
         var _loc9_:* = false;
         var _loc6_:uint = 0;
         var _loc7_:* = 0;
         var _loc2_:ByteArray = new ByteArray();
         _loc8_;
         _loc8_;
         _loc2_.writeUnsignedInt(2.303741511E9);
         _loc8_;
         _loc2_.writeUnsignedInt(218765834);
         var _loc3_:ByteArray = new ByteArray();
         _loc8_;
         _loc8_;
         _loc3_.writeInt(param1.width);
         _loc9_;
         _loc3_.writeInt(param1.height);
         _loc8_;
         _loc8_;
         _loc3_.writeUnsignedInt(134610944);
         _loc8_;
         _loc3_.writeByte(0);
         _loc9_;
         §_-R1§(_loc2_,1229472850,_loc3_);
         var _loc4_:ByteArray = new ByteArray();
         var _loc5_:* = 0;
         while(_loc5_ < param1.height)
         {
            _loc4_.writeByte(0);
            _loc9_;
            _loc9_;
            if(!param1.transparent)
            {
               _loc8_;
               _loc8_;
               _loc7_ = 0;
               while(true)
               {
                  _loc9_;
                  _loc9_;
                  if(_loc7_ >= param1.width)
                  {
                     break;
                  }
                  _loc8_;
                  _loc6_ = param1.getPixel(_loc7_,_loc5_);
                  _loc8_;
                  _loc8_;
                  _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | 255));
                  _loc9_;
                  _loc7_++;
               }
            }
            else
            {
               _loc8_;
               _loc7_ = 0;
               while(true)
               {
                  _loc9_;
                  if(_loc7_ >= param1.width)
                  {
                     break;
                  }
                  _loc6_ = param1.getPixel32(_loc7_,_loc5_);
                  _loc4_.writeUnsignedInt(uint((_loc6_ & 16777215) << 8 | _loc6_ >>> 24));
                  _loc9_;
                  _loc9_;
                  _loc7_++;
                  _loc9_;
                  _loc9_;
               }
            }
            _loc5_++;
            _loc9_;
            _loc9_;
         }
         _loc4_.compress();
         §_-R1§(_loc2_,1229209940,_loc4_);
         §_-R1§(_loc2_,1229278788,null);
         return _loc2_;
      }
      
      private static var §_-NX§:Array;
      
      private static var §_-Go§:Boolean = false;
      
      private static function §_-R1§(param1:ByteArray, param2:uint, param3:ByteArray) : void
      {
         var _loc11_:* = true;
         var _loc12_:* = false;
         var _loc8_:uint = 0;
         var _loc9_:uint = 0;
         var _loc10_:uint = 0;
         _loc11_;
         if(!§_-Go§)
         {
            _loc11_;
            _loc11_;
            §_-Go§ = true;
            _loc11_;
            _loc11_;
            §_-NX§ = [];
            _loc11_;
            _loc11_;
            _loc9_ = 0;
            while(_loc9_ < 256)
            {
               _loc11_;
               _loc11_;
               _loc8_ = _loc9_;
               _loc12_;
               _loc11_;
               _loc11_;
               _loc10_ = 0;
               while(true)
               {
                  _loc11_;
                  if(_loc10_ >= 8)
                  {
                     break;
                  }
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  _loc12_;
                  if(_loc8_ & 1)
                  {
                     _loc8_ = uint(uint(3.988292384E9) ^ uint(_loc8_ >>> 1));
                     _loc11_;
                  }
                  else
                  {
                     _loc8_ = uint(_loc8_ >>> 1);
                  }
                  _loc12_;
                  _loc12_;
                  _loc10_++;
               }
               §_-NX§[_loc9_] = _loc8_;
               _loc11_;
               _loc9_++;
            }
         }
         var _loc4_:uint = 0;
         _loc11_;
         _loc11_;
         if(param3 != null)
         {
            _loc11_;
            _loc12_;
            _loc12_;
            _loc4_ = param3.length;
            _loc11_;
         }
         param1.writeUnsignedInt(_loc4_);
         var _loc5_:uint = param1.position;
         _loc11_;
         param1.writeUnsignedInt(param2);
         _loc11_;
         _loc11_;
         if(param3 != null)
         {
            _loc11_;
            param1.writeBytes(param3);
         }
         var _loc6_:uint = param1.position;
         _loc11_;
         _loc11_;
         param1.position = _loc5_;
         _loc12_;
         _loc12_;
         _loc8_ = 4.294967295E9;
         var _loc7_:* = 0;
         while(_loc7_ < _loc6_ - _loc5_)
         {
            _loc12_;
            _loc12_;
            _loc8_ = uint(§_-NX§[(_loc8_ ^ param1.readUnsignedByte()) & uint(255)] ^ uint(_loc8_ >>> 8));
            _loc12_;
            _loc7_++;
         }
         _loc11_;
         _loc8_ = uint(_loc8_ ^ uint(4.294967295E9));
         _loc11_;
         _loc11_;
         param1.position = _loc6_;
         _loc11_;
         _loc11_;
         param1.writeUnsignedInt(_loc8_);
      }
   }
}
