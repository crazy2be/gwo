package bridge.utils
{
   import flash.utils.ByteArray;
   import flash.geom.*;
   import flash.utils.Endian;
   import flash.display.ActionScriptVersion;
   
   public class SWFReader extends Object
   {
      
      public function SWFReader(param1:ByteArray = null)
      {
         _dimensions = new Rectangle();
         super();
         parse(param1);
      }
      
      public var compressed:Boolean;
      
      public var version:uint;
      
      public var fileSize:uint;
      
      public function get dimensions() : Rectangle
      {
         return _dimensions;
      }
      
      private var _dimensions:Rectangle;
      
      public function get width() : uint
      {
         return uint(_dimensions.width);
      }
      
      public function get height() : uint
      {
         return uint(_dimensions.height);
      }
      
      public function get tagCallbackBytesIncludesHeader() : Boolean
      {
         return _tagCallbackBytesIncludesHeader;
      }
      
      public function set tagCallbackBytesIncludesHeader(param1:Boolean) : void
      {
         _tagCallbackBytesIncludesHeader = param1;
      }
      
      private var _tagCallbackBytesIncludesHeader:Boolean = false;
      
      public var frameRate:uint;
      
      public var totalFrames:uint;
      
      public var asVersion:uint;
      
      public var usesNetwork:Boolean;
      
      public var backgroundColor:uint;
      
      public var protectedFromImport:Boolean;
      
      public var debuggerEnabled:Boolean;
      
      public var metadata:XML;
      
      public var recursionLimit:uint;
      
      public var scriptTimeoutLimit:uint;
      
      public var hardwareAcceleration:uint;
      
      public var tagCallback:Function;
      
      public var parsed:Boolean;
      
      public var errorText:String = "";
      
      private var bytes:ByteArray;
      
      private var currentByte:int;
      
      private var bitPosition:int;
      
      private var currentTag:uint;
      
      private var bgColorFound:Boolean;
      
      private const GET_DATA_SIZE:int = 5;
      
      private const TWIPS_TO_PIXELS:Number = 0.05;
      
      private const TAG_HEADER_ID_BITS:int = 6;
      
      private const TAG_HEADER_MAX_SHORT:int = 63;
      
      private const SWF_C:uint = 67;
      
      private const SWF_F:uint = 70;
      
      private const SWF_W:uint = 87;
      
      private const SWF_S:uint = 83;
      
      private const TAG_ID_EOF:uint = 0;
      
      private const TAG_ID_BG_COLOR:uint = 9;
      
      private const TAG_ID_PROTECTED:uint = 24;
      
      private const TAG_ID_DEBUGGER1:uint = 58;
      
      private const TAG_ID_DEBUGGER2:uint = 64;
      
      private const TAG_ID_SCRIPT_LIMITS:uint = 65;
      
      private const TAG_ID_FILE_ATTS:uint = 69;
      
      private const TAG_ID_META:uint = 77;
      
      private const TAG_ID_SHAPE_1:uint = 2;
      
      private const TAG_ID_SHAPE_2:uint = 22;
      
      private const TAG_ID_SHAPE_3:uint = 32;
      
      private const TAG_ID_SHAPE_4:uint = 83;
      
      public function toString() : String
      {
         var _loc1_:String = null;
         var _loc2_:String = null;
         if(parsed)
         {
            _loc1_ = compressed?"compressed":"uncompressed";
            _loc2_ = totalFrames > 1?"frames":"frame";
            return "[SWF" + version + " AS" + asVersion + ".0: " + totalFrames + " " + _loc2_ + " @ " + frameRate + " fps " + _dimensions.width + "x" + _dimensions.height + " " + _loc1_ + "]";
         }
         return Object.prototype.toString.call(this);
      }
      
      public function parse(param1:ByteArray) : void
      {
         var swfFC:uint = 0;
         var swfW:uint = 0;
         var swfS:uint = 0;
         var temp:ByteArray = null;
         var swfBytes:ByteArray = param1;
         parseDefaults();
         if(swfBytes == null)
         {
            parseError("Error: Cannot parse a null value.");
            return;
         }
         parsed = true;
         try
         {
            bytes = swfBytes;
            bytes.endian = Endian.LITTLE_ENDIAN;
            bytes.position = 0;
            swfFC = bytes.readUnsignedByte();
            swfW = bytes.readUnsignedByte();
            swfS = bytes.readUnsignedByte();
            if((!(swfFC == SWF_F)) && (!(swfFC == SWF_C)) || (!(swfW == SWF_W)) || (!(swfS == SWF_S)))
            {
               parseError("Error: Invalid SWF header.");
               return;
            }
            compressed = Boolean(swfFC == SWF_C);
            version = bytes.readUnsignedByte();
            fileSize = bytes.readUnsignedInt();
            if(compressed)
            {
               temp = new ByteArray();
               bytes.readBytes(temp);
               bytes = temp;
               bytes.endian = Endian.LITTLE_ENDIAN;
               bytes.position = 0;
               temp = null;
               bytes.uncompress();
            }
            _dimensions = readRect();
            bytes.position++;
            frameRate = bytes.readUnsignedByte();
            totalFrames = bytes.readUnsignedShort();
         }
         catch(error:Error)
         {
            parseError(error.message);
            return;
         }
         try
         {
            while(readTag())
            {
            }
         }
         catch(error:Error)
         {
            parseError(error.message);
            return;
         }
         bytes = null;
      }
      
      private function parseDefaults() : void
      {
         compressed = false;
         version = 1;
         fileSize = 0;
         _dimensions = new Rectangle();
         frameRate = 12;
         totalFrames = 1;
         metadata = null;
         asVersion = ActionScriptVersion.ACTIONSCRIPT2;
         usesNetwork = false;
         backgroundColor = 16777215;
         protectedFromImport = false;
         debuggerEnabled = true;
         scriptTimeoutLimit = 256;
         recursionLimit = 15;
         hardwareAcceleration = 0;
         errorText = "";
         bgColorFound = false;
      }
      
      private function parseError(param1:String = "Unkown error.") : void
      {
         compressed = false;
         version = 0;
         fileSize = 0;
         _dimensions = new Rectangle();
         frameRate = 0;
         totalFrames = 0;
         metadata = null;
         asVersion = 0;
         usesNetwork = false;
         backgroundColor = 0;
         protectedFromImport = false;
         debuggerEnabled = false;
         scriptTimeoutLimit = 0;
         recursionLimit = 0;
         hardwareAcceleration = 0;
         parsed = false;
         bytes = null;
         errorText = param1;
      }
      
      private function paddedHex(param1:uint, param2:int = 6) : String
      {
         var _loc3_:String = param1.toString(16);
         while(_loc3_.length < param2)
         {
            _loc3_ = "0" + _loc3_;
         }
         return "0x" + _loc3_;
      }
      
      private function readString() : String
      {
         var i:uint = bytes.position;
         try
         {
            while(bytes[i] != 0)
            {
               i++;
            }
         }
         catch(error:Error)
         {
            return "";
         }
         return bytes.readUTFBytes(i - bytes.position);
      }
      
      private function readRect() : Rectangle
      {
         nextBitByte();
         var _loc1_:Rectangle = new Rectangle();
         var _loc2_:uint = readBits(GET_DATA_SIZE);
         _loc1_.left = readBits(_loc2_,true) * TWIPS_TO_PIXELS;
         _loc1_.right = readBits(_loc2_,true) * TWIPS_TO_PIXELS;
         _loc1_.top = readBits(_loc2_,true) * TWIPS_TO_PIXELS;
         _loc1_.bottom = readBits(_loc2_,true) * TWIPS_TO_PIXELS;
         return _loc1_;
      }
      
      private function readMatrix() : Matrix
      {
         var _loc1_:uint = 0;
         nextBitByte();
         var _loc2_:Matrix = new Matrix();
         if(readBits(1))
         {
            _loc1_ = readBits(GET_DATA_SIZE);
            _loc2_.a = readBits(_loc1_,true);
            _loc2_.d = readBits(_loc1_,true);
         }
         if(readBits(1))
         {
            _loc1_ = readBits(GET_DATA_SIZE);
            _loc2_.b = readBits(_loc1_,true);
            _loc2_.c = readBits(_loc1_,true);
         }
         _loc1_ = readBits(GET_DATA_SIZE);
         _loc2_.tx = readBits(_loc1_,true) * TWIPS_TO_PIXELS;
         _loc2_.ty = readBits(_loc1_,true) * TWIPS_TO_PIXELS;
         return _loc2_;
      }
      
      private function readBits(param1:uint, param2:Boolean = false) : Number
      {
         var _loc5_:uint = 0;
         var _loc6_:uint = 0;
         var _loc7_:uint = 0;
         var _loc3_:Number = 0;
         var _loc4_:uint = 8 - bitPosition;
         if(param1 <= _loc4_)
         {
            _loc5_ = (1 << param1) - 1;
            _loc3_ = currentByte >> _loc4_ - param1 & _loc5_;
            if(param1 == _loc4_)
            {
               nextBitByte();
            }
            else
            {
               bitPosition = bitPosition + param1;
            }
         }
         else
         {
            _loc5_ = (1 << _loc4_) - 1;
            _loc6_ = currentByte & _loc5_;
            _loc7_ = param1 - _loc4_;
            nextBitByte();
            _loc3_ = _loc6_ << _loc7_ | readBits(_loc7_);
         }
         if((param2) && (_loc3_ >> param1 - 1 == 1))
         {
            _loc4_ = 32 - param1;
            _loc5_ = (1 << _loc4_) - 1;
            return int(_loc5_ << param1 | _loc3_);
         }
         return uint(_loc3_);
      }
      
      private function nextBitByte() : void
      {
         currentByte = bytes.readByte();
         bitPosition = 0;
      }
      
      private function readTag() : Boolean
      {
         var _loc1_:uint = bytes.position;
         var _loc2_:int = bytes.readUnsignedShort();
         currentTag = _loc2_ >> TAG_HEADER_ID_BITS;
         var _loc3_:uint = _loc2_ & TAG_HEADER_MAX_SHORT;
         if(_loc3_ == TAG_HEADER_MAX_SHORT)
         {
            _loc3_ = bytes.readUnsignedInt();
         }
         var _loc4_:uint = bytes.position + _loc3_;
         var _loc5_:Boolean = readTagData(_loc3_,_loc1_,_loc4_);
         if(!_loc5_)
         {
            return false;
         }
         bytes.position = _loc4_;
         return true;
      }
      
      private function readTagData(param1:uint, param2:uint, param3:uint) : Boolean
      {
         var _loc4_:ByteArray = null;
         if(tagCallback != null)
         {
            _loc4_ = new ByteArray();
            if(_tagCallbackBytesIncludesHeader)
            {
               _loc4_.writeBytes(bytes,param2,param3 - param2);
            }
            else if(param1)
            {
               _loc4_.writeBytes(bytes,bytes.position,param1);
            }
            
            _loc4_.position = 0;
            tagCallback(currentTag,_loc4_);
         }
         switch(currentTag)
         {
            case TAG_ID_FILE_ATTS:
               nextBitByte();
               readBits(1);
               hardwareAcceleration = readBits(2);
               readBits(1);
               asVersion = (readBits(1)) && (version >= 9)?ActionScriptVersion.ACTIONSCRIPT3:ActionScriptVersion.ACTIONSCRIPT2;
               readBits(2);
               usesNetwork = Boolean(readBits(1) == 1);
               break;
            case TAG_ID_META:
               try
               {
                  metadata = new XML(readString());
               }
               catch(error:Error)
               {
               }
               break;
            case TAG_ID_BG_COLOR:
               if(!bgColorFound)
               {
                  bgColorFound = true;
                  backgroundColor = readRGB();
               }
               break;
            case TAG_ID_PROTECTED:
               protectedFromImport = Boolean(!(bytes.readUnsignedByte() == 0));
               break;
            case TAG_ID_DEBUGGER1:
               if(version == 5)
               {
                  debuggerEnabled = true;
               }
               break;
            case TAG_ID_DEBUGGER2:
               if(version > 5)
               {
                  debuggerEnabled = true;
               }
               break;
            case TAG_ID_SCRIPT_LIMITS:
               recursionLimit = bytes.readUnsignedShort();
               scriptTimeoutLimit = bytes.readUnsignedShort();
               break;
            case TAG_ID_EOF:
               return false;
         }
         return true;
      }
      
      private function readRGB() : uint
      {
         return bytes.readUnsignedByte() << 16 | bytes.readUnsignedByte() << 8 | bytes.readUnsignedByte();
      }
      
      private function readARGB() : uint
      {
         return bytes.readUnsignedByte() << 24 | bytes.readUnsignedByte() << 16 | bytes.readUnsignedByte() << 8 | bytes.readUnsignedByte();
      }
      
      private function readRGBA() : uint
      {
         var _loc1_:uint = bytes.readUnsignedByte();
         var _loc2_:uint = bytes.readUnsignedByte();
         var _loc3_:uint = bytes.readUnsignedByte();
         var _loc4_:uint = bytes.readUnsignedByte();
         return _loc4_ << 24 | _loc1_ << 16 | _loc2_ << 8 | _loc3_;
      }
   }
}
