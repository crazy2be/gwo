package com.protobuf
{
   import flash.utils.IDataInput;
   import flash.utils.ByteArray;
   
   public class CodedInputStream extends Object
   {
      
      public function CodedInputStream(param1:IDataInput)
      {
         sizeLimit = DEFAULT_SIZE_LIMIT;
         super();
         this.bufferSize = 0;
         this.input = param1;
      }
      
      public static function newInstance(param1:IDataInput) : CodedInputStream
      {
         return new CodedInputStream(param1);
      }
      
      public static function decodeZigZag32(param1:int) : int
      {
         return param1 >>> 1 ^ -(param1 & 1);
      }
      
      private static const DEFAULT_RECURSION_LIMIT:int = 64;
      
      private static const DEFAULT_SIZE_LIMIT:int = 64 << 20;
      
      public function readTag() : int
      {
         if(input.bytesAvailable != 0)
         {
            lastTag = readRawVarint32();
         }
         else
         {
            lastTag = 0;
         }
         return lastTag;
      }
      
      public function checkLastTagWas(param1:int) : void
      {
         if(lastTag != param1)
         {
            throw InvalidProtocolBufferException.invalidEndTag();
         }
         else
         {
            return;
         }
      }
      
      public function skipField(param1:int) : Boolean
      {
         switch(WireFormat.getTagWireType(param1))
         {
            case WireFormat.WIRETYPE_VARINT:
               while(input.readUnsignedByte() > 128)
               {
               }
               return true;
            case WireFormat.WIRETYPE_LENGTH_DELIMITED:
               skipRawBytes(readRawVarint32());
               return true;
            case WireFormat.WIRETYPE_START_GROUP:
               skipMessage();
               checkLastTagWas(WireFormat.makeTag(WireFormat.getTagFieldNumber(param1),WireFormat.WIRETYPE_END_GROUP));
               return true;
            case WireFormat.WIRETYPE_END_GROUP:
               return false;
            case WireFormat.WIRETYPE_FIXED32:
               readRawLittleEndian32();
               return true;
            default:
               throw InvalidProtocolBufferException.invalidWireType();
         }
      }
      
      public function skipMessage() : void
      {
         var _loc1_:* = 0;
         do
         {
            true;
            _loc1_ = readTag();
         }
         while(!((_loc1_ == 0) || (!skipField(_loc1_))));
         
      }
      
      public function readDouble() : Number
      {
         var _loc1_:int = readRawByte();
         var _loc2_:int = readRawByte();
         var _loc3_:int = readRawByte();
         var _loc4_:int = readRawByte();
         var _loc5_:int = readRawByte();
         var _loc6_:int = readRawByte();
         var _loc7_:int = readRawByte();
         var _loc8_:int = readRawByte();
         var _loc9_:ByteArray = new ByteArray();
         _loc9_.writeByte(_loc8_);
         _loc9_.writeByte(_loc7_);
         _loc9_.writeByte(_loc6_);
         _loc9_.writeByte(_loc5_);
         _loc9_.writeByte(_loc4_);
         _loc9_.writeByte(_loc3_);
         _loc9_.writeByte(_loc2_);
         _loc9_.writeByte(_loc1_);
         _loc9_.position = 0;
         return _loc9_.readDouble();
      }
      
      public function readFloat() : Number
      {
         var _loc1_:int = readRawByte();
         var _loc2_:int = readRawByte();
         var _loc3_:int = readRawByte();
         var _loc4_:int = readRawByte();
         var _loc5_:ByteArray = new ByteArray();
         _loc5_.writeByte(_loc4_);
         _loc5_.writeByte(_loc3_);
         _loc5_.writeByte(_loc2_);
         _loc5_.writeByte(_loc1_);
         _loc5_.position = 0;
         return _loc5_.readFloat();
      }
      
      public function readInt32() : int
      {
         return readRawVarint32();
      }
      
      public function readFixed32() : int
      {
         return readRawLittleEndian32();
      }
      
      public function readBool() : Boolean
      {
         return !(readRawVarint32() == 0);
      }
      
      public function readString() : String
      {
         var _loc1_:int = readRawVarint32();
         return new String(readRawBytes(_loc1_));
      }
      
      public function readBytes() : ByteArray
      {
         var _loc1_:int = readRawVarint32();
         return readRawBytes(_loc1_);
      }
      
      public function readUInt32() : int
      {
         return readRawVarint32();
      }
      
      public function readEnum() : int
      {
         return readRawVarint32();
      }
      
      public function readSFixed32() : int
      {
         return readRawLittleEndian32();
      }
      
      public function readSInt32() : int
      {
         return decodeZigZag32(readRawVarint32());
      }
      
      public function readPrimitiveField(param1:int) : Object
      {
         switch(param1)
         {
            case Descriptor.DOUBLE:
               return readDouble();
            case Descriptor.FLOAT:
               return readFloat();
            case Descriptor.INT32:
               return readInt32();
            case Descriptor.FIXED32:
               return readFixed32();
            case Descriptor.BOOL:
               return readBool();
            case Descriptor.STRING:
               return readString();
            case Descriptor.BYTEARRAY:
               return readBytes();
            case Descriptor.UINT:
               return readUInt32();
            case Descriptor.SFIXED32:
               return readSFixed32();
            case Descriptor.SINT32:
               return readSInt32();
            case Descriptor.ENUM:
               return readEnum();
            case Descriptor.LONG:
               return readInt64();
            default:
               trace("Unknown primative field type: " + param1);
               return null;
         }
      }
      
      public function readInt64() : Number
      {
         var _loc8_:* = 0;
         var _loc9_:* = 0;
         var _loc1_:Number = input.readUnsignedByte();
         var _loc2_:int = 0;
         var _loc3_:Array = [];
         while(_loc1_ >= 128)
         {
            _loc3_[_loc2_++] = _loc1_ & 127;
            _loc1_ = input.readUnsignedByte();
         }
         _loc3_[_loc10_] = _loc1_;
         var _loc4_:Boolean = false;
         if(_loc3_.length == 10)
         {
            _loc4_ = true;
            _loc3_.pop();
            _loc3_[0]--;
            _loc8_ = 0;
            while(_loc3_[_loc8_] < 0)
            {
               _loc3_[_loc8_] = 127;
               _loc3_[_loc8_ + 1]--;
            }
            _loc9_ = 0;
            while(_loc9_ < _loc3_.length)
            {
               _loc3_[_loc9_] = 127 ^ _loc3_[_loc9_];
               _loc9_++;
            }
         }
         var _loc5_:Number = 0;
         var _loc6_:Number = 1;
         var _loc7_:int = 0;
         while(_loc7_ < _loc3_.length)
         {
            _loc5_ = _loc5_ + _loc3_[_loc7_] * _loc6_;
            _loc6_ = _loc6_ * 128;
            _loc7_++;
         }
         return _loc4_?-_loc5_:_loc5_;
      }
      
      public function readRawVarint32() : int
      {
         var _loc3_:* = 0;
         var _loc1_:int = readRawByte();
         if(_loc1_ >= 0)
         {
            return _loc1_;
         }
         var _loc2_:int = _loc1_ & 127;
         if((_loc1_ = readRawByte()) >= 0)
         {
            _loc2_ = _loc2_ | _loc1_ << 7;
         }
         else
         {
            _loc2_ = _loc2_ | (_loc1_ & 127) << 7;
            if((_loc1_ = readRawByte()) >= 0)
            {
               _loc2_ = _loc2_ | _loc1_ << 14;
            }
            else
            {
               _loc2_ = _loc2_ | (_loc1_ & 127) << 14;
               if((_loc1_ = readRawByte()) >= 0)
               {
                  _loc2_ = _loc2_ | _loc1_ << 21;
               }
               else
               {
                  _loc2_ = _loc2_ | (_loc1_ & 127) << 21;
                  _loc2_ = _loc2_ | (_loc1_ = readRawByte()) << 28;
                  if(_loc1_ < 0)
                  {
                     _loc3_ = 0;
                     while(_loc3_ < 5)
                     {
                        if(readRawByte() >= 0)
                        {
                           return _loc2_;
                        }
                        _loc3_++;
                     }
                     throw InvalidProtocolBufferException.malformedVarint();
                  }
               }
            }
         }
         return _loc2_;
      }
      
      public function readRawLittleEndian32() : int
      {
         var _loc1_:int = readRawByte();
         var _loc2_:int = readRawByte();
         var _loc3_:int = readRawByte();
         var _loc4_:int = readRawByte();
         return _loc1_ & 255 | (_loc2_ & 255) << 8 | (_loc3_ & 255) << 16 | (_loc4_ & 255) << 24;
      }
      
      private var bufferSize:int;
      
      private var bufferSizeAfterLimit:int = 0;
      
      private var bufferPos:int = 0;
      
      private var input:IDataInput;
      
      private var lastTag:int = 0;
      
      private var sizeLimit:int;
      
      public function readRawByte() : int
      {
         return input.readByte();
      }
      
      public function readRawBytes(param1:int) : ByteArray
      {
         if(param1 < 0)
         {
            throw InvalidProtocolBufferException.negativeSize();
         }
         else
         {
            var _loc2_:ByteArray = new ByteArray();
            if(param1 != 0)
            {
               input.readBytes(_loc2_,0,param1);
            }
            return _loc2_;
         }
      }
      
      public function skipRawBytes(param1:int) : void
      {
         readRawBytes(param1);
      }
   }
}
